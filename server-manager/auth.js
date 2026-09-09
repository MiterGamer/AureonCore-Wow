const crypto = require('crypto');
const initSqlJs = require('sql.js');
const path = require('path');
const fs = require('fs');

let db = null;

function hashPassword(password) {
  const salt = crypto.randomBytes(32);
  const hash = crypto.scryptSync(password, salt, 64, { N: 16384, r: 8, p: 1 });
  return '$scrypt$N=16384,r=8,p=1$' + salt.toString('base64') + '$' + hash.toString('base64');
}

function verifyPassword(password, stored) {
  try {
    const parts = stored.split('$');
    const params = parts[2];
    const salt = Buffer.from(parts[3], 'base64');
    const storedHash = Buffer.from(parts[4], 'base64');
    const N = parseInt(params.split(',')[0].split('=')[1]);
    const r = parseInt(params.split(',')[1].split('=')[1]);
    const p = parseInt(params.split(',')[2].split('=')[1]);
    const hash = crypto.scryptSync(password, salt, storedHash.length, { N, r, p });
    return crypto.timingSafeEqual(hash, storedHash);
  } catch (e) { return false; }
}

async function initAuth(dbPath) {
  const SQL = await initSqlJs();
  let needSave = false;
  if (fs.existsSync(dbPath)) { db = new SQL.Database(fs.readFileSync(dbPath)); }
  else { db = new SQL.Database(); needSave = true; }
  db.run('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE NOT NULL, password_hash TEXT NOT NULL, created_at TEXT DEFAULT (datetime(\'now\')))');
  if (needSave) saveDB(dbPath);
  return db;
}

function saveDB(dbPath) {
  const dir = path.dirname(dbPath);
  if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
  fs.writeFileSync(dbPath, Buffer.from(db.export()));
}

async function hasUser() { const r = db.exec('SELECT COUNT(*) as count FROM users'); return r.length > 0 && r[0].values[0][0] > 0; }

async function createUser(username, password, dbPath) {
  const hash = hashPassword(password);
  try { db.run('INSERT INTO users (username, password_hash) VALUES (?, ?)', [username, hash]); saveDB(dbPath); return { success: true }; }
  catch (e) { return { success: false, message: e.message.includes('UNIQUE') ? 'Username exists' : e.message }; }
}

async function verifyUser(username, password) {
  const r = db.exec('SELECT password_hash FROM users WHERE username = ?', [username]);
  if (!r.length || !r[0].values.length) return { success: false, message: 'User not found' };
  return verifyPassword(password, r[0].values[0][0]) ? { success: true } : { success: false, message: 'Wrong password' };
}

async function changePassword(username, password, dbPath) {
  const hash = hashPassword(password);
  db.run('UPDATE users SET password_hash=? WHERE username=?', [hash, username]);
  saveDB(dbPath);
}

function requireAuth(req, res, next) {
  if (req.session && req.session.userId) return next();
  if (req.originalUrl.startsWith('/api/')) return res.status(401).json({ success: false, requiresAuth: true });
  next();
}

module.exports = { initAuth, hasUser, createUser, verifyUser, changePassword, requireAuth, saveDB };
