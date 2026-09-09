let ws = null;
let currentPage = 'dashboard';
let commandHistory = [];
let consoleHistory = { worldserver: [], bnetserver: [] };
let accountsPage = 1, charactersPage = 1, rightsPage = 1, playerSearchQuery = '';
let rightsSearchQuery = '';
let searchState = { matches: [], currentIndex: -1, lastQuery: '' };
let serverOverviewTimer = null;

const RACE_NAMES = {1:'Mensch',2:'Orc',3:'Zwerg',4:'Night Elf',5:'Undead',6:'Tauren',7:'Gnome',8:'Troll',9:'Goblin',10:'Blood Elf',11:'Draenei',22:'Worgen',24:'Pandaren'};
const CLASS_NAMES = {1:'Krieger',2:'Paladin',3:'Jäger',4:'Schamane',5:'Priester',6:'Todesritter',7:'Hexenmeister',8:'Magier',9:'Dämonenjäger',11:'Druide',12:'Schurke'};

document.addEventListener('DOMContentLoaded', function() {
    initNav();
    initWebSocket();
    setLang(localStorage.getItem('ac-lang') || 'de');
    loadServerProfiles();
    loadPage('dashboard');
    loadInitialData();
});

/* ========== NAVIGATION ========== */
function initNav() {
    document.querySelectorAll('.nav-item').forEach(function(item) {
        item.addEventListener('click', function() { loadPage(item.dataset.page); });
    });
}

let rendered = {};

function loadPage(page) {
    currentPage = page;
    document.querySelectorAll('.nav-item').forEach(function(el) {
        el.classList.toggle('active', el.dataset.page === page);
    });
    document.querySelectorAll('.page').forEach(function(el) { el.classList.remove('active'); });
    var el = document.getElementById('page-' + page);
    if (el) el.classList.add('active');

    var titleMap = { dashboard:'dash_status', server:'srv_world', setup:'nav_setup', config:'cfg_title', logs:'log_title', players:'pls_online', backups:'bak_title', settings:'set_title', rights:'rgt_title' };
    document.getElementById('pageTitle').textContent = t(titleMap[page] || page);

    var renderers = { dashboard:renderDashboard, server:renderServer, setup:renderSetup, config:renderConfig, logs:renderLogs, players:renderPlayers, backups:renderBackups, rights:renderRights, settings:renderSettings };
    if (renderers[page] && !rendered[page]) {
        renderers[page]();
        rendered[page] = true;
    }
    if (page === 'logs') refreshLogList();
    if (page === 'players') refreshPlayers();
    if (page === 'rights') loadRights();
    if (page === 'backups') loadBackups();
    if (page === 'settings') loadSettingsData();
}

/* ========== PAGES ========== */
function renderDashboard() {
    document.getElementById('page-dashboard').innerHTML = `
    <div class="dashboard-grid">
        <div class="card dashboard-wide"><div class="card-header"><h3 data-i18n="dash_servers">${t('dash_servers')}</h3><button class="btn btn-primary btn-sm" onclick="loadPage('setup')" data-i18n="dash_addserver">${t('dash_addserver')}</button></div><div class="card-body"><div id="serverOverview" class="server-overview-grid"></div></div></div>
    </div>`;
    loadServerOverview();
}

function loadServerOverview() {
    get('/api/servers/status', function(d) {
        var el = document.getElementById('serverOverview');
        if (!el || !d.success) return;
        el.innerHTML = d.servers.map(function(server) {
            var active = server.id === d.activeServerId;
            var running = server.worldserver.running || server.bnetserver.running;
            return '<div class="server-overview-item ' + (active ? 'active' : '') + '">' +
                '<span class="server-overview-dot ' + (running ? 'online' : '') + '"></span><span class="server-overview-main"><strong>' + esc(server.name) + '</strong><small>' + (server.mode === 'ssh' ? 'SSH: ' + esc(server.host) : server.mode) + ' · World ' + (server.worldserver.running ? 'ON' : 'OFF') + ' · BNet ' + (server.bnetserver.running ? 'ON' : 'OFF') + '</small></span><span class="server-overview-actions"><button class="btn btn-success btn-sm" onclick="serverTileAction(event,\'' + esc(server.id) + '\',\'start\',\'worldserver\')">▶</button><button class="btn btn-danger btn-sm" onclick="serverTileAction(event,\'' + esc(server.id) + '\',\'stop\',\'worldserver\')">■</button><button class="btn btn-secondary btn-sm" onclick="serverTileOpen(event,\'' + esc(server.id) + '\',\'config\')">CFG</button><button class="btn btn-secondary btn-sm" onclick="serverTileOpen(event,\'' + esc(server.id) + '\',\'console\')">&gt;_</button></span></div>';
        }).join('');
    });
    if (!serverOverviewTimer) serverOverviewTimer = setInterval(function() { if (currentPage === 'dashboard') loadServerOverview(); }, 3000);
}

function serverTileOpen(event, id, target) {
    event.stopPropagation();
    selectServerProfile(id);
    if (target === 'config') loadPage('config');
    if (target === 'console') { loadPage('server'); setTimeout(function() { openConsole('worldserver'); }, 0); }
}

function serverTileAction(event, id, action, type) {
    event.stopPropagation();
    post('/api/servers/select', { id: id }, function(result) {
        if (!result.success) return;
        if (action === 'start') startServer(type);
        if (action === 'stop') stopServer(type);
    });
}

function renderSetup() {
    document.getElementById('page-setup').innerHTML = '<div class="setup-shell"><div class="card setup-wizard"><div class="card-header"><div><h3 data-i18n="nav_setup">' + t('nav_setup') + '</h3><p class="setup-subtitle">Create a server connection in three steps</p></div><span class="setup-counter" id="setup-counter">1 / 3</span></div><div class="card-body"><div class="setup-stepper"><span class="active" data-step="1">1</span><span data-step="2">2</span><span data-step="3">3</span></div><div id="setup-step-1" class="setup-step active"><h4>Identity</h4><p>Give this server a clear name and choose how the manager connects.</p><label>' + t('srv_name') + '<input id="setup-name" class="form-input" placeholder="Production server"></label><label>' + t('srv_connection') + '<select id="setup-mode" class="form-select" onchange="toggleSetupSsh()"><option value="local">' + t('srv_local') + '</option><option value="ssh">' + t('srv_ssh') + '</option></select></label></div><div id="setup-step-2" class="setup-step"><h4>Connection details</h4><p id="setup-connection-help">Choose the local installation path.</p><div id="setup-ssh-fields" class="setup-ssh-fields" hidden><label>' + t('srv_host') + '<input id="setup-host" class="form-input" placeholder="203.0.113.10"></label><label>' + t('srv_sshport') + '<input id="setup-port" class="form-input" type="number" value="22"></label><label>' + t('srv_user') + '<input id="setup-user" class="form-input"></label><label>' + t('srv_privatekey') + '<input id="setup-key" class="form-input" placeholder="~/.ssh/id_ed25519"></label></div><label>' + t('srv_path') + '<input id="setup-path" class="form-input" placeholder="C:\\ac-server or /opt/azerothcore"></label></div><div id="setup-step-3" class="setup-step"><h4>Review and create</h4><p>Check the connection details before creating the server profile.</p><div id="setup-summary" class="setup-summary"></div></div><div class="setup-actions"><button id="setup-back" class="btn btn-secondary" onclick="setupBack()" disabled>Back</button><span></span><button id="setup-next" class="btn btn-primary" onclick="setupNext()">Next</button></div></div></div></div>';
    window.setupStep = 1;
}

function toggleSetupSsh() { var mode = document.getElementById('setup-mode'); var fields = document.getElementById('setup-ssh-fields'); var help = document.getElementById('setup-connection-help'); if (fields) fields.hidden = !mode || mode.value !== 'ssh'; if (help) help.textContent = mode && mode.value === 'ssh' ? 'Enter the SSH connection details for the remote server.' : 'Choose the local AzerothCore installation path.'; }
function setupValues() { var value = function(id) { var el = document.getElementById(id); return el ? el.value.trim() : ''; }; return { name: value('setup-name'), mode: value('setup-mode'), host: value('setup-host'), port: parseInt(value('setup-port')) || 22, username: value('setup-user'), privateKeyPath: value('setup-key'), acServerPath: value('setup-path') }; }
function setupNext() { var values = setupValues(); if (window.setupStep === 1 && !values.name) return notify('Enter a server name', false); if (window.setupStep === 2 && !values.acServerPath) return notify('Enter the AzerothCore path', false); if (window.setupStep === 2 && values.mode === 'ssh' && (!values.host || !values.username || !values.privateKeyPath)) return notify('Complete the SSH connection details', false); window.setupStep = Math.min(3, window.setupStep + 1); renderSetupStep(); }
function setupBack() { window.setupStep = Math.max(1, window.setupStep - 1); renderSetupStep(); }
function renderSetupStep() { var step = window.setupStep || 1; document.querySelectorAll('.setup-step').forEach(function(el) { el.classList.toggle('active', el.id === 'setup-step-' + step); }); document.querySelectorAll('.setup-stepper span').forEach(function(el) { el.classList.toggle('active', Number(el.dataset.step) <= step); }); var counter = document.getElementById('setup-counter'); if (counter) counter.textContent = step + ' / 3'; var back = document.getElementById('setup-back'); var next = document.getElementById('setup-next'); if (back) back.disabled = step === 1; if (next) { next.textContent = step === 3 ? t('srv_saveprofile') : 'Next'; next.onclick = step === 3 ? createServerFromSetup : setupNext; } if (step === 3) { var v = setupValues(); document.getElementById('setup-summary').innerHTML = '<div><strong>' + esc(v.name) + '</strong><span>' + esc(v.mode === 'ssh' ? 'SSH: ' + v.host + ':' + v.port : 'Local') + '</span><span>' + esc(v.acServerPath) + '</span></div>'; } }
function createServerFromSetup() {
    var v = setupValues(); put('/api/servers', { name: v.name, mode: v.mode, host: v.host, port: v.port, username: v.username, privateKeyPath: v.privateKeyPath, acServerPath: v.acServerPath, worldserverExe: v.mode === 'ssh' ? 'worldserver' : 'worldserver.exe', bnetserverExe: v.mode === 'ssh' ? 'bnetserver' : 'bnetserver.exe' }, function(d) { if (d.success) { loadServerProfiles(); loadPage('dashboard'); } });
}

function renderServer() {
    document.getElementById('page-server').innerHTML = `
    <div class="server-grid">
        <div class="card"><div class="card-header"><h3 data-i18n="srv_world">${t('srv_world')}</h3></div><div class="card-body"><div class="control-panel">
            <div class="control-status"><span data-i18n="srv_status">${t('srv_status')}</span><span id="wStatus" class="status-badge offline" data-i18n="dash_offline">${t('dash_offline')}</span></div>
            <div class="control-buttons">
                <button class="btn btn-success btn-lg" onclick="startServer('worldserver')"><svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M8 5v14l11-7z"/></svg><span data-i18n="srv_start">${t('srv_start')}</span></button>
                <button class="btn btn-danger btn-lg" onclick="stopServer('worldserver')"><svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M6 6h12v12H6z"/></svg><span data-i18n="srv_stop">${t('srv_stop')}</span></button>
            </div>
            <div class="server-info-panel"><div class="info-row"><span data-i18n="srv_pid">${t('srv_pid')}</span><span id="wPid">-</span></div><div class="info-row"><span data-i18n="srv_mem">${t('srv_mem')}</span><span>-</span></div></div>
        </div></div></div>
        <div class="card"><div class="card-header"><h3 data-i18n="srv_auth">${t('srv_auth')}</h3></div><div class="card-body"><div class="control-panel">
            <div class="control-status"><span data-i18n="srv_status">${t('srv_status')}</span><span id="bStatus" class="status-badge offline" data-i18n="dash_offline">${t('dash_offline')}</span></div>
            <div class="control-buttons">
                <button class="btn btn-success btn-lg" onclick="startServer('bnetserver')"><svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M8 5v14l11-7z"/></svg><span data-i18n="srv_start">${t('srv_start')}</span></button>
                <button class="btn btn-danger btn-lg" onclick="stopServer('bnetserver')"><svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M6 6h12v12H6z"/></svg><span data-i18n="srv_stop">${t('srv_stop')}</span></button>
                <button class="btn btn-warning btn-lg" onclick="restartServer('bnetserver')"><svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M17.65 6.35C16.2 4.9 14.21 4 12 4c-4.42 0-7.99 3.58-7.99 8s3.57 8 7.99 8c3.73 0 6.84-2.55 7.73-6h-2.08c-.82 2.33-3.04 4-5.65 4-3.31 0-6-2.69-6-6s2.69-6 6-6c1.66 0 3.14.69 4.22 1.78L13 11h7V4l-2.35 2.35z"/></svg><span data-i18n="srv_restart">${t('srv_restart')}</span></button>
            </div>
            <div class="server-info-panel"><div class="info-row"><span data-i18n="srv_pid">${t('srv_pid')}</span><span id="bPid">-</span></div><div class="info-row"><span data-i18n="srv_mem">${t('srv_mem')}</span><span>-</span></div></div>
        </div></div></div>
    </div>`;
    var worldControls = document.querySelector('#page-server .control-buttons');
    if (worldControls && !worldControls.querySelector('[data-extra="world-restart"]')) {
        var worldRestart = document.createElement('button'); worldRestart.className = 'btn btn-warning btn-lg'; worldRestart.dataset.extra = 'world-restart'; worldRestart.innerHTML = '<span>↻</span><span>' + t('srv_restart') + '</span>'; worldRestart.onclick = function() { restartServer('worldserver'); }; worldControls.appendChild(worldRestart);
    }
    document.querySelectorAll('#page-server .control-buttons').forEach(function(controls, index) {
        if (controls.querySelector('[data-extra="console"]')) return;
        var source = index === 0 ? 'worldserver' : 'bnetserver';
        var consoleButton = document.createElement('button'); consoleButton.className = 'btn btn-secondary btn-lg'; consoleButton.dataset.extra = 'console'; consoleButton.innerHTML = '<span>&gt;_</span><span>' + t('con_popup') + '</span>'; consoleButton.onclick = function() { openConsole(source); }; controls.appendChild(consoleButton);
    });
}

function openConsole(source) {
    var existing = document.getElementById('consoleModal');
    if (existing) existing.remove();
    var title = source === 'worldserver' ? t('con_world') : t('con_auth');
    var placeholder = source === 'worldserver' ? t('con_phw') : t('con_pha');
    var modal = document.createElement('div');
    modal.id = 'consoleModal'; modal.className = 'modal-overlay show';
    modal.innerHTML = '<div class="console-modal"><div class="modal-header"><h3>' + title + '</h3><div><button class="btn btn-sm btn-secondary" onclick="clearConsole(\'' + source + '\')">' + t('con_clear') + '</button><button class="modal-close" onclick="closeConsole()">&times;</button></div></div><div id="console-' + source + '" class="console-output console-modal-output"></div><div class="console-input-wrapper"><span class="console-prompt">&gt;</span><input type="text" id="consoleInput-' + source + '" class="console-input" placeholder="' + placeholder + '"><button class="btn btn-primary btn-sm" onclick="sendCommand(\'' + source + '\')">' + t('con_send') + '</button></div></div>';
    modal.onclick = function(event) { if (event.target === modal) closeConsole(); };
    document.body.appendChild(modal);
    replayConsole(source);
    document.getElementById('consoleInput-' + source).addEventListener('keydown', function(event) { if (event.key === 'Enter') sendCommand(source); });
}
function closeConsole() { var modal = document.getElementById('consoleModal'); if (modal) modal.remove(); }

function replayConsole(source) {
    var el = document.getElementById('console-' + source);
    if (!el) return;
    (consoleHistory[source] || []).forEach(function(entry) {
        var line = document.createElement('div');
        line.className = 'console-line ' + entry.className;
        line.textContent = entry.text;
        el.appendChild(line);
    });
    el.scrollTop = el.scrollHeight;
}

function renderConfig() {
    document.getElementById('page-config').innerHTML = `
    <div class="config-layout"><div class="card"><div class="card-header"><div><h3 data-i18n="cfg_title">${t('cfg_title')}</h3><small id="configServerContext" class="muted-text"></small></div><div class="config-controls">
        <select id="configFileSelect" class="form-select"><option value="worldserver.conf">worldserver.conf</option><option value="bnetserver.conf">bnetserver.conf</option></select>
        <button class="btn btn-primary" onclick="saveConfig()" data-i18n="cfg_save">${t('cfg_save')}</button>
        <button class="btn btn-secondary" onclick="loadConfig()" data-i18n="cfg_reload">${t('cfg_reload')}</button>
    </div></div><div class="card-body"><div class="config-editor-wrapper"><textarea id="configEditor" class="config-editor" spellcheck="false"></textarea></div><div class="config-status" id="configStatus"></div></div></div></div>`;
    loadConfig();
}

function renderLogs() {
    document.getElementById('page-logs').innerHTML = `
    <div class="logs-layout"><div class="card"><div class="card-header"><h3 data-i18n="log_title">${t('log_title')}</h3><div class="log-controls">
        <select id="logFileSelect" class="form-select" onchange="loadLogFile()"><option value="" data-i18n="log_select">${t('log_select')}</option></select>
        <input type="number" id="logTail" class="form-input" value="500" min="100" max="5000" style="width:80px">
        <button class="btn btn-primary" onclick="loadLogFile()" data-i18n="log_load">${t('log_load')}</button>
        <button class="btn btn-secondary" onclick="refreshLogList()" data-i18n="log_refresh">${t('log_refresh')}</button>
    </div></div><div class="card-body"><div id="logContent" class="log-content"></div></div></div></div>`;
    refreshLogList();
}

function renderPlayers() {
    document.getElementById('page-players').innerHTML = `
    <div class="players-layout"><div class="card"><div class="card-header">
        <div class="tab-bar" id="playerTabs">
            <button class="tab active" data-tab="online" onclick="switchPlayerTab('online')"><svg viewBox="0 0 24 24" width="16" height="16" fill="currentColor"><circle cx="12" cy="12" r="8"/></svg><span data-i18n="pls_online">${t('pls_online')}</span><span class="tab-badge" id="onlineCount">0</span></button>
            <button class="tab" data-tab="accounts" onclick="switchPlayerTab('accounts')" data-i18n="pls_accounts">${t('pls_accounts')}</button>
            <button class="tab" data-tab="characters" onclick="switchPlayerTab('characters')" data-i18n="pls_chars">${t('pls_chars')}</button>
        </div>
        <div class="header-actions"><input type="text" id="playerSearch" class="form-input" placeholder="${t('pls_search')}" oninput="searchPlayers()"><button class="btn btn-sm btn-secondary" onclick="refreshPlayers()" data-i18n="pls_refresh">${t('pls_refresh')}</button></div>
    </div><div class="card-body">
        <div id="dbStatus" class="db-status-bar"></div>
        <div id="tab-online" class="player-tab active"><div id="onlineList" class="player-table"></div></div>
        <div id="tab-accounts" class="player-tab"><div id="accountsList" class="player-table"></div><div class="pagination" id="accountsPagination"></div></div>
        <div id="tab-characters" class="player-tab"><div id="charactersList" class="player-table"></div><div class="pagination" id="charactersPagination"></div></div>
    </div></div></div>`;
    checkDbStatus();
    loadOnline();
}

function renderBackups() {
    document.getElementById('page-backups').innerHTML = `
    <div class="backups-layout"><div class="card"><div class="card-header"><h3 data-i18n="bak_title">${t('bak_title')}</h3><button class="btn btn-primary" onclick="createBackup()" data-i18n="bak_new">${t('bak_new')}</button></div>
    <div class="card-body"><div id="backupsList" class="backups-grid"></div></div></div></div>`;
    loadBackups();
}

function renderRights() {
    document.getElementById('page-rights').innerHTML = `
    <div class="rights-layout"><div class="card"><div class="card-header">
        <div class="tab-bar" id="rightsTabs"><button class="tab active" data-tab="rights-list" onclick="switchRightsTab('rights-list')" data-i18n="rgt_all">${t('rgt_all')}</button><button class="tab" data-tab="rights-assign" onclick="switchRightsTab('rights-assign')" data-i18n="rgt_assign">${t('rgt_assign')}</button></div>
        <div class="header-actions"><input type="text" id="rightsSearch" class="form-input" placeholder="${t('rgt_search')}" oninput="searchRights()"><button class="btn btn-sm btn-secondary" onclick="loadRights()" data-i18n="pls_refresh">${t('pls_refresh')}</button></div>
    </div><div class="card-body">
        <div id="tab-rights-list" class="rights-tab active">
            <div class="rights-legend"><span class="rights-badge rights-admin" data-i18n="rgt_admin">${t('rgt_admin')}</span><span class="rights-badge rights-gm" data-i18n="rgt_gm">${t('rgt_gm')}</span><span class="rights-badge rights-mod" data-i18n="rgt_mod">${t('rgt_mod')}</span><span class="rights-badge rights-player" data-i18n="rgt_player">${t('rgt_player')}</span></div>
            <div id="rightsList" class="player-table"></div>
        </div>
        <div id="tab-rights-assign" class="rights-tab">
            <div class="rights-assign-form"><div class="rights-assign-row">
                <div class="field"><label data-i18n="rgt_select_acc">${t('rgt_select_acc')}</label><select id="rightsAccountSelect" class="form-select"><option value="">...</option></select></div>
                <div class="field"><label data-i18n="rgt_select_lvl">${t('rgt_select_lvl')}</label><select id="rightsLevelSelect" class="form-select"><option value="0">Spieler (0)</option><option value="1">Moderator (1)</option><option value="2">Gamemaster (2)</option><option value="3">Administrator (3)</option></select></div>
                <button class="btn btn-primary" onclick="assignRights()" data-i18n="rgt_save">${t('rgt_save')}</button>
            </div>
            <div class="rights-info"><h4 data-i18n="rgt_explain">${t('rgt_explain')}</h4><ul>
                <li><span class="rights-badge rights-player">0</span> <span data-i18n="rgt_playerdesc">${t('rgt_playerdesc')}</span></li>
                <li><span class="rights-badge rights-mod">1</span> <span data-i18n="rgt_moddesc">${t('rgt_moddesc')}</span></li>
                <li><span class="rights-badge rights-gm">2</span> <span data-i18n="rgt_gmdesc">${t('rgt_gmdesc')}</span></li>
                <li><span class="rights-badge rights-admin">3</span> <span data-i18n="rgt_admindesc">${t('rgt_admindesc')}</span></li>
            </ul></div></div>
    </div></div></div>`;
    loadRights();
}

function renderSettings() {
    document.getElementById('page-settings').innerHTML = `
    <div class="settings-layout"><div class="card"><div class="card-header"><h3 data-i18n="set_title">${t('set_title')}</h3><div class="config-controls">
        <button class="btn btn-primary" onclick="saveSettings()" data-i18n="set_save">${t('set_save')}</button>
        <button class="btn btn-secondary" onclick="loadSettings()" data-i18n="set_reset">${t('set_reset')}</button>
    </div></div><div class="card-body">
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="srv_profiles">${t('srv_profiles')}</h3><div class="settings-group">
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_name">${t('srv_name')}</label></div><input type="text" id="profile-name" class="form-input setting-input"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_connection">${t('srv_connection')}</label></div><select id="profile-mode" class="form-select setting-input" onchange="toggleProfileSshFields()"><option value="local" data-i18n="srv_local">${t('srv_local')}</option><option value="ssh" data-i18n="srv_ssh">${t('srv_ssh')}</option></select></div>
            <div id="profile-ssh-fields" style="display:none"><div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_host">${t('srv_host')}</label></div><input type="text" id="profile-host" class="form-input setting-input" placeholder="192.168.1.20"></div><div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_sshport">${t('srv_sshport')}</label></div><input type="number" id="profile-port" class="form-input setting-input" value="22"></div><div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_user">${t('srv_user')}</label></div><input type="text" id="profile-username" class="form-input setting-input"></div><div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_privatekey">${t('srv_privatekey')}</label></div><input type="text" id="profile-privateKeyPath" class="form-input setting-input" placeholder="C:\\Users\\Admin\\.ssh\\id_ed25519"></div></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_path">${t('srv_path')}</label></div><input type="text" id="profile-acServerPath" class="form-input setting-input" placeholder="/opt/azerothcore"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_worldexe">${t('srv_worldexe')}</label></div><input type="text" id="profile-worldserverExe" class="form-input setting-input"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="srv_bnetexe">${t('srv_bnetexe')}</label></div><input type="text" id="profile-bnetserverExe" class="form-input setting-input"></div>
            <div class="config-controls"><button class="btn btn-primary" onclick="saveServerProfile()" data-i18n="srv_saveprofile">${t('srv_saveprofile')}</button><button class="btn btn-danger" onclick="deleteServerProfile()" data-i18n="srv_deleteprofile">${t('srv_deleteprofile')}</button></div>
        </div></div>
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="set_paths">${t('set_paths')}</h3><div class="settings-group">
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="set_acpath">${t('set_acpath')}</label><span class="setting-desc" data-i18n="set_acdesc">${t('set_acdesc')}</span></div><div class="setting-input-group"><input type="text" id="setting-acServerPath" class="form-input setting-input" placeholder="C:\\ac-server"><button class="btn btn-sm btn-secondary" onclick="browseFolder('setting-acServerPath')">...</button></div></div>
        </div></div>
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="set_files">${t('set_files')}</h3><div class="settings-group">
            <div class="setting-row"><div class="setting-info"><label class="setting-label">Worldserver EXE</label></div><input type="text" id="setting-worldserverExe" class="form-input setting-input" value="worldserver.exe"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label">BNet Server EXE</label></div><input type="text" id="setting-bnetserverExe" class="form-input setting-input" value="bnetserver.exe"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label">Worldserver Config</label></div><input type="text" id="setting-worldserverConf" class="form-input setting-input" value="worldserver.conf"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label">BNet Server Config</label></div><input type="text" id="setting-bnetserverConf" class="form-input setting-input" value="bnetserver.conf"></div>
        </div></div>
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="set_folders">${t('set_folders')}</h3><div class="settings-group">
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="log_title">${t('log_title')}</label></div><input type="text" id="setting-logsDir" class="form-input setting-input" value="Data/logs"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="bak_title">${t('bak_title')}</label></div><input type="text" id="setting-backupDir" class="form-input setting-input" value="backups"></div>
        </div></div>
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="set_options">${t('set_options')}</h3><div class="settings-group">
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="set_port">${t('set_port')}</label><span class="setting-desc" data-i18n="set_portdesc">${t('set_portdesc')}</span></div><input type="number" id="setting-port" class="form-input setting-input" value="3000" min="1024" max="65535"></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="set_tray">${t('set_tray')}</label><span class="setting-desc" data-i18n="set_traydesc">${t('set_traydesc')}</span></div><label class="toggle-switch"><input type="checkbox" id="setting-minimizeToTray" checked><span class="toggle-slider"></span></label></div>
            <div class="setting-row"><div class="setting-info"><label class="setting-label" data-i18n="set_browser">${t('set_browser')}</label><span class="setting-desc" data-i18n="set_browserdesc">${t('set_browserdesc')}</span></div><label class="toggle-switch"><input type="checkbox" id="setting-openBrowserOnStart"><span class="toggle-slider"></span></label></div>
        </div></div>
        <div class="settings-section"><h3 class="settings-section-title" data-i18n="set_test">${t('set_test')}</h3><div class="settings-group"><div class="path-test-result" id="pathTestResult"></div><button class="btn btn-primary" onclick="testPaths()" data-i18n="set_testbtn">${t('set_testbtn')}</button></div></div>
    </div></div></div>`;
    var profileSection = document.querySelector('#page-settings .settings-section');
    if (profileSection) profileSection.remove();
    loadSettingsData();
}

/* ========== WEBSOCKET ========== */
function initWebSocket() {
    if (ws && (ws.readyState === 0 || ws.readyState === 1)) return;
    fetch('/api/ws-token').then(function(r) { return r.json(); }).then(function(d) {
        if (!d.success) throw new Error('WebSocket authentication failed');
        var protocol = location.protocol === 'https:' ? 'wss:' : 'ws:';
        ws = new WebSocket(protocol + '//' + location.host + '/?token=' + encodeURIComponent(d.token));
        ws.onopen = function() { document.getElementById('statusIndicator').classList.add('connected'); document.getElementById('statusText').textContent = t('auth_connected'); };
        ws.onmessage = function(e) { handleMsg(JSON.parse(e.data)); };
        ws.onclose = function() { document.getElementById('statusIndicator').classList.remove('connected'); document.getElementById('statusText').textContent = t('auth_disconnected'); setTimeout(initWebSocket, 5000); };
        ws.onerror = function() {};
    }).catch(function() { setTimeout(initWebSocket, 5000); });
}

function handleMsg(data) {
    if (data.type === 'status') updateStatus(data.data);
    if (data.type === 'log') addLog(data);
    if (data.type === 'command') addCmd(data);
}

function updateStatus(s) {
    var el;
    el = document.getElementById('wsStatus'); if (el) { el.className = 'status-badge ' + (s.worldserver.running ? 'online' : 'offline'); el.textContent = t(s.worldserver.running ? 'dash_online' : 'dash_offline'); }
    el = document.getElementById('wsPid'); if (el) el.textContent = s.worldserver.pid || '-';
    el = document.getElementById('bsStatus'); if (el) { el.className = 'status-badge ' + (s.bnetserver.running ? 'online' : 'offline'); el.textContent = t(s.bnetserver.running ? 'dash_online' : 'dash_offline'); }
    el = document.getElementById('bsPid'); if (el) el.textContent = s.bnetserver.pid || '-';
    el = document.getElementById('uptime'); if (el) el.textContent = fmtTime(s.uptime);
    el = document.getElementById('wStatus'); if (el) { el.className = 'status-badge ' + (s.worldserver.running ? 'online' : 'offline'); el.textContent = t(s.worldserver.running ? 'dash_online' : 'dash_offline'); }
    el = document.getElementById('wPid'); if (el) el.textContent = s.worldserver.pid || '-';
    el = document.getElementById('bStatus'); if (el) { el.className = 'status-badge ' + (s.bnetserver.running ? 'online' : 'offline'); el.textContent = t(s.bnetserver.running ? 'dash_online' : 'dash_offline'); }
    el = document.getElementById('bPid'); if (el) el.textContent = s.bnetserver.pid || '-';
    if (s.system) {
        var sys = s.system;
        var cpu = Math.min(100, (sys.loadAverage[0] / sys.cpuCores) * 100);
        el = document.getElementById('cpuPct'); if (el) el.textContent = cpu.toFixed(1) + '%';
        el = document.getElementById('cpuBar'); if (el) el.style.width = cpu + '%';
        el = document.getElementById('cpuModel'); if (el) el.textContent = sys.cpuModel;
        el = document.getElementById('memPct'); if (el) el.textContent = sys.memoryUsagePercent + '%';
        el = document.getElementById('memBar'); if (el) el.style.width = sys.memoryUsagePercent + '%';
        el = document.getElementById('memInfo'); if (el) el.textContent = (sys.usedMemory / 1073741824).toFixed(2) + ' / ' + (sys.totalMemory / 1073741824).toFixed(2) + ' GB';
        el = document.getElementById('loadVal'); if (el) el.textContent = sys.loadAverage[0].toFixed(2);
        el = document.getElementById('loadBar'); if (el) el.style.width = Math.min(100, (sys.loadAverage[0] / sys.cpuCores) * 100) + '%';
    }
}

function addLog(data) {
    var el = document.getElementById('console-' + data.source);
    var entry = { className: data.level, text: '[' + new Date().toLocaleTimeString() + '] ' + data.message };
    consoleHistory[data.source] = consoleHistory[data.source] || [];
    consoleHistory[data.source].push(entry);
    if (consoleHistory[data.source].length > 2000) consoleHistory[data.source].shift();
    if (!el) return;
    var line = document.createElement('div');
    line.className = 'console-line ' + entry.className;
    line.textContent = entry.text;
    el.appendChild(line);
    el.scrollTop = el.scrollHeight;
    if (el.children.length > 2000) el.removeChild(el.firstChild);
}

function addCmd(data) {
    var el = document.getElementById('console-' + data.source);
    var entry = { className: 'user-command', text: '> ' + data.command };
    consoleHistory[data.source] = consoleHistory[data.source] || [];
    consoleHistory[data.source].push(entry);
    if (consoleHistory[data.source].length > 2000) consoleHistory[data.source].shift();
    if (!el) return;
    var line = document.createElement('div');
    line.className = 'console-line ' + entry.className;
    line.textContent = entry.text;
    el.appendChild(line);
    el.scrollTop = el.scrollHeight;
}

/* ========== INIT ========== */
function loadInitialData() {
    fetch('/api/auth/status').then(function(r) { return r.json(); }).then(function(d) {
        if (d.authenticated) {
            fetch('/api/status').then(function(r) { return r.json(); }).then(function(s) { updateStatus(s); });
        }
    });
}

function loadServerProfiles() {
    get('/api/servers', function(d) {
        var select = document.getElementById('serverSelect');
        if (!select || !d.success) return;
        select.innerHTML = d.servers.map(function(server) { return '<option value="' + esc(server.id) + '">' + esc(server.name) + (server.mode === 'ssh' ? esc(t('srv_ssh_suffix')) : '') + '</option>'; }).join('');
        select.value = d.activeServerId;
        window.serverProfiles = d.servers;
        loadServerProfileForm(d.activeServerId);
    });
}

function loadServerProfileForm(id) {
    var profile = (window.serverProfiles || []).find(function(item) { return item.id === id; });
    if (!profile) return;
    ['name','mode','host','port','username','privateKeyPath','acServerPath','worldserverExe','bnetserverExe'].forEach(function(key) { var el = document.getElementById('profile-' + key); if (el) el.value = profile[key] || ''; });
    toggleProfileSshFields();
}

function selectServerProfile(id) {
    post('/api/servers/select', { id: id }, function(d) { if (d.success) { loadServerProfiles(); updateStatus({ worldserver: { running: false }, bnetserver: { running: false }, uptime: 0 }); if (currentPage === 'config') loadConfig(); if (currentPage === 'dashboard') loadServerOverview(); } });
}

function toggleProfileSshFields() { var mode = document.getElementById('profile-mode'); var fields = document.getElementById('profile-ssh-fields'); if (fields) fields.style.display = mode && mode.value === 'ssh' ? 'block' : 'none'; }

function saveServerProfile() {
    var active = (window.serverProfiles || []).find(function(item) { return item.id === document.getElementById('serverSelect')?.value; }) || {};
    var profile = { id: active.id, name: document.getElementById('profile-name').value, mode: document.getElementById('profile-mode').value, host: document.getElementById('profile-host').value, port: parseInt(document.getElementById('profile-port').value) || 22, username: document.getElementById('profile-username').value, privateKeyPath: document.getElementById('profile-privateKeyPath').value, acServerPath: document.getElementById('profile-acServerPath').value, worldserverExe: document.getElementById('profile-worldserverExe').value, bnetserverExe: document.getElementById('profile-bnetserverExe').value };
    put('/api/servers', profile, function(d) { if (d.success) loadServerProfiles(); });
}

function deleteServerProfile() { var id = document.getElementById('serverSelect')?.value; if (id && confirm(t('srv_delete_confirm'))) remove('/api/servers/' + encodeURIComponent(id), function(d) { if (d.success) loadServerProfiles(); }); }

/* ========== ACTIONS ========== */
function startServer(type) { post('/api/server/start', { type: type }); }
function stopServer(type) { if (confirm(type + '?')) post('/api/server/stop', { type: type }); }
function restartServer(type) { if (confirm(type + '?')) post('/api/server/restart', { type: type }); }

function clearConsole(source) {
    var el = document.getElementById('console-' + source);
    consoleHistory[source] = [];
    if (el) el.innerHTML = '';
}

function sendCommand(source) {
    var input = document.getElementById('consoleInput-' + source);
    if (!input || !input.value.trim()) return;
    var cmd = input.value.trim();
    commandHistory.unshift(cmd);
    input.value = '';
    post('/api/server/command', { type: source, command: cmd });
}

function logout() { post('/api/auth/logout', {}, function() { location.reload(); }); }

function post(url, body, cb) {
    fetch(url, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
    .then(function(r) { return r.json(); })
    .then(function(d) { if (d.message) notify(d.message, d.success); if (cb) cb(d); })
    .catch(function(e) { notify('Error: ' + e.message, false); });
}

function put(url, body, cb) {
    fetch(url, { method: 'PUT', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
    .then(function(r) { return r.json(); })
    .then(function(d) { if (d.message) notify(d.message, d.success); if (cb) cb(d); })
    .catch(function(e) { notify('Error: ' + e.message, false); });
}

function remove(url, cb) {
    fetch(url, { method: 'DELETE' })
    .then(function(r) { return r.json(); })
    .then(function(d) { if (d.message) notify(d.message, d.success); if (cb) cb(d); })
    .catch(function(e) { notify('Error: ' + e.message, false); });
}

function get(url, cb) {
    fetch(url).then(function(r) { return r.json(); }).then(cb).catch(function(e) { console.error(e); });
}

function notify(msg, ok) {
    var el = document.getElementById('notification');
    el.querySelector('.notification-icon').textContent = ok ? '\u2713' : '\u2717';
    el.querySelector('.notification-message').textContent = msg;
    el.className = 'notification show ' + (ok ? 'success' : 'error');
    setTimeout(function() { el.className = 'notification'; }, 3000);
}

function fmtTime(ms) {
    var s = Math.floor(ms / 1000), m = Math.floor(s / 60), h = Math.floor(m / 60);
    return String(h % 24).padStart(2, '0') + ':' + String(m % 60).padStart(2, '0') + ':' + String(s % 60).padStart(2, '0');
}

/* ========== CONFIG ========== */
function loadConfig() {
    var f = document.getElementById('configFileSelect');
    if (!f) return;
    var context = document.getElementById('configServerContext');
    if (context && window.serverProfiles) { var active = window.serverProfiles.find(function(server) { return server.id === document.getElementById('serverSelect')?.value; }); context.textContent = active ? active.name : ''; }
    get('/api/config/' + f.value, function(d) {
        var ed = document.getElementById('configEditor');
        if (ed && d.success) ed.value = d.content;
    });
}

function saveConfig() {
    var f = document.getElementById('configFileSelect');
    var ed = document.getElementById('configEditor');
    if (!f || !ed) return;
    post('/api/config/' + f.value, { content: ed.value });
}

/* ========== LOGS ========== */
function refreshLogList() {
    get('/api/logs', function(d) {
        var sel = document.getElementById('logFileSelect');
        if (!sel || !d.success) return;
        sel.innerHTML = '<option value="">' + t('log_select') + '</option>';
        d.logs.forEach(function(log) { sel.innerHTML += '<option value="' + esc(log.name) + '">' + esc(log.name) + ' (' + (log.size / 1024).toFixed(1) + ' KB)</option>'; });
    });
}

function loadLogFile() {
    var sel = document.getElementById('logFileSelect');
    var tail = document.getElementById('logTail');
    if (!sel || !sel.value) return;
    get('/api/logs/' + sel.value + '?tail=' + (tail ? tail.value : 500), function(d) {
        var el = document.getElementById('logContent');
        if (el && d.success) el.textContent = d.content;
    });
}

/* ========== PLAYERS ========== */
function switchPlayerTab(tab) {
    document.querySelectorAll('#playerTabs .tab').forEach(function(t) { t.classList.toggle('active', t.dataset.tab === tab); });
    document.querySelectorAll('.player-tab').forEach(function(p) { p.classList.remove('active'); });
    var el = document.getElementById('tab-' + tab);
    if (el) el.classList.add('active');
    if (tab === 'online') loadOnline();
    else if (tab === 'accounts') loadAccounts();
    else if (tab === 'characters') loadCharacters();
}

function searchPlayers() {
    playerSearchQuery = document.getElementById('playerSearch').value;
    var active = document.querySelector('#playerTabs .tab.active');
    if (active) switchPlayerTab(active.dataset.tab);
}

function refreshPlayers() {
    var active = document.querySelector('#playerTabs .tab.active');
    if (active) switchPlayerTab(active.dataset.tab);
}

function checkDbStatus() {
    get('/api/db/status', function(d) {
        var el = document.getElementById('dbStatus');
        if (!el || !d.success) return;
        el.innerHTML = '<div class="db-status-item"><span class="db-dot ' + (d.auth ? 'ok' : 'err') + '"></span> Auth DB</div>' +
            '<div class="db-status-item"><span class="db-dot ' + (d.world ? 'ok' : 'err') + '"></span> World DB</div>' +
            '<div class="db-status-item"><span class="db-dot ' + (d.characters ? 'ok' : 'err') + '"></span> Characters DB</div>';
    });
}

function loadOnline() {
    get('/api/online', function(d) {
        var el = document.getElementById('onlineList');
        document.getElementById('onlineCount').textContent = d.characters ? d.characters.length : 0;
        if (!d.characters || !d.characters.length) { el.innerHTML = '<div class="empty-state"><p>' + t('pls_no_online') + '</p></div>'; return; }
        el.innerHTML = '<table><thead><tr><th>Name</th><th>' + t('pls_level') + '</th><th>' + t('pls_class') + '</th><th>' + t('pls_race') + '</th><th>' + t('pls_account') + '</th></tr></thead><tbody>' +
            d.characters.map(function(c) { return '<tr><td><span class="online-dot on"></span>' + esc(c.name) + '</td><td><span class="badge badge-level">' + c.level + '</span></td><td>' + (CLASS_NAMES[c.class]||c.class) + '</td><td>' + (RACE_NAMES[c.race]||c.race) + '</td><td>' + esc(c.username||'-') + '</td></tr>'; }).join('') + '</tbody></table>';
    });
}

function loadAccounts() {
    get('/api/accounts?page=' + accountsPage + '&limit=30&search=' + encodeURIComponent(playerSearchQuery), function(d) {
        var el = document.getElementById('accountsList');
        if (!d.success || !d.accounts || !d.accounts.length) { el.innerHTML = '<div class="empty-state"><p>' + t('pls_no_acc') + '</p></div>'; return; }
        el.innerHTML = '<table><thead><tr><th>ID</th><th>' + t('pls_username') + '</th><th>' + t('pls_email') + '</th><th>' + t('pls_exp') + '</th><th>' + t('pls_created') + '</th><th>' + t('pls_status') + '</th><th>' + t('pls_actions') + '</th></tr></thead><tbody>' +
            d.accounts.map(function(a) { return '<tr><td>' + a.id + '</td><td><strong>' + esc(a.username) + '</strong></td><td>' + esc(a.email||'-') + '</td><td>' + a.expansion + '</td><td>' + (a.joindate ? new Date(a.joindate).toLocaleDateString() : '-') + '</td><td>' + (a.banned ? '<span class="badge badge-banned">Banned</span> ' : '') + (a.online ? '<span class="badge badge-online">' + t('pls_online') + '</span>' : '') + '</td><td class="actions-cell"><button class="action-btn-sm" onclick="editAccount(' + a.id + ')">' + t('pls_edit') + '</button> ' + (a.banned ? '<button class="action-btn-sm" onclick="unbanAccount(' + a.id + ')">' + t('pls_unban') + '</button>' : '<button class="action-btn-sm warning" onclick="banAccountModal(' + a.id + ')">' + t('pls_ban') + '</button>') + ' <button class="action-btn-sm danger" onclick="deleteAccountModal(' + a.id + ')">' + t('pls_delete') + '</button></td></tr>'; }).join('') + '</tbody></table>';
    });
}

function loadCharacters() {
    get('/api/characters?page=' + charactersPage + '&limit=30&search=' + encodeURIComponent(playerSearchQuery), function(d) {
        var el = document.getElementById('charactersList');
        if (!d.success || !d.characters || !d.characters.length) { el.innerHTML = '<div class="empty-state"><p>' + t('pls_no_chars') + '</p></div>'; return; }
        el.innerHTML = '<table><thead><tr><th>' + t('pls_guid') + '</th><th>' + t('pls_username') + '</th><th>' + t('pls_level') + '</th><th>' + t('pls_class') + '</th><th>' + t('pls_race') + '</th><th>' + t('pls_account') + '</th><th>' + t('pls_actions') + '</th></tr></thead><tbody>' +
            d.characters.map(function(c) { return '<tr><td>' + c.guid + '</td><td><strong>' + esc(c.name) + '</strong>' + (c.deleted ? ' <span class="badge badge-banned">Deleted</span>' : '') + '</td><td><span class="badge badge-level">' + c.level + '</span></td><td>' + (CLASS_NAMES[c.class]||c.class) + '</td><td>' + (RACE_NAMES[c.race]||c.race) + '</td><td>' + esc(c.username||'-') + '</td><td class="actions-cell"><button class="action-btn-sm" onclick="editCharacter(' + c.guid + ')">' + t('pls_edit') + '</button> ' + (c.deleted ? '<button class="action-btn-sm" onclick="restoreChar(' + c.guid + ')">' + t('pls_restore') + '</button>' : '<button class="action-btn-sm danger" onclick="deleteChar(' + c.guid + ')">' + t('pls_delete') + '</button>') + '</td></tr>'; }).join('') + '</tbody></table>';
    });
}

/* ========== ACCOUNT ACTIONS ========== */
function editAccount(id) {
    get('/api/accounts/' + id, function(d) {
        if (!d.success) return notify(d.message, false);
        var a = d.account;
        openModal(t('edit_title') + ' Account #' + id,
            '<div class="modal-form">' +
            '<div class="field"><label>' + t('pls_username') + '</label><input value="' + esc(a.username) + '" disabled></div>' +
            '<div class="field"><label>' + t('pls_email') + '</label><input id="editEmail" value="' + esc(a.email||'') + '"></div>' +
            '<div class="field"><label>' + t('pls_exp') + '</label><select id="editExpansion">' + [0,1,2,3,4,5,6,7,8,9,10,11].map(function(e) { return '<option value="' + e + '"' + (a.expansion === e ? ' selected' : '') + '>' + e + '</option>'; }).join('') + '</select></div>' +
            '<div class="field"><label>' + t('locked') + '</label><label class="toggle-switch"><input type="checkbox" id="editLocked"' + (a.locked ? ' checked' : '') + '><span class="toggle-slider"></span></label></div>' +
            '<div class="field"><label>' + t('mute_dur') + '</label><input type="number" id="editMute" value="' + (a.mutetime||0) + '"></div>' +
            '<div class="field"><label>' + t('mute_reason') + '</label><input id="editMuteReason" value="' + esc(a.mutereason||'') + '"></div>' +
            '<div class="modal-actions"><button class="btn btn-primary" onclick="saveAccountEdit(' + id + ')">' + t('set_save') + '</button><button class="btn btn-secondary" onclick="closeModal()">' + t('set_reset') + '</button></div></div>');
    });
}

function saveAccountEdit(id) {
    post('/api/accounts/edit', { id: id, email: document.getElementById('editEmail').value, expansion: document.getElementById('editExpansion').value, locked: document.getElementById('editLocked').checked, mutetime: document.getElementById('editMute').value, mutereason: document.getElementById('editMuteReason').value }, function(d) { if (d.success) { closeModal(); loadAccounts(); } });
}

function banAccountModal(id) {
    openModal(t('ban_title') + ' Account #' + id,
        '<div class="modal-form">' +
        '<div class="field"><label>' + t('reason') + '</label><input id="banReason"></div>' +
        '<div class="field"><label>' + t('duration') + '</label><input type="number" id="banDuration" value="0"></div>' +
        '<div class="modal-actions"><button class="btn btn-danger" onclick="banAccountConfirm(' + id + ')">' + t('pls_ban') + '</button><button class="btn btn-secondary" onclick="closeModal()">' + t('set_reset') + '</button></div></div>');
}

function banAccountConfirm(id) { post('/api/accounts/ban', { id: id, reason: document.getElementById('banReason').value, duration: document.getElementById('banDuration').value }, function(d) { if (d.success) { closeModal(); loadAccounts(); } }); }

function deleteAccountModal(id) {
    openModal(t('delete_title') + ' Account #' + id,
        '<div class="modal-form"><p style="color:var(--accent-danger);margin-bottom:16px;">' + t('confirm_delete') + '</p>' +
        '<label class="modal-checkbox"><input type="checkbox" id="deleteAccountChars" checked><span>' + t('confirm_delete_chars') + '</span></label>' +
        '<p class="modal-hint">' + t('confirm_delete_hint') + '</p>' +
        '<div class="modal-actions"><button class="btn btn-danger" onclick="deleteAccountConfirm(' + id + ')">' + t('pls_delete') + '</button><button class="btn btn-secondary" onclick="closeModal()">' + t('set_reset') + '</button></div></div>');
}

function deleteAccountConfirm(id) { post('/api/accounts/delete', { id: id, deleteChars: document.getElementById('deleteAccountChars').checked }, function(d) { if (d.success) { closeModal(); loadAccounts(); } }); }

/* ========== CHARACTER ACTIONS ========== */
function editCharacter(guid) {
    get('/api/characters/' + guid, function(d) {
        if (!d.success) return notify(d.message, false);
        var c = d.character;
        openModal(t('edit_title') + ' Character #' + guid,
            '<div class="modal-form">' +
            '<div class="field"><label>' + t('pls_username') + '</label><input id="editCharName" value="' + esc(c.name) + '"></div>' +
            '<div class="field"><label>' + t('pls_level') + '</label><input type="number" id="editCharLevel" value="' + c.level + '" min="1" max="80"></div>' +
            '<div class="field"><label>' + t('pls_race') + '</label><select id="editCharRace">' + Object.entries(RACE_NAMES).map(function(e) { return '<option value="' + e[0] + '"' + (c.race == e[0] ? ' selected' : '') + '>' + e[1] + '</option>'; }).join('') + '</select></div>' +
            '<div class="field"><label>' + t('pls_class') + '</label><select id="editCharClass">' + Object.entries(CLASS_NAMES).map(function(e) { return '<option value="' + e[0] + '"' + (c.class == e[0] ? ' selected' : '') + '>' + e[1] + '</option>'; }).join('') + '</select></div>' +
            '<div class="field"><label>' + t('gold') + '</label><input type="number" id="editCharMoney" value="' + (c.money||0) + '"></div>' +
            '<div class="modal-actions"><button class="btn btn-primary" onclick="saveCharEdit(' + guid + ')">' + t('set_save') + '</button><button class="btn btn-secondary" onclick="closeModal()">' + t('set_reset') + '</button></div></div>');
    });
}

function saveCharEdit(guid) { post('/api/characters/edit', { guid: guid, name: document.getElementById('editCharName').value, level: document.getElementById('editCharLevel').value, race: document.getElementById('editCharRace').value, class: document.getElementById('editCharClass').value, money: document.getElementById('editCharMoney').value }, function(d) { if (d.success) { closeModal(); loadCharacters(); } }); }

/* ========== BACKUPS ========== */
function loadBackups() {
    get('/api/backups', function(d) {
        var el = document.getElementById('backupsList');
        if (!d.success || !d.backups || !d.backups.length) { el.innerHTML = '<div class="empty-state"><p>' + t('bak_no') + '</p></div>'; return; }
        el.innerHTML = d.backups.map(function(b) { return '<div class="card"><div class="card-body"><h4>' + esc(b.name) + '</h4><span style="color:var(--text-muted);font-size:0.85rem;">' + new Date(b.created).toLocaleString() + ' | ' + b.files + ' files | ' + (b.size / 1024).toFixed(1) + ' KB</span></div></div>'; }).join('');
    });
}

function createBackup() { post('/api/backup', {}); }

/* ========== RIGHTS ========== */
function switchRightsTab(tab) {
    document.querySelectorAll('#rightsTabs .tab').forEach(function(t) { t.classList.toggle('active', t.dataset.tab === tab); });
    document.querySelectorAll('.rights-tab').forEach(function(p) { p.classList.remove('active'); });
    var el = document.getElementById('tab-' + tab);
    if (el) el.classList.add('active');
    if (tab === 'rights-list') loadRights(); else loadRightsAssign();
}

function searchRights() { rightsSearchQuery = document.getElementById('rightsSearch').value; loadRights(); }

function loadRights() {
    get('/api/rights/accounts?page=' + rightsPage + '&limit=50&search=' + encodeURIComponent(rightsSearchQuery), function(d) {
        var el = document.getElementById('rightsList');
        if (!d.success || !d.accounts || !d.accounts.length) { el.innerHTML = '<div class="empty-state"><p>' + t('pls_no_acc') + '</p></div>'; return; }
        var levels = d.securityLevels || {};
        el.innerHTML = '<table><thead><tr><th>ID</th><th>' + t('pls_username') + '</th><th>' + t('rgt_level') + '</th><th>' + t('pls_online') + '</th><th>' + t('rgt_action') + '</th></tr></thead><tbody>' +
            d.accounts.map(function(a) { var l = a.secLevel || 0; var lc = l===3?'rights-admin':l===2?'rights-gm':l===1?'rights-mod':'rights-player'; return '<tr><td>' + a.id + '</td><td><strong>' + esc(a.username) + '</strong></td><td><span class="rights-badge ' + lc + '">' + l + ' - ' + (levels[l]||'Level '+l) + '</span></td><td>' + (a.online ? '<span class="badge badge-online">' + t('pls_online') + '</span>' : '') + '</td><td><select class="rights-level-select" onchange="changeRights(' + a.id + ')" id="rl' + a.id + '"><option value="0"' + (l===0?' selected':'') + '>' + t('rgt_player') + ' (0)</option><option value="1"' + (l===1?' selected':'') + '>' + t('rgt_mod') + ' (1)</option><option value="2"' + (l===2?' selected':'') + '>' + t('rgt_gm') + ' (2)</option><option value="3"' + (l===3?' selected':'') + '>' + t('rgt_admin') + ' (3)</option></select></td></tr>'; }).join('') + '</tbody></table>';
    });
}

function loadRightsAssign() {
    get('/api/rights/accounts?limit=999', function(d) {
        var sel = document.getElementById('rightsAccountSelect');
        if (!sel) return;
        sel.innerHTML = '<option value="">...</option>';
        if (d.accounts) d.accounts.forEach(function(a) { sel.innerHTML += '<option value="' + a.id + '">' + esc(a.username) + ' (ID: ' + a.id + ')</option>'; });
    });
}

function changeRights(id) { post('/api/rights/set', { accountId: id, securityLevel: document.getElementById('rl' + id).value }); }
function assignRights() { var a = document.getElementById('rightsAccountSelect'); var l = document.getElementById('rightsLevelSelect'); if (a && a.value) post('/api/rights/set', { accountId: parseInt(a.value), securityLevel: parseInt(l.value) }); }

/* ========== SETTINGS ========== */
function loadSettingsData() {
    get('/api/settings', function(d) {
        if (!d.success || !d.settings) return;
        var s = d.settings;
        var set = function(id, val) { var el = document.getElementById(id); if (el) el.value = val || ''; };
        var setc = function(id, val) { var el = document.getElementById(id); if (el) el.checked = val; };
        set('setting-acServerPath', s.acServerPath);
        set('setting-worldserverExe', s.worldserverExe);
        set('setting-bnetserverExe', s.bnetserverExe);
        set('setting-worldserverConf', s.worldserverConf);
        set('setting-bnetserverConf', s.bnetserverConf);
        set('setting-logsDir', s.logsDir);
        set('setting-backupDir', s.backupDir);
        set('setting-port', s.port);
        setc('setting-minimizeToTray', s.minimizeToTray !== false);
        setc('setting-openBrowserOnStart', s.openBrowserOnStart === true);
    });
}

function saveSettings() {
    var g = function(id) { var el = document.getElementById(id); return el ? el.value : ''; };
    put('/api/settings', {
        acServerPath: g('setting-acServerPath'), worldserverExe: g('setting-worldserverExe'), bnetserverExe: g('setting-bnetserverExe'),
        worldserverConf: g('setting-worldserverConf'), bnetserverConf: g('setting-bnetserverConf'),
        logsDir: g('setting-logsDir'), backupDir: g('setting-backupDir'), port: parseInt(g('setting-port')) || 3000,
        minimizeToTray: document.getElementById('setting-minimizeToTray').checked, openBrowserOnStart: document.getElementById('setting-openBrowserOnStart').checked
    });
}

function testPaths() { post('/api/settings/test-path', { filePath: document.getElementById('setting-acServerPath').value }, function(d) { var el = document.getElementById('pathTestResult'); if (el) { el.className = 'path-test-result show ' + (d.exists ? 'success' : 'error'); el.textContent = d.exists ? 'OK: ' + d.path : 'NOT FOUND: ' + d.path; } }); }

function browseFolder(id) { post('/api/settings/browse', {}, function(d) { if (d.success && d.path) { var el = document.getElementById(id); if (el) el.value = d.path; } }); }

/* ========== UTILS ========== */
function esc(s) { var d = document.createElement('div'); d.textContent = s || ''; return d.innerHTML; }

function openModal(title, content) {
    var existing = document.getElementById('modalOverlay');
    if (existing) existing.remove();
    var overlay = document.createElement('div');
    overlay.id = 'modalOverlay';
    overlay.className = 'modal-overlay show';
    overlay.onclick = function(e) { if (e.target === overlay) closeModal(); };
    overlay.innerHTML = '<div class="modal"><div class="modal-header"><h3>' + title + '</h3><button class="modal-close" onclick="closeModal()">&times;</button></div><div class="modal-body">' + content + '</div></div>';
    document.body.appendChild(overlay);
}

function closeModal() { var el = document.getElementById('modalOverlay'); if (el) el.remove(); }
