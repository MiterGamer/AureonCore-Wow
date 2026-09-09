const fs = require('fs');
const path = require('path');
const { Client } = require('ssh2');
const pty = require('node-pty');

const TYPES = new Set(['worldserver', 'bnetserver']);

function defaultProfile(platform = process.platform) {
  return {
    id: 'local-default',
    name: 'Local Server',
    mode: 'local',
    acServerPath: '',
    worldserverExe: platform === 'win32' ? 'worldserver.exe' : 'worldserver',
    bnetserverExe: platform === 'win32' ? 'bnetserver.exe' : 'bnetserver',
    worldserverConf: 'worldserver.conf',
    bnetserverConf: 'bnetserver.conf',
    logsDir: 'Data/logs',
    backupDir: 'backups',
    host: '',
    port: 22,
    username: '',
    privateKeyPath: ''
  };
}

function normalizeProfiles(profiles, platform = process.platform) {
  const fallback = defaultProfile(platform);
  const list = Array.isArray(profiles) ? profiles : [];
  const normalized = list.map((profile, index) => ({ ...fallback, ...profile, id: String(profile.id || `server-${index + 1}`), name: String(profile.name || `Server ${index + 1}`), mode: profile.mode === 'ssh' ? 'ssh' : 'local' }));
  return normalized.length ? normalized : [fallback];
}

class ServerRuntime {
  constructor({ broadcast, profiles, activeServerId }) {
    this.broadcast = broadcast;
    this.profiles = normalizeProfiles(profiles);
    this.activeServerId = activeServerId && this.profiles.some(profile => profile.id === activeServerId) ? activeServerId : this.profiles[0].id;
    this.processes = new Map();
  }

  configure(profiles, activeServerId) {
    this.profiles = normalizeProfiles(profiles);
    this.activeServerId = this.profiles.some(profile => profile.id === activeServerId) ? activeServerId : this.profiles[0].id;
  }

  profile() { return this.profiles.find(profile => profile.id === this.activeServerId) || this.profiles[0]; }
  resolve(profile, value) { return !value ? '' : path.isAbsolute(value) ? value : path.join(profile.acServerPath, value); }
  emit(type, level, message) { this.broadcast({ type: 'log', source: type, level, message }); }
  running(type) { const process = this.processes.get(`${this.activeServerId}:${type}`); return !!process && !process.exited; }

  status() {
    return {
      worldserver: { running: this.running('worldserver'), pid: this.processes.get(`${this.activeServerId}:worldserver`)?.pid || null },
      bnetserver: { running: this.running('bnetserver'), pid: this.processes.get(`${this.activeServerId}:bnetserver`)?.pid || null },
      profile: this.profile()
    };
  }

  allStatuses() {
    return this.profiles.map(profile => ({
      id: profile.id,
      name: profile.name,
      mode: profile.mode,
      host: profile.host,
      active: profile.id === this.activeServerId,
      worldserver: { running: !!this.processes.get(`${profile.id}:worldserver`) && !this.processes.get(`${profile.id}:worldserver`).exited },
      bnetserver: { running: !!this.processes.get(`${profile.id}:bnetserver`) && !this.processes.get(`${profile.id}:bnetserver`).exited }
    }));
  }

  async start(type) {
    if (!TYPES.has(type)) return { success: false, message: 'Invalid server type' };
    const profile = this.profile();
    const key = `${profile.id}:${type}`;
    if (this.processes.get(key) && !this.processes.get(key).exited) return { success: false, message: 'Already running' };
    if (profile.mode === 'ssh') return this.startRemote(type, profile, key);
    const executable = this.resolve(profile, type === 'worldserver' ? profile.worldserverExe : profile.bnetserverExe);
    if (!profile.acServerPath || !fs.existsSync(executable)) return { success: false, message: 'Executable not found: ' + executable };
    try {
      const child = pty.spawn(executable, [], { name: 'xterm-color', cols: 160, rows: 40, cwd: profile.acServerPath, env: process.env });
      const state = { process: child, pid: child.pid, exited: false, remote: false };
      this.processes.set(key, state);
      child.onData(data => this.emit(type, 'info', data));
      child.onExit(({ exitCode }) => {
        state.exited = true;
        this.processes.delete(key);
        this.emit(type, 'warn', `=== Ended (${exitCode}) ===`);
      });
      this.emit(type, 'info', `=== ${type} started (PID: ${child.pid}) ===`);
      return { success: true, message: type + ' started' };
    } catch (error) { return { success: false, message: error.message }; }
  }

  startRemote(type, profile, key) {
    if (!profile.host || !profile.username || !profile.acServerPath) return Promise.resolve({ success: false, message: 'SSH host, username and server path are required' });
    return new Promise(resolve => {
      const connection = new Client();
      const executable = type === 'worldserver' ? profile.worldserverExe : profile.bnetserverExe;
      const command = `cd ${this.quote(profile.acServerPath)} && ${this.quote('./' + executable)}`;
      connection.on('ready', () => connection.shell({ term: 'xterm-256color', cols: 160, rows: 40 }, (error, stream) => {
        if (error) { connection.end(); return resolve({ success: false, message: error.message }); }
        const state = { process: stream, connection, pid: null, exited: false, remote: true };
        this.processes.set(key, state);
        stream.on('data', data => this.emit(type, 'info', data.toString()));
        stream.stderr.on('data', data => this.emit(type, 'error', data.toString()));
        stream.on('close', () => {
          state.exited = true;
          this.processes.delete(key);
          connection.end();
          this.emit(type, 'warn', `=== ${type} ended ===`);
        });
        this.emit(type, 'info', `=== ${type} connected on ${profile.host} ===`);
        resolve({ success: true, message: type + ' started' });
      })).on('error', error => resolve({ success: false, message: error.message }));
      const options = { host: profile.host, port: Number(profile.port) || 22, username: profile.username, readyTimeout: 10000 };
      try { options.privateKey = fs.readFileSync(profile.privateKeyPath); } catch (error) { connection.end(); return resolve({ success: false, message: 'SSH private key could not be read' }); }
      connection.connect(options);
    });
  }

  stop(type) {
    const key = `${this.activeServerId}:${type}`;
    const state = this.processes.get(key);
    if (!state || state.exited) return { success: false, message: 'Not running' };
    try {
      if (state.remote) {
        if (state.process?.write) state.process.write('\u0003');
        if (state.process?.end) state.process.end();
      } else if (state.process && typeof state.process.kill === 'function') {
        state.process.kill();
      }
    } finally {
      state.exited = true;
      this.processes.delete(key);
    }
    return { success: true };
  }

  command(type, command) {
    const state = this.processes.get(`${this.activeServerId}:${type}`);
    if (!state || state.exited || !command?.trim()) return { success: false, message: 'Server is not running' };
    if (state.process && typeof state.process.write === 'function') {
      state.process.write(command + '\r');
      this.broadcast({ type: 'command', source: type, command });
      return { success: true };
    }
    return { success: false, message: 'Console is not available' };
  }

  quote(value) { return `'${String(value).replace(/'/g, `'\\''`)}'`; }
}

module.exports = { ServerRuntime, defaultProfile, normalizeProfiles };
