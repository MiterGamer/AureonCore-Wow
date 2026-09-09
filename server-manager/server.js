const express = require('express');
const session = require('express-session');
const path = require('path');
const { spawn } = require('child_process');
let pty = null;
try { pty = require('node-pty'); } catch (err) {}
const fs = require('fs');
const os = require('os');
const crypto = require('crypto');
const WebSocket = require('ws');
const { initAuth, hasUser, createUser, verifyUser, changePassword, requireAuth } = require('./auth');
const db = require('./db');
const dbApi = require('./db-api');
const { ServerRuntime, defaultProfile, normalizeProfiles } = require('./server-runtime');

const AC_SERVER_PATH = path.join(__dirname, '..');
const DB_PATH = path.join(__dirname, 'data', 'auth.db');
const SESSION_SECRET_PATH = path.join(__dirname, 'data', 'session-secret');

const app = express();
function loadSessionSecret() {
  try { if (fs.existsSync(SESSION_SECRET_PATH)) return fs.readFileSync(SESSION_SECRET_PATH, 'utf8'); } catch (e) {}
  const secret = crypto.randomBytes(32).toString('hex');
  fs.mkdirSync(path.dirname(SESSION_SECRET_PATH), { recursive: true });
  fs.writeFileSync(SESSION_SECRET_PATH, secret, { mode: 0o600 });
  return secret;
}
app.use(session({ secret: process.env.AC_MANAGER_SESSION_SECRET || loadSessionSecret(), resave: false, saveUninitialized: false, cookie: { maxAge: 24*60*60*1000, httpOnly: true, sameSite: 'strict' } }));
app.use(express.json({ limit: '10mb' }));

/* ==================== AUTH ==================== */
app.get('/api/auth/status', async (req, res) => {
  const needsSetup = !(await hasUser());
  if (req.session?.userId) return res.json({ success: true, authenticated: true, needsSetup: false });
  res.json({ success: true, authenticated: false, needsSetup });
});

app.post('/api/auth/setup', async (req, res) => {
  if (await hasUser()) return res.json({ success: false, message: 'Account exists' });
  const { username, password } = req.body;
  if (!username?.trim()) return res.json({ success: false, message: 'Username required' });
  if (!password || password.length < 8) return res.json({ success: false, message: 'Password min 8 chars' });
  const r = await createUser(username.trim(), password, DB_PATH);
  if (r.success) { req.session.userId = 1; req.session.username = username.trim(); res.json({ success: true }); }
  else res.json({ success: false, message: r.message });
});

app.post('/api/auth/login', async (req, res) => {
  const { username, password } = req.body;
  if (!username?.trim()) return res.json({ success: false, message: 'Username required' });
  if (!password) return res.json({ success: false, message: 'Password required' });
  const r = await verifyUser(username.trim(), password);
  if (r.success) { req.session.userId = 1; req.session.username = username.trim(); res.json({ success: true }); }
  else res.json({ success: false, message: r.message });
});

app.post('/api/auth/logout', (req, res) => { req.session.destroy(() => res.json({ success: true })); });
app.post('/api/auth/change-password', requireAuth, async (req, res) => {
  const { oldPassword, newPassword } = req.body;
  if (!newPassword || newPassword.length < 8) return res.json({ success: false, message: 'Min 8 chars' });
  const r = await verifyUser(req.session.username, oldPassword);
  if (!r.success) return res.json(r);
  await changePassword(req.session.username, newPassword, DB_PATH);
  res.json({ success: true });
});

/* ==================== STATIC + AUTH ROUTES ==================== */
const PUBLIC = path.join(__dirname, 'public');
app.use('/css', express.static(path.join(PUBLIC, 'css')));
app.use('/js', express.static(path.join(PUBLIC, 'js')));

app.get('/', (req, res) => { if (req.session?.userId) return res.sendFile(path.join(PUBLIC, 'app.html')); res.sendFile(path.join(PUBLIC, 'login.html')); });
app.get('/index.html', (req, res) => { if (req.session?.userId) return res.sendFile(path.join(PUBLIC, 'app.html')); res.sendFile(path.join(PUBLIC, 'login.html')); });
app.get('/app.html', (req, res) => { if (req.session?.userId) return res.sendFile(path.join(PUBLIC, 'app.html')); res.redirect('/'); });

/* ==================== PROTECTED API ==================== */
app.use('/api/status', requireAuth);
app.use('/api/server', requireAuth);
app.use('/api/config', requireAuth);
app.use('/api/logs', requireAuth);
app.use('/api/backup', requireAuth);
app.use('/api/backups', requireAuth);
app.use('/api/system', requireAuth);
app.use('/api/settings', requireAuth);
app.use('/api/servers', requireAuth);
app.use('/api', dbApi);

/* ==================== SETTINGS ==================== */
const SETTINGS_FILE = path.join(__dirname, 'settings.json');
const DEFAULT_PROFILE = { ...defaultProfile(), acServerPath: AC_SERVER_PATH };
const DEFAULT_SETTINGS = { port: 3000, profiles: [DEFAULT_PROFILE], activeServerId: 'local-default', ...DEFAULT_PROFILE, minimizeToTray: true, openBrowserOnStart: false };
let settings = { ...DEFAULT_SETTINGS };
function applyActiveProfile() { const active = settings.profiles.find(profile => profile.id === settings.activeServerId) || settings.profiles[0]; if (active) ['acServerPath', 'worldserverExe', 'bnetserverExe', 'worldserverConf', 'bnetserverConf', 'logsDir', 'backupDir'].forEach(key => { settings[key] = active[key]; }); }
function loadSettings() { try { if (fs.existsSync(SETTINGS_FILE)) settings = { ...DEFAULT_SETTINGS, ...JSON.parse(fs.readFileSync(SETTINGS_FILE, 'utf-8') ) }; } catch (e) {} if (Number(settings.port) < 1024 || Number(settings.port) > 65535) settings.port = 3000; const legacy = { ...DEFAULT_PROFILE, ...settings, id: 'local-default', name: 'Local Server', mode: 'local' }; settings.profiles = normalizeProfiles(Array.isArray(settings.profiles) && settings.profiles.length ? settings.profiles : [legacy]).map(profile => profile.mode === 'local' && !profile.acServerPath ? { ...profile, acServerPath: AC_SERVER_PATH } : profile); settings.activeServerId = settings.profiles.some(profile => profile.id === settings.activeServerId) ? settings.activeServerId : settings.profiles[0].id; applyActiveProfile(); }
function saveSettingsFile(s) { const profiles = Array.isArray(s.profiles) ? normalizeProfiles(s.profiles) : settings.profiles; settings = { ...DEFAULT_SETTINGS, ...settings, ...s, profiles, activeServerId: s.activeServerId || settings.activeServerId }; applyActiveProfile(); try { fs.writeFileSync(SETTINGS_FILE, JSON.stringify(settings, null, 2)); return { success: true }; } catch (e) { return { success: false, message: e.message }; } }
function resolvePath(p) { return !p ? '' : path.isAbsolute(p) ? p : path.join(settings.acServerPath, p); }
loadSettings();

app.get('/api/settings', (req, res) => res.json({ success: true, settings }));
app.put('/api/settings', (req, res) => { const r = saveSettingsFile(req.body); if (r.success) runtime.configure(settings.profiles, settings.activeServerId); res.json(r.success ? { success: true, message: 'Saved', settings } : { success: false, message: r.message }); });
app.get('/api/servers', (req, res) => res.json({ success: true, servers: settings.profiles, activeServerId: settings.activeServerId }));
app.get('/api/servers/status', (req, res) => res.json({ success: true, servers: runtime.allStatuses(), activeServerId: settings.activeServerId }));
app.put('/api/servers', (req, res) => {
  const profile = req.body || {};
  if (!profile.name?.trim()) return res.json({ success: false, message: 'Server name required' });
  const id = String(profile.id || `server-${Date.now()}`);
  const next = { ...defaultProfile(), ...profile, id, name: profile.name.trim(), mode: profile.mode === 'ssh' ? 'ssh' : 'local' };
  settings.profiles = [...settings.profiles.filter(item => item.id !== id), next];
  settings.activeServerId = id;
  saveSettingsFile(settings);
  runtime.configure(settings.profiles, settings.activeServerId);
  res.json({ success: true, servers: settings.profiles, activeServerId: settings.activeServerId });
});
app.delete('/api/servers/:id', (req, res) => {
  if (settings.profiles.length <= 1) return res.json({ success: false, message: 'At least one server profile is required' });
  settings.profiles = settings.profiles.filter(profile => profile.id !== req.params.id);
  if (settings.activeServerId === req.params.id) settings.activeServerId = settings.profiles[0].id;
  saveSettingsFile(settings);
  runtime.configure(settings.profiles, settings.activeServerId);
  res.json({ success: true, servers: settings.profiles, activeServerId: settings.activeServerId });
});
app.post('/api/servers/select', (req, res) => {
  if (!settings.profiles.some(profile => profile.id === req.body.id)) return res.json({ success: false, message: 'Server profile not found' });
  settings.activeServerId = req.body.id;
  saveSettingsFile(settings);
  runtime.configure(settings.profiles, settings.activeServerId);
  res.json({ success: true, server: settings.profiles.find(profile => profile.id === settings.activeServerId) });
});
app.post('/api/settings/test-path', (req, res) => {
  const { filePath, basePath } = req.body;
  if (!filePath) return res.json({ success: false, message: 'No path' });
  const resolved = path.isAbsolute(filePath) ? filePath : path.join(basePath || settings.acServerPath || '', filePath);
  res.json({ success: true, exists: fs.existsSync(resolved), path: resolved });
});

/* ==================== SERVER CONTROL ==================== */
let worldserverProcess = null, bnetserverProcess = null, serverStartTime = null, commandHistory = [];
const clients = new Set();
const wsTokens = new Map();
const runtime = new ServerRuntime({ broadcast, profiles: settings.profiles, activeServerId: settings.activeServerId });

function broadcast(data) { const msg = JSON.stringify(data); clients.forEach(c => { if (c.readyState === 1) c.send(msg); }); }

function isProcessRunning(proc) { return !!proc && !proc.__exited; }

function getServerStatus() {
  const cpus = os.cpus(), tm = os.totalmem(), fm = os.freemem();
  return { ...runtime.status(), uptime: serverStartTime ? Date.now() - serverStartTime : 0, configured: !!settings.acServerPath, system: { platform: os.platform(), hostname: os.hostname(), cpuModel: cpus[0]?.model || 'Unknown', cpuCores: cpus.length, totalMemory: tm, usedMemory: tm - fm, freeMemory: fm, memoryUsagePercent: Math.round(((tm-fm)/tm)*100), loadAverage: os.loadavg(), uptime: os.uptime() } };
}

setInterval(() => broadcast({ type: 'status', data: getServerStatus() }), 5000);
app.get('/api/status', (req, res) => res.json(getServerStatus()));
app.get('/api/ws-token', requireAuth, (req, res) => {
  const token = crypto.randomBytes(32).toString('hex');
  wsTokens.set(token, Date.now() + 60000);
  res.json({ success: true, token });
});

function startServerProcess(type) {
  if (type !== 'worldserver' && type !== 'bnetserver') return { success: false, message: 'Invalid server type' };
  const exe = type === 'worldserver' ? resolvePath(settings.worldserverExe) : resolvePath(settings.bnetserverExe);
  const existing = type === 'worldserver' ? worldserverProcess : bnetserverProcess;
  if (isProcessRunning(existing)) return { success: false, message: 'Already running' };
  if (!settings.acServerPath) return { success: false, message: 'AC path not set' };
  if (!fs.existsSync(exe)) return { success: false, message: 'Not found: ' + path.basename(exe) };
    if (!pty) return { success: false, message: 'Native PTY is unavailable. Install/build node-pty for this platform.' };
  try {
    const proc = pty.spawn(exe, [], { name: 'xterm-color', cols: 160, rows: 40, cwd: settings.acServerPath, env: process.env });
      proc.onData(data => broadcast({ type: 'log', source: type, level: 'info', message: data }));
      proc.onExit(({ exitCode }) => { proc.__exited = true; broadcast({ type: 'log', source: type, level: 'warn', message: '=== Ended (' + exitCode + ') ===' }); if (type === 'worldserver') worldserverProcess = null; else bnetserverProcess = null; });
    if (type === 'worldserver') { worldserverProcess = proc; serverStartTime = Date.now(); } else bnetserverProcess = proc;
    broadcast({ type: 'log', source: type, level: 'info', message: '=== ' + type + ' started (PID: ' + proc.pid + ') ===' });
    return { success: true, message: type + ' started' };
  } catch (err) { return { success: false, message: err.message }; }
}

app.post('/api/server/start', async (req, res) => res.json(await runtime.start(req.body.type)));
app.post('/api/server/stop', (req, res) => res.json(runtime.stop(req.body.type)));
app.post('/api/server/restart', async (req, res) => { const stopped = runtime.stop(req.body.type); if (stopped.success) await new Promise(resolve => setTimeout(resolve, 1000)); res.json(await runtime.start(req.body.type)); });
app.post('/api/server/command', (req, res) => {
  res.json(runtime.command(req.body.type, req.body.command));
});

/* ==================== CONFIG ==================== */
app.get('/api/config/:file', (req, res) => {
  const f = req.params.file; const fp = f === 'worldserver.conf' ? resolvePath(settings.worldserverConf) : f === 'bnetserver.conf' ? resolvePath(settings.bnetserverConf) : null;
  if (!fp || !fs.existsSync(fp)) return res.json({ success: false, message: 'Not found' });
  try { res.json({ success: true, content: fs.readFileSync(fp, 'utf-8'), filename: f }); } catch (e) { res.json({ success: false, message: e.message }); }
});
app.put('/api/config/:file', (req, res) => {
  const f = req.params.file; const fp = f === 'worldserver.conf' ? resolvePath(settings.worldserverConf) : f === 'bnetserver.conf' ? resolvePath(settings.bnetserverConf) : null;
  if (!fp) return res.json({ success: false, message: 'Unknown file' });
  if (!req.body || req.body.content === undefined) return res.json({ success: false, message: 'No content' });
  try { fs.writeFileSync(fp, req.body.content, 'utf-8'); res.json({ success: true, message: 'Saved' }); } catch (e) { res.json({ success: false, message: e.message }); }
});

/* ==================== LOGS ==================== */
app.get('/api/logs', (req, res) => {
  try { const ld = resolvePath(settings.logsDir); if (!ld || !fs.existsSync(ld)) return res.json({ success: true, logs: [] });
    const files = fs.readdirSync(ld).filter(f => f.endsWith('.log')).map(f => { const s = fs.statSync(path.join(ld, f)); return { name: f, size: s.size, modified: s.mtime }; }).sort((a, b) => b.modified - a.modified);
    res.json({ success: true, logs: files });
  } catch (e) { res.json({ success: false, message: e.message }); }
});
app.get('/api/logs/:filename', (req, res) => {
  const ld = resolvePath(settings.logsDir); const fp = ld ? path.resolve(ld, req.params.filename) : null;
  if (!ld || !fp || (fp !== path.resolve(ld) && !fp.startsWith(path.resolve(ld) + path.sep))) return res.status(400).json({ success: false, message: 'Invalid path' });
  if (!fp || !fs.existsSync(fp)) return res.json({ success: false, message: 'Not found' });
  try { const c = fs.readFileSync(fp, 'utf-8').split('\n').slice(-(parseInt(req.query.tail) || 500)); res.json({ success: true, content: c.join('\n') }); } catch (e) { res.json({ success: false, message: e.message }); }
});

/* ==================== BACKUPS ==================== */
app.post('/api/backup', (req, res) => {
  try { const bd = resolvePath(settings.backupDir); if (!bd) return res.json({ success: false, message: 'No path' });
    if (!fs.existsSync(bd)) fs.mkdirSync(bd, { recursive: true }); const ts = new Date().toISOString().replace(/[:.]/g, '-'); const dir = path.join(bd, 'backup_' + ts); fs.mkdirSync(dir, { recursive: true });
    const wc = resolvePath(settings.worldserverConf), bc = resolvePath(settings.bnetserverConf);
    if (wc && fs.existsSync(wc)) fs.copyFileSync(wc, path.join(dir, 'worldserver.conf'));
    if (bc && fs.existsSync(bc)) fs.copyFileSync(bc, path.join(dir, 'bnetserver.conf'));
    res.json({ success: true, message: 'Backup: backup_' + ts });
  } catch (e) { res.json({ success: false, message: e.message }); }
});
app.get('/api/backups', (req, res) => {
  try { const bd = resolvePath(settings.backupDir); if (!bd || !fs.existsSync(bd)) return res.json({ success: true, backups: [] });
    const dirs = fs.readdirSync(bd).filter(d => d.startsWith('backup_')).map(d => { const dp = path.join(bd, d), files = fs.readdirSync(dp), s = fs.statSync(dp); return { name: d, files: files.length, created: s.mtime, size: files.reduce((a, f) => a + fs.statSync(path.join(dp, f)).size, 0) }; }).sort((a, b) => b.created - a.created);
    res.json({ success: true, backups: dirs });
  } catch (e) { res.json({ success: false, message: e.message }); }
});
app.post('/api/system/cleanup', (req, res) => {
  try { const ld = resolvePath(settings.logsDir); let c = 0;
    if (ld && fs.existsSync(ld)) { fs.readdirSync(ld).filter(f => f.endsWith('.log')).forEach(l => { const fp = path.join(ld, l); if ((Date.now() - fs.statSync(fp).mtime.getTime()) / 86400000 > 30) { fs.unlinkSync(fp); c++; } }); }
    res.json({ success: true, message: c + ' old logs deleted' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

/* ==================== WEBSOCKET ==================== */
const PORT = Number(settings.port) >= 1024 && Number(settings.port) <= 65535 ? Number(settings.port) : 3000;
let server = null;
let wss = null;

/* ==================== INIT ==================== */
(async () => {
  try { fs.mkdirSync(path.join(__dirname, 'data'), { recursive: true }); } catch (e) {}
  await initAuth(DB_PATH);
  console.log('Auth initialized');
  const dbPath = path.join(AC_SERVER_PATH, 'worldserver.conf');
  const dbResults = await db.connectAll(dbPath);
  console.log('Database connections:', dbResults);
  const host = process.env.AC_MANAGER_HOST || '0.0.0.0';
  server = app.listen(PORT, host, () => console.log('Server running on http://' + host + ':' + PORT));
  wss = new WebSocket.Server({ server });
  wss.on('connection', (ws, req) => {
    const token = new URL(req.url, 'http://127.0.0.1').searchParams.get('token');
    const expires = wsTokens.get(token);
    if (!expires || expires < Date.now()) return ws.close(1008, 'Authentication required');
    wsTokens.delete(token);
    clients.add(ws); ws.on('close', () => clients.delete(ws)); ws.on('error', () => clients.delete(ws));
  });
})().catch(err => { console.error('Initialization failed:', err); process.exitCode = 1; });
