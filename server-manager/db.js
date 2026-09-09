const mariadb = require('mariadb');
const fs = require('fs');

let pools = {};

function parseConf(confPath) {
  if (!fs.existsSync(confPath)) return {};
  const content = fs.readFileSync(confPath, 'utf-8');
  const result = {};
  const patterns = { auth: /LoginDatabaseInfo\s*=\s*"([^"]+)"/, world: /WorldDatabaseInfo\s*=\s*"([^"]+)"/, characters: /CharacterDatabaseInfo\s*=\s*"([^"]+)"/ };
  for (const [key, regex] of Object.entries(patterns)) {
    const match = content.match(regex);
    if (match) {
      const p = match[1].split(';').map(s => s.trim());
      result[key] = { host: p[0] || '127.0.0.1', port: parseInt(p[1]) || 3306, user: p[2] || 'root', password: p[3] || '', database: p[4] || '' };
    }
  }
  return result;
}

async function connectDb(name, config) {
  if (pools[name]) { try { await pools[name].end(); } catch (e) {} }
  pools[name] = mariadb.createPool({ host: config.host, port: config.port, user: config.user, password: config.password, database: config.database, connectionLimit: 5, bigIntAsNumber: true });
  try { const c = await pools[name].getConnection(); console.log('DB ' + name + ' connected'); c.release(); return true; }
  catch (e) { console.error('DB ' + name + ' error: ' + e.message); return false; }
}

async function connectAll(confPath) {
  const configs = parseConf(confPath);
  const results = {};
  for (const [name, config] of Object.entries(configs)) { if (config) results[name] = await connectDb(name, config); }
  return results;
}

async function query(dbName, sql, params = []) {
  if (!pools[dbName]) throw new Error('DB ' + dbName + ' not connected');
  return await pools[dbName].query(sql, params);
}

async function isConnected(dbName) {
  if (!pools[dbName]) return false;
  try { const c = await pools[dbName].getConnection(); c.release(); return true; } catch (e) { return false; }
}

module.exports = { parseConf, connectAll, query, isConnected };
