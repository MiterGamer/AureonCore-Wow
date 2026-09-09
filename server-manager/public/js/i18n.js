const I18N = {
  de: {
    nav_dashboard:'Dashboard',nav_server:'Server',nav_setup:'Server einrichten',nav_config:'Konfiguration',nav_logs:'Logs',nav_players:'Spieler',nav_backups:'Backups',nav_rights:'Rechte',nav_settings:'Einstellungen',nav_logout:'Abmelden',
    dash_status:'Server Status',dash_resources:'Systemressourcen',dash_actions:'Schnellaktionen',dash_cpu:'CPU',dash_mem:'Speicher',dash_load:'System Load',dash_servers:'Alle Server',dash_addserver:'Server hinzufügen',dash_open:'Öffnen',dash_console:'Konsole',
    dash_wstart:'World Start',dash_wstop:'World Stop',dash_astart:'Auth Start',dash_astop:'Auth Stop',dash_backup:'Backup',dash_cleanup:'Cleanup',dash_uptime:'Uptime:',dash_online:'Online',dash_offline:'Offline',
    srv_world:'Worldserver Steuerung',srv_auth:'BNet Server Steuerung',srv_status:'Status:',srv_start:'Starten',srv_stop:'Stoppen',srv_restart:'Neustart',srv_pid:'PID:',srv_mem:'Speicher:',
    con_world:'Worldserver Konsole',con_auth:'BNet Server Konsole',con_clear:'Leeren',con_phw:'Befehl an Worldserver...',con_pha:'Befehl an BNet Server...',con_send:'Senden',con_popup:'Konsole öffnen',con_close:'Schließen',
    cfg_title:'Konfigurationsdatei',cfg_save:'Speichern',cfg_reload:'Neu laden',
    log_title:'Log Dateien',log_select:'Log auswählen...',log_load:'Laden',log_refresh:'Aktualisieren',
    pls_online:'Online',pls_accounts:'Accounts',pls_chars:'Characters',pls_search:'Suchen...',pls_refresh:'Aktualisieren',
    pls_edit:'Bearbeiten',pls_ban:'Bannen',pls_unban:'Entbannen',pls_kick:'Kick',pls_delete:'Löschen',pls_restore:'Wiederherstellen',pls_actions:'Aktionen',
    pls_level:'Level',pls_class:'Class',pls_race:'Race',pls_account:'Account',pls_username:'Username',pls_email:'Email',pls_exp:'Expansion',pls_created:'Erstellt',pls_login:'Login',pls_guid:'GUID',pls_status:'Status',
    pls_no_acc:'Keine Accounts',pls_no_chars:'Keine Charaktere',pls_no_online:'Keine Spieler online',
    rgt_title:'Rechte-Manager',rgt_all:'Alle Rechte',rgt_assign:'Rechte vergeben',rgt_search:'Suchen...',rgt_level:'Level',rgt_action:'Aktion',
    rgt_select_acc:'Account wählen',rgt_select_lvl:'Sicherheitslevel',rgt_save:'Speichern',
    rgt_explain:'Sicherheitslevel-Erklärung',rgt_admin:'Administrator',rgt_gm:'Gamemaster',rgt_mod:'Moderator',rgt_player:'Spieler',
    rgt_admindesc:'Admin-Rechte, kann andere GMs verwalten',rgt_gmdesc:'Volle GM-Rechte, alle Befehle',rgt_moddesc:'Chat-Moderation, einige GM-Befehle',rgt_playerdesc:'Keine GM-Rechte',
    set_title:'Einstellungen',set_save:'Speichern',set_reset:'Zurücksetzen',set_paths:'Server Pfade',set_acpath:'AC Server Pfad',set_acdesc:'Hauptverzeichnis des AC Servers',srv_profiles:'Serverprofile',srv_name:'Name',srv_connection:'Verbindung',srv_local:'Lokal',srv_ssh:'SSH',srv_host:'Host',srv_sshport:'SSH Port',srv_user:'Benutzer',srv_privatekey:'Private-Key-Pfad',srv_path:'AC Server Pfad',srv_worldexe:'Worldserver',srv_bnetexe:'BNetserver',srv_saveprofile:'Profil speichern',srv_deleteprofile:'Profil löschen',srv_ssh_suffix:' (SSH)',srv_delete_confirm:'Serverprofil löschen?',
    set_files:'Dateinamen',set_folders:'Ordner',set_options:'Server Optionen',set_port:'Web Port',set_portdesc:'Port für die Weboberfläche',
    set_tray:'In Taskleiste minimieren',set_traydesc:'Im System Tray minimieren',set_browser:'Browser beim Start öffnen',set_browserdesc:'Automatisch öffnen',
    set_test:'Pfade überprüfen',set_testbtn:'Pfade testen',set_saved:'Gespeichert!',
    bak_title:'Backup Verwaltung',bak_new:'Neues Backup',bak_no:'Keine Backups vorhanden',
    auth_connected:'Verbunden',auth_disconnected:'Getrennt',auth_setup:'Ersteinrichtung erforderlich',auth_setupdesc:'AC Server Pfad konfigurieren',auth_open:'Einstellungen öffnen',
    locked:'Gesperrt',mute_dur:'Mute Dauer (Min, 0=aufheben)',mute_reason:'Mute Grund',reason:'Grund',duration:'Dauer (Tage, 0=permanent)',
    confirm_delete:'Wirklich löschen?',confirm_delete_chars:'Zugehörige Charaktere ebenfalls löschen',confirm_delete_hint:'Wenn deaktiviert: werden zur Löschung markiert',
    ban_title:'Bannen',edit_title:'Bearbeiten',delete_title:'Löschen',
    username:'Username',email:'Email',gold:'Gold'
  },
  en: {
    nav_dashboard:'Dashboard',nav_server:'Server',nav_setup:'Server Setup',nav_config:'Configuration',nav_logs:'Logs',nav_players:'Players',nav_backups:'Backups',nav_rights:'Rights',nav_settings:'Settings',nav_logout:'Logout',
    dash_status:'Server Status',dash_resources:'System Resources',dash_actions:'Quick Actions',dash_cpu:'CPU',dash_mem:'Memory',dash_load:'System Load',dash_servers:'All Servers',dash_addserver:'Add Server',dash_open:'Open',dash_console:'Console',
    dash_wstart:'World Start',dash_wstop:'World Stop',dash_astart:'Auth Start',dash_astop:'Auth Stop',dash_backup:'Backup',dash_cleanup:'Cleanup',dash_uptime:'Uptime:',dash_online:'Online',dash_offline:'Offline',
    srv_world:'Worldserver Control',srv_auth:'BNet Server Control',srv_status:'Status:',srv_start:'Start',srv_stop:'Stop',srv_restart:'Restart',srv_pid:'PID:',srv_mem:'Memory:',
    con_world:'Worldserver Console',con_auth:'BNet Server Console',con_clear:'Clear',con_phw:'Command to worldserver...',con_pha:'Command to BNet server...',con_send:'Send',con_popup:'Open console',con_close:'Close',
    cfg_title:'Configuration File',cfg_save:'Save',cfg_reload:'Reload',
    log_title:'Log Files',log_select:'Select log...',log_load:'Load',log_refresh:'Refresh',
    pls_online:'Online',pls_accounts:'Accounts',pls_chars:'Characters',pls_search:'Search...',pls_refresh:'Refresh',
    pls_edit:'Edit',pls_ban:'Ban',pls_unban:'Unban',pls_kick:'Kick',pls_delete:'Delete',pls_restore:'Restore',pls_actions:'Actions',
    pls_level:'Level',pls_class:'Class',pls_race:'Race',pls_account:'Account',pls_username:'Username',pls_email:'Email',pls_exp:'Expansion',pls_created:'Created',pls_login:'Login',pls_guid:'GUID',pls_status:'Status',
    pls_no_acc:'No accounts',pls_no_chars:'No characters',pls_no_online:'No players online',
    rgt_title:'Rights Manager',rgt_all:'All Rights',rgt_assign:'Assign Rights',rgt_search:'Search...',rgt_level:'Level',rgt_action:'Action',
    rgt_select_acc:'Select account',rgt_select_lvl:'Security level',rgt_save:'Save',
    rgt_explain:'Security Level Explanation',rgt_admin:'Administrator',rgt_gm:'Gamemaster',rgt_mod:'Moderator',rgt_player:'Player',
    rgt_admindesc:'Admin rights, can manage other GMs',rgt_gmdesc:'Full GM rights, all commands',rgt_moddesc:'Chat moderation, some GM commands',rgt_playerdesc:'No GM rights',
    set_title:'Settings',set_save:'Save',set_reset:'Reset',set_paths:'Server Paths',set_acpath:'AC Server Path',set_acdesc:'Main directory of the AC server',srv_profiles:'Server Profiles',srv_name:'Name',srv_connection:'Connection',srv_local:'Local',srv_ssh:'SSH',srv_host:'Host',srv_sshport:'SSH Port',srv_user:'Username',srv_privatekey:'Private Key Path',srv_path:'AC Server Path',srv_worldexe:'Worldserver',srv_bnetexe:'BNetserver',srv_saveprofile:'Save Profile',srv_deleteprofile:'Delete Profile',srv_ssh_suffix:' (SSH)',srv_delete_confirm:'Delete server profile?',
    set_files:'Filenames',set_folders:'Folders',set_options:'Server Options',set_port:'Web Port',set_portdesc:'Port for web interface',
    set_tray:'Minimize to tray',set_traydesc:'Minimize to system tray',set_browser:'Open browser on start',set_browserdesc:'Automatically open browser',
    set_test:'Path Verification',set_testbtn:'Test Paths',set_saved:'Saved!',
    bak_title:'Backup Management',bak_new:'New Backup',bak_no:'No backups available',
    auth_connected:'Connected',auth_disconnected:'Disconnected',auth_setup:'Setup Required',auth_setupdesc:'Configure AC server path',auth_open:'Open Settings',
    locked:'Locked',mute_dur:'Mute Duration (min, 0=unmute)',mute_reason:'Mute Reason',reason:'Reason',duration:'Duration (days, 0=permanent)',
    confirm_delete:'Delete this account?',confirm_delete_chars:'Delete related characters too',confirm_delete_hint:'If unchecked: characters will be soft-deleted',
    ban_title:'Ban',edit_title:'Edit',delete_title:'Delete',
    username:'Username',email:'Email',gold:'Gold'
  },
  tr: {
    nav_dashboard:'Panel',nav_server:'Sunucu',nav_setup:'Sunucu kurulumu',nav_config:'Yapılandırma',nav_logs:'Kayıtlar',nav_players:'Oyuncular',nav_backups:'Yedekler',nav_rights:'Yetkiler',nav_settings:'Ayarlar',nav_logout:'Çıkış',
    dash_status:'Sunucu Durumu',dash_resources:'Sistem Kaynakları',dash_actions:'Hızlı İşlemler',dash_cpu:'CPU',dash_mem:'Bellek',dash_load:'Sistem Yükü',dash_servers:'Tüm sunucular',dash_addserver:'Sunucu ekle',dash_open:'Aç',dash_console:'Konsol',
    dash_wstart:'World Başlat',dash_wstop:'World Durdur',dash_astart:'Auth Başlat',dash_astop:'Auth Durdur',dash_backup:'Yedekle',dash_cleanup:'Temizle',dash_uptime:'Süre:',dash_online:'Çevrimiçi',dash_offline:'Çevrimdışı',
    srv_world:'Worldserver Kontrol',srv_auth:'BNet Sunucu Kontrol',srv_status:'Durum:',srv_start:'Başlat',srv_stop:'Durdur',srv_restart:'Yeniden Başlat',srv_pid:'PID:',srv_mem:'Bellek:',
    con_world:'Worldserver Konsolu',con_auth:'BNet Sunucu Konsolu',con_clear:'Temizle',con_phw:'Worldserver komutu...',con_pha:'BNet sunucu komutu...',con_send:'Gönder',con_popup:'Konsolu aç',con_close:'Kapat',
    cfg_title:'Yapılandırma',cfg_save:'Kaydet',cfg_reload:'Yenile',
    log_title:'Kayıt Dosyaları',log_select:'Kayıt seç...',log_load:'Yükle',log_refresh:'Yenile',
    pls_online:'Çevrimiçi',pls_accounts:'Hesaplar',pls_chars:'Karakterler',pls_search:'Ara...',pls_refresh:'Yenile',
    pls_edit:'Düzenle',pls_ban:'Yasakla',pls_unban:'Yasağı Kaldır',pls_kick:'At',pls_delete:'Sil',pls_restore:'Geri Yükle',pls_actions:'İşlemler',
    pls_level:'Seviye',pls_class:'Sınıf',pls_race:'Irk',pls_account:'Hesap',pls_username:'Kullanıcı',pls_email:'E-posta',pls_exp:'Genişleme',pls_created:'Oluşturuldu',pls_login:'Giriş',pls_guid:'GUID',pls_status:'Durum',
    pls_no_acc:'Hesap yok',pls_no_chars:'Karakter yok',pls_no_online:'Oyuncu yok',
    rgt_title:'Yetki Yöneticisi',rgt_all:'Tüm Yetkiler',rgt_assign:'Yetki Ver',rgt_search:'Ara...',rgt_level:'Seviye',rgt_action:'İşlem',
    rgt_select_acc:'Hesap seç',rgt_select_lvl:'Güvenlik seviyesi',rgt_save:'Kaydet',
    rgt_explain:'Güvenlik Seviyesi',rgt_admin:'Admin',rgt_gm:'Gamemaster',rgt_mod:'Moderatör',rgt_player:'Oyuncu',
    rgt_admindesc:'Admin yetkisi',rgt_gmdesc:'Tam GM yetkisi',rgt_moddesc:'Sohbet moderasyonu',rgt_playerdesc:'GM yetkisi yok',
    set_title:'Ayarlar',set_save:'Kaydet',set_reset:'Sıfırla',set_paths:'Sunucu Yolları',set_acpath:'AC Sunucu Yolu',set_acdesc:'AC sunucusunun ana dizini',srv_profiles:'Sunucu Profilleri',srv_name:'Ad',srv_connection:'Bağlantı',srv_local:'Yerel',srv_ssh:'SSH',srv_host:'Ana bilgisayar',srv_sshport:'SSH Portu',srv_user:'Kullanıcı',srv_privatekey:'Özel Anahtar Yolu',srv_path:'AC Sunucu Yolu',srv_worldexe:'Worldserver',srv_bnetexe:'BNetserver',srv_saveprofile:'Profili Kaydet',srv_deleteprofile:'Profili Sil',srv_ssh_suffix:' (SSH)',srv_delete_confirm:'Sunucu profili silinsin mi?',
    set_files:'Dosya Adları',set_folders:'Klasörler',set_options:'Sunucu Seçenekleri',set_port:'Web Portu',set_portdesc:'Web arayüzü portu',
    set_tray:'Sistem tepsisine küçült',set_traydesc:'Kapatmak yerine tepsiye küçült',set_browser:'Başlangıçta tarayıcı aç',set_browserdesc:'Tarayıcıyı otomatik aç',
    set_test:'Yol Doğrulama',set_testbtn:'Test Et',set_saved:'Kaydedildi!',
    bak_title:'Yedekleme',bak_new:'Yeni Yedekleme',bak_no:'Yedekleme yok',
    auth_connected:'Bağlı',auth_disconnected:'Bağlantı Kesildi',auth_setup:'Kurulum Gerekli',auth_setupdesc:'AC sunucu yolunu yapılandırın',auth_open:'Ayarları Aç',
    locked:'Kilitli',mute_dur:'Susturma Süresi (dk, 0=kaldır)',mute_reason:'Susturma Nedeni',reason:'Neden',duration:'Süre (gün, 0=kalıcı)',
    confirm_delete:'Hesabı sil?',confirm_delete_chars:'İlgili karakterleri de sil',confirm_delete_hint:'Deaktivasyonda: karakterler silinmeye işaretlenir',
    ban_title:'Yasakla',edit_title:'Düzenle',delete_title:'Sil',
    username:'Kullanıcı',email:'E-posta',gold:'Altın'
  },
  fr: {
    nav_dashboard:'Tableau de bord',nav_server:'Serveur',nav_setup:'Configuration serveur',nav_config:'Configuration',nav_logs:'Journaux',nav_players:'Joueurs',nav_backups:'Sauvegardes',nav_rights:'Droits',nav_settings:'Paramètres',nav_logout:'Déconnexion',
    dash_status:'État du serveur',dash_resources:'Ressources',dash_actions:'Actions rapides',dash_cpu:'CPU',dash_mem:'Mémoire',dash_load:'Charge',dash_servers:'Tous les serveurs',dash_addserver:'Ajouter un serveur',dash_open:'Ouvrir',dash_console:'Console',
    dash_wstart:'Démarrer World',dash_wstop:'Arrêter World',dash_astart:'Démarrer Auth',dash_astop:'Arrêter Auth',dash_backup:'Sauvegarde',dash_cleanup:'Nettoyage',dash_uptime:'Temps:',dash_online:'En ligne',dash_offline:'Hors ligne',
    srv_world:'Contrôle Worldserver',srv_auth:'Contrôle BNet Server',srv_status:'État:',srv_start:'Démarrer',srv_stop:'Arrêter',srv_restart:'Redémarrer',srv_pid:'PID:',srv_mem:'Mémoire:',
    con_world:'Console Worldserver',con_auth:'Console BNet Server',con_clear:'Effacer',con_phw:'Commande worldserver...',con_pha:'Commande BNet...',con_send:'Envoyer',
    cfg_title:'Fichier configuration',cfg_save:'Enregistrer',cfg_reload:'Recharger',
    log_title:'Fichiers journal',log_select:'Sélectionner...',log_load:'Charger',log_refresh:'Actualiser',
    pls_online:'En ligne',pls_accounts:'Comptes',pls_chars:'Personnages',pls_search:'Rechercher...',pls_refresh:'Actualiser',
    pls_edit:'Modifier',pls_ban:'Bannir',pls_unban:'Débannir',pls_kick:'Expulser',pls_delete:'Supprimer',pls_restore:'Restaurer',pls_actions:'Actions',
    pls_level:'Niveau',pls_class:'Classe',pls_race:'Race',pls_account:'Compte',pls_username:'Utilisateur',pls_email:'Email',pls_exp:'Extension',pls_created:'Créé',pls_login:'Connexion',pls_guid:'GUID',pls_status:'État',
    pls_no_acc:'Aucun compte',pls_no_chars:'Aucun personnage',pls_no_online:'Aucun joueur en ligne',
    rgt_title:'Gestion des droits',rgt_all:'Tous les droits',rgt_assign:'Attribuer',rgt_search:'Rechercher...',rgt_level:'Niveau',rgt_action:'Action',
    rgt_select_acc:'Sélectionner compte',rgt_select_lvl:'Niveau sécurité',rgt_save:'Enregistrer',
    rgt_explain:'Niveaux de sécurité',rgt_admin:'Administrateur',rgt_gm:'Maître de jeu',rgt_mod:'Modérateur',rgt_player:'Joueur',
    rgt_admindesc:'Droits admin complets',rgt_gmdesc:'Droits MJ complets',rgt_moddesc:'Modération du chat',rgt_playerdesc:'Pas de droits MJ',
    set_title:'Paramètres',set_save:'Enregistrer',set_reset:'Réinitialiser',set_paths:'Chemins serveur',set_acpath:'Chemin serveur AC',set_acdesc:'Répertoire principal du serveur',srv_profiles:'Profils serveur',srv_name:'Nom',srv_connection:'Connexion',srv_local:'Local',srv_ssh:'SSH',srv_host:'Hôte',srv_sshport:'Port SSH',srv_user:'Utilisateur',srv_privatekey:'Chemin de clé privée',srv_path:'Chemin serveur AC',srv_worldexe:'Worldserver',srv_bnetexe:'BNetserver',srv_saveprofile:'Enregistrer le profil',srv_deleteprofile:'Supprimer le profil',srv_ssh_suffix:' (SSH)',srv_delete_confirm:'Supprimer le profil serveur ?',
    set_files:'Noms de fichiers',set_folders:'Dossiers',set_options:'Options serveur',set_port:'Port web',set_portdesc:'Port de l\'interface web',
    set_tray:'Minimiser dans la barre',set_traydesc:'Minimiser au lieu de fermer',set_browser:'Ouvrir navigateur au démarrage',set_browserdesc:'Ouvrir automatiquement',
    set_test:'Vérification chemins',set_testbtn:'Tester',set_saved:'Enregistré!',
    bak_title:'Sauvegardes',bak_new:'Nouvelle sauvegarde',bak_no:'Aucune sauvegarde',
    auth_connected:'Connecté',auth_disconnected:'Déconnecté',auth_setup:'Configuration requise',auth_setupdesc:'Configurer le chemin du serveur',auth_open:'Ouvrir paramètres',
    locked:'Verrouillé',mute_dur:'Durée mute (min, 0=démuter)',mute_reason:'Raison du mute',reason:'Raison',duration:'Durée (jours, 0=permanent)',
    confirm_delete:'Supprimer ce compte?',confirm_delete_chars:'Supprimer les personnages associés',confirm_delete_hint:'Sinon: personnages soft-supprimés',
    ban_title:'Bannir',edit_title:'Modifier',delete_title:'Supprimer',
    username:'Utilisateur',email:'Email',gold:'Or'
  },
  es: {
    nav_dashboard:'Panel',nav_server:'Servidor',nav_setup:'Configurar servidor',nav_config:'Configuración',nav_logs:'Registros',nav_players:'Jugadores',nav_backups:'Copias',nav_rights:'Permisos',nav_settings:'Ajustes',nav_logout:'Salir',
    dash_status:'Estado del servidor',dash_resources:'Recursos',dash_actions:'Acciones rápidas',dash_cpu:'CPU',dash_mem:'Memoria',dash_load:'Carga',dash_servers:'Todos los servidores',dash_addserver:'Añadir servidor',dash_open:'Abrir',dash_console:'Consola',
    dash_wstart:'Iniciar World',dash_wstop:'Detener World',dash_astart:'Iniciar Auth',dash_astop:'Detener Auth',dash_backup:'Copia',dash_cleanup:'Limpieza',dash_uptime:'Tiempo:',dash_online:'En línea',dash_offline:'Sin conexión',
    srv_world:'Control Worldserver',srv_auth:'Control BNet Server',srv_status:'Estado:',srv_start:'Iniciar',srv_stop:'Detener',srv_restart:'Reiniciar',srv_pid:'PID:',srv_mem:'Memoria:',
    con_world:'Consola Worldserver',con_auth:'Consola BNet Server',con_clear:'Limpiar',con_phw:'Comando worldserver...',con_pha:'Comando BNet...',con_send:'Enviar',
    cfg_title:'Configuración',cfg_save:'Guardar',cfg_reload:'Recargar',
    log_title:'Registros',log_select:'Seleccionar...',log_load:'Cargar',log_refresh:'Actualizar',
    pls_online:'En línea',pls_accounts:'Cuentas',pls_chars:'Personajes',pls_search:'Buscar...',pls_refresh:'Actualizar',
    pls_edit:'Editar',pls_ban:'Banear',pls_unban:'Desbanear',pls_kick:'Expulsar',pls_delete:'Eliminar',pls_restore:'Restaurar',pls_actions:'Acciones',
    pls_level:'Nivel',pls_class:'Clase',pls_race:'Raza',pls_account:'Cuenta',pls_username:'Usuario',pls_email:'Email',pls_exp:'Expansión',pls_created:'Creado',pls_login:'Último login',pls_guid:'GUID',pls_status:'Estado',
    pls_no_acc:'Sin cuentas',pls_no_chars:'Sin personajes',pls_no_online:'Sin jugadores en línea',
    rgt_title:'Gestor de permisos',rgt_all:'Todos los permisos',rgt_assign:'Asignar permisos',rgt_search:'Buscar...',rgt_level:'Nivel',rgt_action:'Acción',
    rgt_select_acc:'Seleccionar cuenta',rgt_select_lvl:'Nivel de seguridad',rgt_save:'Guardar',
    rgt_explain:'Niveles de seguridad',rgt_admin:'Administrador',rgt_gm:'Gamemaster',rgt_mod:'Moderador',rgt_player:'Jugador',
    rgt_admindesc:'Permisos admin totales',rgt_gmdesc:'Permisos GM completos',rgt_moddesc:'Moderación de chat',rgt_playerdesc:'Sin permisos GM',
    set_title:'Ajustes',set_save:'Guardar',set_reset:'Restablecer',set_paths:'Rutas del servidor',set_acpath:'Ruta servidor AC',set_acdesc:'Directorio principal del servidor',srv_profiles:'Perfiles de servidor',srv_name:'Nombre',srv_connection:'Conexión',srv_local:'Local',srv_ssh:'SSH',srv_host:'Host',srv_sshport:'Puerto SSH',srv_user:'Usuario',srv_privatekey:'Ruta de clave privada',srv_path:'Ruta del servidor AC',srv_worldexe:'Worldserver',srv_bnetexe:'BNetserver',srv_saveprofile:'Guardar perfil',srv_deleteprofile:'Eliminar perfil',srv_ssh_suffix:' (SSH)',srv_delete_confirm:'¿Eliminar el perfil del servidor?',
    set_files:'Nombres de archivo',set_folders:'Carpetas',set_options:'Opciones del servidor',set_port:'Puerto web',set_portdesc:'Puerto de la interfaz web',
    set_tray:'Minimizar a bandeja',set_traydesc:'Minimizar en vez de cerrar',set_browser:'Abrir navegador al iniciar',set_browserdesc:'Abrir navegador automáticamente',
    set_test:'Verificar rutas',set_testbtn:'Probar rutas',set_saved:'¡Guardado!',
    bak_title:'Copias de seguridad',bak_new:'Nueva copia',bak_no:'Sin copias disponibles',
    auth_connected:'Conectado',auth_disconnected:'Desconectado',auth_setup:'Configuración requerida',auth_setupdesc:'Configura la ruta del servidor',auth_open:'Abrir ajustes',
    locked:'Bloqueado',mute_dur:'Duración mute (min, 0=desmutear)',mute_reason:'Razón del mute',reason:'Razón',duration:'Duración (días, 0=permanente)',
    confirm_delete:'¿Eliminar esta cuenta?',confirm_delete_chars:'Eliminar personajes relacionados',confirm_delete_hint:'Si no: personajes se marcan como eliminados',
    ban_title:'Banear',edit_title:'Editar',delete_title:'Eliminar',
    username:'Usuario',email:'Email',gold:'Oro'
  }
};

let currentLang = localStorage.getItem('ac-lang') || 'de';

function t(key) { return I18N[currentLang]?.[key] || I18N['de']?.[key] || key; }

function setLang(lang) {
  if (!I18N[lang]) return;
  currentLang = lang;
  localStorage.setItem('ac-lang', lang);
  document.querySelectorAll('[data-i18n]').forEach(function(el) {
    var v = t(el.getAttribute('data-i18n'));
    if (v) el.textContent = v;
  });
  document.querySelectorAll('[data-i18n-ph]').forEach(function(el) {
    el.placeholder = t(el.getAttribute('data-i18n-ph'));
  });
  var sel = document.getElementById('langSelect');
  if (sel) sel.value = lang;
  if (typeof window.loadServerProfiles === 'function') window.loadServerProfiles();
}
