const express = require('express');
const { query, isConnected } = require('./db');
const { requireAuth } = require('./auth');

const router = express.Router();
router.use(requireAuth);

const SECURITY_LEVELS = { 0:'Player', 1:'Moderator', 2:'Gamemaster', 3:'Administrator' };

router.get('/db/status', async (req, res) => {
  try { res.json({ success: true, auth: await isConnected('auth'), world: await isConnected('world'), characters: await isConnected('characters') }); }
  catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/accounts', async (req, res) => {
  try {
    const page = parseInt(req.query.page) || 1, limit = parseInt(req.query.limit) || 50, search = req.query.search || '', offset = (page - 1) * limit;
    let where = ''; const params = [];
    if (search) { where = 'WHERE a.username LIKE ?'; params.push('%' + search + '%'); }
    const total = (await query('auth', 'SELECT COUNT(*) as total FROM account a ' + where, params))[0]?.total || 0;
    const accounts = await query('auth', `SELECT a.id,a.username,a.email,a.joindate,a.last_login,a.online,a.expansion,a.mutetime,a.locked,b.active as banned FROM account a LEFT JOIN account_banned b ON a.id=b.id AND b.active=1 ${where} ORDER BY a.id DESC LIMIT ? OFFSET ?`, [...params, limit, offset]);
    res.json({ success: true, accounts, total, page, limit });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/accounts/:id', async (req, res) => {
  try {
    const [account] = await query('auth', `SELECT a.id,a.username,a.email,a.joindate,a.last_login,a.online,a.expansion,a.mutetime,a.mutereason,a.locked,b.active as banned,b.banreason FROM account a LEFT JOIN account_banned b ON a.id=b.id AND b.active=1 WHERE a.id=?`, [req.params.id]);
    if (!account) return res.json({ success: false, message: 'Not found' });
    const characters = await query('characters', `SELECT c.guid,c.name,c.race,c.class,c.level,c.zone,c.map,c.gender,c.deleteDate as deleted FROM characters c WHERE c.account=? ORDER BY c.guid`, [req.params.id]);
    res.json({ success: true, account, characters });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/accounts/edit', async (req, res) => {
  try {
    const { id, email, expansion, locked, mutetime, mutereason } = req.body;
    if (!id) return res.json({ success: false, message: 'No ID' });
    const fields = []; const params = [];
    if (email !== undefined) { fields.push('email=?'); params.push(email); }
    if (expansion !== undefined) { fields.push('expansion=?'); params.push(parseInt(expansion)); }
    if (locked !== undefined) { fields.push('locked=?'); params.push(locked ? 1 : 0); }
    if (mutetime !== undefined) {
      const dur = parseInt(mutetime) || 0;
      if (dur > 0) { fields.push('mutetime=?'); params.push(dur); fields.push('muteby=?'); params.push('ACManager'); if (mutereason) { fields.push('mutereason=?'); params.push(mutereason); } }
      else { fields.push('mutetime=0'); fields.push("muteby=''"); fields.push("mutereason=''"); }
    }
    if (!fields.length) return res.json({ success: false, message: 'No changes' });
    params.push(id); await query('auth', `UPDATE account SET ${fields.join(', ')} WHERE id=?`, params);
    res.json({ success: true, message: 'Updated' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/accounts/ban', async (req, res) => {
  try {
    const { id, reason, duration } = req.body;
    if (!id) return res.json({ success: false, message: 'No ID' });
    const dur = parseInt(duration) || 0;
    if (dur > 0) { await query('auth', `INSERT INTO account_banned (id,bandate,unbandate,bannedby,banreason,active) VALUES (?,NOW(),DATE_ADD(NOW(),INTERVAL ? DAY),'ACManager',?,1) ON DUPLICATE KEY UPDATE bandate=NOW(),unbandate=DATE_ADD(NOW(),INTERVAL ? DAY),bannedby='ACManager',banreason=?,active=1`, [id,dur,reason||'',dur,reason||'']); }
    else { await query('auth', `INSERT INTO account_banned (id,bandate,unbandate,bannedby,banreason,active) VALUES (?,NOW(),'2099-12-31','ACManager',?,1) ON DUPLICATE KEY UPDATE bandate=NOW(),unbandate='2099-12-31',bannedby='ACManager',banreason=?,active=1`, [id,reason||'',reason||'']); }
    res.json({ success: true, message: 'Banned' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/accounts/unban', async (req, res) => {
  try { await query('auth', `UPDATE account_banned SET active=0 WHERE id=?`, [req.body.id]); res.json({ success: true, message: 'Unbanned' }); }
  catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/accounts/kick', async (req, res) => {
  try { await query('auth', `UPDATE account SET online=0 WHERE id=?`, [req.body.id]); res.json({ success: true, message: 'Kicked' }); }
  catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/accounts/delete', async (req, res) => {
  try {
    const { id, deleteChars } = req.body;
    if (!id) return res.json({ success: false, message: 'No ID' });
    if (deleteChars) { await query('characters', `DELETE FROM characters WHERE account=?`, [id]); }
    else { await query('characters', `UPDATE characters SET account=0,deleteDate=UNIX_TIMESTAMP() WHERE account=?`, [id]); }
    await query('auth', `DELETE FROM account_banned WHERE id=?`, [id]);
    await query('auth', `DELETE FROM account_muted WHERE guid=?`, [id]);
    await query('auth', `DELETE FROM account_access WHERE AccountID=?`, [id]);
    await query('auth', `DELETE FROM account WHERE id=?`, [id]);
    res.json({ success: true, message: 'Deleted' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/characters', async (req, res) => {
  try {
    const page = parseInt(req.query.page) || 1, limit = parseInt(req.query.limit) || 50, search = req.query.search || '', offset = (page - 1) * limit;
    let where = ''; const params = [];
    if (search) { where = 'WHERE c.name LIKE ?'; params.push('%' + search + '%'); }
    const total = (await query('characters', `SELECT COUNT(*) as total FROM characters c ${where}`, params))[0]?.total || 0;
    const characters = await query('characters', `SELECT c.guid,c.name,c.race,c.class,c.level,c.zone,c.map,c.account,c.online,c.deleteDate as deleted,a.username FROM characters c LEFT JOIN auth.account a ON c.account=a.id ${where} ORDER BY c.guid DESC LIMIT ? OFFSET ?`, [...params, limit, offset]);
    res.json({ success: true, characters, total, page, limit });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/characters/:guid', async (req, res) => {
  try {
    const [char] = await query('characters', `SELECT c.*,a.username FROM characters c LEFT JOIN auth.account a ON c.account=a.id WHERE c.guid=?`, [req.params.guid]);
    if (!char) return res.json({ success: false, message: 'Not found' });
    res.json({ success: true, character: char });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/characters/edit', async (req, res) => {
  try {
    const { guid, name, level, race, class: cls, money } = req.body;
    if (!guid) return res.json({ success: false, message: 'No GUID' });
    const fields = []; const params = [];
    if (name !== undefined) { fields.push('name=?'); params.push(name); }
    if (level !== undefined) { fields.push('level=?'); params.push(parseInt(level)); }
    if (race !== undefined) { fields.push('race=?'); params.push(parseInt(race)); }
    if (cls !== undefined) { fields.push('class=?'); params.push(parseInt(cls)); }
    if (money !== undefined) { fields.push('money=?'); params.push(parseInt(money)); }
    if (!fields.length) return res.json({ success: false, message: 'No changes' });
    params.push(guid); await query('characters', `UPDATE characters SET ${fields.join(', ')} WHERE guid=?`, params);
    res.json({ success: true, message: 'Updated' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/characters/delete', async (req, res) => {
  try { await query('characters', `UPDATE characters SET deleteDate=UNIX_TIMESTAMP() WHERE guid=?`, [req.body.guid]); res.json({ success: true, message: 'Deleted' }); }
  catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/characters/restore', async (req, res) => {
  try { await query('characters', `UPDATE characters SET deleteDate=NULL WHERE guid=?`, [req.body.guid]); res.json({ success: true, message: 'Restored' }); }
  catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/online', async (req, res) => {
  try {
    const characters = await query('characters', `SELECT c.guid,c.name,c.race,c.class,c.level,c.map,c.zone,c.account,a.username,c.online FROM characters c LEFT JOIN auth.account a ON c.account=a.id WHERE c.online=1 ORDER BY c.name`).catch(() => []);
    const accounts = await query('auth', `SELECT a.id,a.username,a.last_login FROM account a WHERE a.online=1`).catch(() => []);
    res.json({ success: true, characters, accounts });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.get('/rights/accounts', async (req, res) => {
  try {
    const page = parseInt(req.query.page) || 1, limit = parseInt(req.query.limit) || 50, search = req.query.search || '', offset = (page - 1) * limit;
    let where = ''; const params = [];
    if (search) { where = 'WHERE a.username LIKE ?'; params.push('%' + search + '%'); }
    const total = (await query('auth', `SELECT COUNT(*) as total FROM account a ${where}`, params))[0]?.total || 0;
    const accounts = await query('auth', `SELECT a.id,a.username,a.online,IFNULL(aa.SecurityLevel,0) as secLevel FROM account a LEFT JOIN account_access aa ON a.id=aa.AccountID AND (aa.RealmID=-1 OR aa.RealmID=1) ${where} ORDER BY IFNULL(aa.SecurityLevel,0) DESC,a.id ASC LIMIT ? OFFSET ?`, [...params, limit, offset]);
    res.json({ success: true, accounts, total, page, limit, securityLevels: SECURITY_LEVELS });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

router.post('/rights/set', async (req, res) => {
  try {
    const { accountId, securityLevel } = req.body;
    if (accountId === undefined) return res.json({ success: false, message: 'No ID' });
    const level = parseInt(securityLevel) || 0;
    if (level === 0) { await query('auth', `DELETE FROM account_access WHERE AccountID=?`, [accountId]); }
    else { await query('auth', `INSERT INTO account_access (AccountID,SecurityLevel,RealmID) VALUES (?,?,-1) ON DUPLICATE KEY UPDATE SecurityLevel=VALUES(SecurityLevel)`, [accountId, level]); }
    res.json({ success: true, message: 'Updated' });
  } catch (e) { res.json({ success: false, message: e.message }); }
});

module.exports = router;
