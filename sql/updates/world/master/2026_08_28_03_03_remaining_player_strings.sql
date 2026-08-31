SET NAMES utf8mb4;

-- Copy Spanish EU -> MX where MX is still empty
UPDATE `trinity_string`
SET `content_loc7` = `content_loc6`
WHERE (`content_loc7` IS NULL OR `content_loc7` = '')
  AND `content_loc6` IS NOT NULL AND `content_loc6` <> '';

-- Player-facing leftovers (BG/Arena/IoC/tokens) for all 8 trinity_string locales
-- loc1 koKR, loc2 frFR, loc3 deDE, loc4 zhCN, loc5 zhTW, loc6 esES, loc7 esMX, loc8 ruRU

UPDATE `trinity_string` SET
 `content_loc1`='얼라이언스', `content_loc2`='Alliance', `content_loc3`='Allianz', `content_loc4`='联盟', `content_loc5`='聯盟', `content_loc6`='Alianza', `content_loc7`='Alianza', `content_loc8`='Альянс'
WHERE `entry` IN (650,1300);

UPDATE `trinity_string` SET
 `content_loc1`='호드', `content_loc2`='Horde', `content_loc3`='Horde', `content_loc4`='部落', `content_loc5`='部落', `content_loc6`='Horda', `content_loc7`='Horda', `content_loc8`='Орда'
WHERE `entry` IN (651,1301);

UPDATE `trinity_string` SET
 `content_loc1`='전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille commencera dans 2 minutes.',
 `content_loc3`='Die Schlacht beginnt in 2 Minuten.',
 `content_loc4`='战斗将在2分钟后开始。',
 `content_loc5`='戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla comenzará en 2 minutos.',
 `content_loc7`='La batalla comenzará en 2 minutos.',
 `content_loc8`='Битва начнётся через 2 минуты.'
WHERE `entry`=1205;

UPDATE `trinity_string` SET
 `content_loc1`='전투가 1분 후에 시작됩니다.',
 `content_loc2`='La bataille commencera dans 1 minute.',
 `content_loc3`='Die Schlacht beginnt in 1 Minute.',
 `content_loc4`='战斗将在1分钟后开始。',
 `content_loc5`='戰鬥將在1分鐘後開始。',
 `content_loc6`='La batalla comenzará en 1 minuto.',
 `content_loc7`='La batalla comenzará en 1 minuto.',
 `content_loc8`='Битва начнётся через 1 минуту.'
WHERE `entry`=1206;

UPDATE `trinity_string` SET
 `content_loc1`='전투가 30초 후에 시작됩니다!',
 `content_loc2`='La bataille commencera dans 30 secondes !',
 `content_loc3`='Die Schlacht beginnt in 30 Sekunden!',
 `content_loc4`='战斗将在30秒后开始！',
 `content_loc5`='戰鬥將在30秒後開始！',
 `content_loc6`='¡La batalla comenzará en 30 segundos!',
 `content_loc7`='¡La batalla comenzará en 30 segundos!',
 `content_loc8`='Битва начнётся через 30 секунд!'
WHERE `entry`=1207;

UPDATE `trinity_string` SET
 `content_loc1`='전투가 시작되었습니다!',
 `content_loc2`='La bataille a commencé !',
 `content_loc3`='Die Schlacht hat begonnen!',
 `content_loc4`='战斗开始了！',
 `content_loc5`='戰鬥開始了！',
 `content_loc6`='¡La batalla ha comenzado!',
 `content_loc7`='¡La batalla ha comenzado!',
 `content_loc8`='Битва началась!'
WHERE `entry`=1208;

UPDATE `trinity_string` SET
 `content_loc1`='알터랙 계곡 전투가 1분 후에 시작됩니다.',
 `content_loc2`='La bataille pour la vallée d’Alterac commence dans 1 minute.',
 `content_loc3`='Die Schlacht um das Alteractal beginnt in 1 Minute.',
 `content_loc4`='奥特兰克山谷的战斗将在1分钟后开始。',
 `content_loc5`='奧特蘭克山谷的戰鬥將在1分鐘後開始。',
 `content_loc6`='La batalla por el Valle de Alterac comienza en 1 minuto.',
 `content_loc7`='La batalla por el Valle de Alterac comienza en 1 minuto.',
 `content_loc8`='Битва за Альтеракскую долину начнётся через 1 минуту.'
WHERE `entry`=1326;

UPDATE `trinity_string` SET
 `content_loc1`='알터랙 계곡 전투가 30초 후에 시작됩니다. 준비하십시오!',
 `content_loc2`='La bataille pour la vallée d’Alterac commence dans 30 secondes. Préparez-vous !',
 `content_loc3`='Die Schlacht um das Alteractal beginnt in 30 Sekunden. Macht euch bereit!',
 `content_loc4`='奥特兰克山谷的战斗将在30秒后开始。做好准备！',
 `content_loc5`='奧特蘭克山谷的戰鬥將在30秒後開始。做好準備！',
 `content_loc6`='La batalla por el Valle de Alterac comienza en 30 segundos. ¡Preparaos!',
 `content_loc7`='La batalla por el Valle de Alterac comienza en 30 segundos. ¡Preparaos!',
 `content_loc8`='Битва за Альтеракскую долину начнётся через 30 секунд. Приготовьтесь!'
WHERE `entry`=1327;

UPDATE `trinity_string` SET
 `content_loc1`='알터랙 계곡 전투가 시작되었습니다!',
 `content_loc2`='La bataille pour la vallée d’Alterac a commencé !',
 `content_loc3`='Die Schlacht um das Alteractal hat begonnen!',
 `content_loc4`='奥特兰克山谷的战斗开始了！',
 `content_loc5`='奧特蘭克山谷的戰鬥開始了！',
 `content_loc6`='¡La batalla por el Valle de Alterac ha comenzado!',
 `content_loc7`='¡La batalla por el Valle de Alterac ha comenzado!',
 `content_loc8`='Битва за Альтеракскую долину началась!'
WHERE `entry`=1328;

UPDATE `trinity_string` SET
 `content_loc1`='알터랙 계곡 전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille pour la vallée d’Alterac commence dans 2 minutes.',
 `content_loc3`='Die Schlacht um das Alteractal beginnt in 2 Minuten.',
 `content_loc4`='奥特兰克山谷的战斗将在2分钟后开始。',
 `content_loc5`='奧特蘭克山谷的戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla por el Valle de Alterac comienza en 2 minutos.',
 `content_loc7`='La batalla por el Valle de Alterac comienza en 2 minutos.',
 `content_loc8`='Битва за Альтеракскую долину начнётся через 2 минуты.'
WHERE `entry`=1333;

UPDATE `trinity_string` SET
 `content_loc1`='전쟁노래 협곡 전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille pour le goulet des Chanteguerres commence dans 2 minutes.',
 `content_loc3`='Die Schlacht um die Kriegshymnenschlucht beginnt in 2 Minuten.',
 `content_loc4`='战歌峡谷的战斗将在2分钟后开始。',
 `content_loc5`='戰歌峽谷的戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla por la Garganta Grito de Guerra comienza en 2 minutos.',
 `content_loc7`='La batalla por la Garganta Grito de Guerra comienza en 2 minutos.',
 `content_loc8`='Битва за ущелье Песни Войны начнётся через 2 минуты.'
WHERE `entry`=753;

UPDATE `trinity_string` SET
 `content_loc1`='아라시 분지 전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille pour le bassin d’Arathi commence dans 2 minutes.',
 `content_loc3`='Die Schlacht um das Arathibecken beginnt in 2 Minuten.',
 `content_loc4`='阿拉希盆地的战斗将在2分钟后开始。',
 `content_loc5`='阿拉希盆地的戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla por la Cuenca de Arathi comienza en 2 minutos.',
 `content_loc7`='La batalla por la Cuenca de Arathi comienza en 2 minutos.',
 `content_loc8`='Битва за низину Арати начнётся через 2 минуты.'
WHERE `entry`=754;

UPDATE `trinity_string` SET
 `content_loc1`='폭풍의 눈 전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille pour l’Œil du cyclone commence dans 2 minutes.',
 `content_loc3`='Die Schlacht um das Auge des Sturms beginnt in 2 Minuten.',
 `content_loc4`='风暴之眼的战斗将在2分钟后开始。',
 `content_loc5`='風暴之眼的戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla por el Ojo de la Tormenta comienza en 2 minutos.',
 `content_loc7`='La batalla por el Ojo de la Tormenta comienza en 2 minutos.',
 `content_loc8`='Битва за Око Бури начнётся через 2 минуты.'
WHERE `entry`=755;

UPDATE `trinity_string` SET
 `content_loc1`='쌍둥이 봉우리 전투가 2분 후에 시작됩니다.',
 `content_loc2`='La bataille pour les pics Jumeaux commence dans 2 minutes.',
 `content_loc3`='Die Schlacht um die Zwillingsgipfel beginnt in 2 Minuten.',
 `content_loc4`='双子峰的战斗将在2分钟后开始。',
 `content_loc5`='雙子峰的戰鬥將在2分鐘後開始。',
 `content_loc6`='La batalla por Cumbres Gemelas comienza en 2 minutos.',
 `content_loc7`='La batalla por Cumbres Gemelas comienza en 2 minutos.',
 `content_loc8`='Битва за Два Пика начнётся через 2 минуты.'
WHERE `entry`=12000;

UPDATE `trinity_string` SET
 `content_loc1`='전쟁노래 협곡 전투를 시작하십시오!',
 `content_loc2`='Que la bataille pour le goulet des Chanteguerres commence !',
 `content_loc3`='Die Schlacht um die Kriegshymnenschlucht beginnt!',
 `content_loc4`='战歌峡谷的战斗开始了！',
 `content_loc5`='戰歌峽谷的戰鬥開始了！',
 `content_loc6`='¡Que comience la batalla por la Garganta Grito de Guerra!',
 `content_loc7`='¡Que comience la batalla por la Garganta Grito de Guerra!',
 `content_loc8`='Битва за ущелье Песни Войны началась!'
WHERE `entry`=604;

UPDATE `trinity_string` SET
 `content_loc1`='아라시 분지 전투가 1분 후에 시작됩니다.',
 `content_loc2`='La bataille pour le bassin d’Arathi commence dans 1 minute.',
 `content_loc3`='Die Schlacht um das Arathibecken beginnt in 1 Minute.',
 `content_loc4`='阿拉希盆地的战斗将在1分钟后开始。',
 `content_loc5`='阿拉希盆地的戰鬥將在1分鐘後開始。',
 `content_loc6`='La batalla por la Cuenca de Arathi comienza en 1 minuto.',
 `content_loc7`='La batalla por la Cuenca de Arathi comienza en 1 minuto.',
 `content_loc8`='Битва за низину Арати начнётся через 1 минуту.'
WHERE `entry`=661;

UPDATE `trinity_string` SET
 `content_loc1`='아라시 분지 전투가 30초 후에 시작됩니다. 준비하십시오!',
 `content_loc2`='La bataille pour le bassin d’Arathi commence dans 30 secondes. Préparez-vous !',
 `content_loc3`='Die Schlacht um das Arathibecken beginnt in 30 Sekunden. Macht euch bereit!',
 `content_loc4`='阿拉希盆地的战斗将在30秒后开始。做好准备！',
 `content_loc5`='阿拉希盆地的戰鬥將在30秒後開始。做好準備！',
 `content_loc6`='La batalla por la Cuenca de Arathi comienza en 30 segundos. ¡Preparaos!',
 `content_loc7`='La batalla por la Cuenca de Arathi comienza en 30 segundos. ¡Preparaos!',
 `content_loc8`='Битва за низину Арати начнётся через 30 секунд. Приготовьтесь!'
WHERE `entry`=662;

UPDATE `trinity_string` SET
 `content_loc1`='아라시 분지 전투가 시작되었습니다!',
 `content_loc2`='La bataille pour le bassin d’Arathi a commencé !',
 `content_loc3`='Die Schlacht um das Arathibecken hat begonnen!',
 `content_loc4`='阿拉希盆地的战斗开始了！',
 `content_loc5`='阿拉希盆地的戰鬥開始了！',
 `content_loc6`='¡La batalla por la Cuenca de Arathi ha comenzado!',
 `content_loc7`='¡La batalla por la Cuenca de Arathi ha comenzado!',
 `content_loc8`='Битва за низину Арати началась!'
WHERE `entry`=663;

UPDATE `trinity_string` SET
 `content_loc1`='폭풍의 눈 전투가 1분 후에 시작됩니다.',
 `content_loc2`='La bataille pour l’Œil du cyclone commence dans 1 minute.',
 `content_loc3`='Die Schlacht um das Auge des Sturms beginnt in 1 Minute.',
 `content_loc4`='风暴之眼的战斗将在1分钟后开始。',
 `content_loc5`='風暴之眼的戰鬥將在1分鐘後開始。',
 `content_loc6`='La batalla por el Ojo de la Tormenta comienza en 1 minuto.',
 `content_loc7`='La batalla por el Ojo de la Tormenta comienza en 1 minuto.',
 `content_loc8`='Битва за Око Бури начнётся через 1 минуту.'
WHERE `entry`=636;

UPDATE `trinity_string` SET
 `content_loc1`='폭풍의 눈 전투가 30초 후에 시작됩니다.',
 `content_loc2`='La bataille pour l’Œil du cyclone commence dans 30 secondes.',
 `content_loc3`='Die Schlacht um das Auge des Sturms beginnt in 30 Sekunden.',
 `content_loc4`='风暴之眼的战斗将在30秒后开始。',
 `content_loc5`='風暴之眼的戰鬥將在30秒後開始。',
 `content_loc6`='La batalla por el Ojo de la Tormenta comienza en 30 segundos.',
 `content_loc7`='La batalla por el Ojo de la Tormenta comienza en 30 segundos.',
 `content_loc8`='Битва за Око Бури начнётся через 30 секунд.'
WHERE `entry`=637;

UPDATE `trinity_string` SET
 `content_loc1`='폭풍의 눈 전투가 시작되었습니다!',
 `content_loc2`='La bataille pour l’Œil du cyclone a commencé !',
 `content_loc3`='Die Schlacht um das Auge des Sturms hat begonnen!',
 `content_loc4`='风暴之眼的战斗开始了！',
 `content_loc5`='風暴之眼的戰鬥開始了！',
 `content_loc6`='¡La batalla por el Ojo de la Tormenta ha comenzado!',
 `content_loc7`='¡La batalla por el Ojo de la Tormenta ha comenzado!',
 `content_loc8`='Битва за Око Бури началась!'
WHERE `entry`=638;

UPDATE `trinity_string` SET
 `content_loc1`='투기장 전투가 1분 후에 시작됩니다!',
 `content_loc2`='L’épreuve d’arène commence dans une minute !',
 `content_loc3`='Der Arenakampf beginnt in einer Minute!',
 `content_loc4`='竞技场战斗将在1分钟后开始！',
 `content_loc5`='競技場戰鬥將在1分鐘後開始！',
 `content_loc6`='¡La batalla de arena comienza en un minuto!',
 `content_loc7`='¡La batalla de arena comienza en un minuto!',
 `content_loc8`='Бой на арене начнётся через минуту!'
WHERE `entry`=701;

UPDATE `trinity_string` SET
 `content_loc1`='투기장 전투가 30초 후에 시작됩니다!',
 `content_loc2`='L’épreuve d’arène commence dans trente secondes !',
 `content_loc3`='Der Arenakampf beginnt in dreißig Sekunden!',
 `content_loc4`='竞技场战斗将在30秒后开始！',
 `content_loc5`='競技場戰鬥將在30秒後開始！',
 `content_loc6`='¡La batalla de arena comienza en treinta segundos!',
 `content_loc7`='¡La batalla de arena comienza en treinta segundos!',
 `content_loc8`='Бой на арене начнётся через тридцать секунд!'
WHERE `entry`=702;

UPDATE `trinity_string` SET
 `content_loc1`='투기장 전투가 15초 후에 시작됩니다!',
 `content_loc2`='L’épreuve d’arène commence dans quinze secondes !',
 `content_loc3`='Der Arenakampf beginnt in fünfzehn Sekunden!',
 `content_loc4`='竞技场战斗将在15秒后开始！',
 `content_loc5`='競技場戰鬥將在15秒後開始！',
 `content_loc6`='¡La batalla de arena comienza en quince segundos!',
 `content_loc7`='¡La batalla de arena comienza en quince segundos!',
 `content_loc8`='Бой на арене начнётся через пятнадцать секунд!'
WHERE `entry`=703;

UPDATE `trinity_string` SET
 `content_loc1`='투기장 전투가 시작되었습니다!',
 `content_loc2`='L’épreuve d’arène a commencé !',
 `content_loc3`='Der Arenakampf hat begonnen!',
 `content_loc4`='竞技场战斗开始了！',
 `content_loc5`='競技場戰鬥開始了！',
 `content_loc6`='¡La batalla de arena ha comenzado!',
 `content_loc7`='¡La batalla de arena ha comenzado!',
 `content_loc8`='Бой на арене начался!'
WHERE `entry`=704;

UPDATE `trinity_string` SET
 `content_loc1`='금색 팀이 승리했습니다!',
 `content_loc2`='L’équipe dorée gagne !',
 `content_loc3`='Das Goldteam gewinnt!',
 `content_loc4`='金色队获胜！',
 `content_loc5`='金色隊獲勝！',
 `content_loc6`='¡El equipo dorado gana!',
 `content_loc7`='¡El equipo dorado gana!',
 `content_loc8`='Золотая команда победила!'
WHERE `entry`=724;

UPDATE `trinity_string` SET
 `content_loc1`='녹색 팀이 승리했습니다!',
 `content_loc2`='L’équipe verte gagne !',
 `content_loc3`='Das Grünteam gewinnt!',
 `content_loc4`='绿色队获胜！',
 `content_loc5`='綠色隊獲勝！',
 `content_loc6`='¡El equipo verde gana!',
 `content_loc7`='¡El equipo verde gana!',
 `content_loc8`='Зелёная команда победила!'
WHERE `entry`=725;

UPDATE `trinity_string` SET
 `content_loc1`='%s 님이 호드 깃발을 쟁취했습니다!',
 `content_loc2`='$n a capturé le drapeau de la Horde !',
 `content_loc3`='$n hat die Flagge der Horde erobert!',
 `content_loc4`='$n夺取了部落旗帜！',
 `content_loc5`='$n奪取了部落旗幟！',
 `content_loc6`='¡$n ha capturado la bandera de la Horda!',
 `content_loc7`='¡$n ha capturado la bandera de la Horda!',
 `content_loc8`='$n захватил флаг Орды!'
WHERE `entry`=605;

UPDATE `trinity_string` SET
 `content_loc1`='%s 님이 얼라이언스 깃발을 쟁취했습니다!',
 `content_loc2`='$n a capturé le drapeau de l’Alliance !',
 `content_loc3`='$n hat die Flagge der Allianz erobert!',
 `content_loc4`='$n夺取了联盟旗帜！',
 `content_loc5`='$n奪取了聯盟旗幟！',
 `content_loc6`='¡$n ha capturado la bandera de la Alianza!',
 `content_loc7`='¡$n ha capturado la bandera de la Alianza!',
 `content_loc8`='$n захватил флаг Альянса!'
WHERE `entry`=606;

UPDATE `trinity_string` SET
 `content_loc1`='깃발이 초기화되었습니다.',
 `content_loc2`='Le drapeau a été réinitialisé.',
 `content_loc3`='Die Flagge wurde zurückgesetzt.',
 `content_loc4`='旗帜已重置。',
 `content_loc5`='旗幟已重置。',
 `content_loc6`='La bandera ha sido restablecida.',
 `content_loc7`='La bandera ha sido restablecida.',
 `content_loc8`='Флаг сброшен.'
WHERE `entry`=687;

UPDATE `trinity_string` SET
 `content_loc1`='깃발이 떨어졌습니다.',
 `content_loc2`='Le drapeau a été lâché.',
 `content_loc3`='Die Flagge wurde fallen gelassen.',
 `content_loc4`='旗帜掉落了。',
 `content_loc5`='旗幟掉落了。',
 `content_loc6`='La bandera ha sido soltada.',
 `content_loc7`='La bandera ha sido soltada.',
 `content_loc8`='Флаг уронили.'
WHERE `entry`=686;

UPDATE `trinity_string` SET
 `content_loc1`='호드가 깃발을 쟁취했습니다!',
 `content_loc2`='La Horde a capturé le drapeau !',
 `content_loc3`='Die Horde hat die Flagge erobert!',
 `content_loc4`='部落夺取了旗帜！',
 `content_loc5`='部落奪取了旗幟！',
 `content_loc6`='¡La Horda ha capturado la bandera!',
 `content_loc7`='¡La Horda ha capturado la bandera!',
 `content_loc8`='Орда захватила флаг!'
WHERE `entry`=685;

UPDATE `trinity_string` SET
 `content_loc1`='얼라이언스가 깃발을 쟁취했습니다!',
 `content_loc2`='L’Alliance a capturé le drapeau !',
 `content_loc3`='Die Allianz hat die Flagge erobert!',
 `content_loc4`='联盟夺取了旗帜！',
 `content_loc5`='聯盟奪取了旗幟！',
 `content_loc6`='¡La Alianza ha capturado la bandera!',
 `content_loc7`='¡La Alianza ha capturado la bandera!',
 `content_loc8`='Альянс захватил флаг!'
WHERE `entry`=684;

UPDATE `trinity_string` SET
 `content_loc1`='%s 님이 깃발을 가져갔습니다!',
 `content_loc2`='%s a pris le drapeau !',
 `content_loc3`='%s hat die Flagge genommen!',
 `content_loc4`='%s拿走了旗帜！',
 `content_loc5`='%s拿走了旗幟！',
 `content_loc6`='¡%s ha tomado la bandera!',
 `content_loc7`='¡%s ha tomado la bandera!',
 `content_loc8`='%s взял флаг!'
WHERE `entry`=683;

UPDATE `trinity_string` SET
 `content_loc1`='%s 님이 수정체를 가져갔습니다!',
 `content_loc2`='$n a pris le cristal !',
 `content_loc3`='$n hat den Kristall genommen!',
 `content_loc4`='$n拿走了水晶！',
 `content_loc5`='$n拿走了水晶！',
 `content_loc6`='¡$n ha tomado el cristal!',
 `content_loc7`='¡$n ha tomado el cristal!',
 `content_loc8`='$n взял кристалл!'
WHERE `entry`=100560;

UPDATE `trinity_string` SET
 `content_loc3`='|cff00FF00Ihr könnt diesen Token nicht im Kampf, in der Arena oder auf einem Schlachtfeld verwenden.',
 `content_loc2`='|cff00FF00Vous ne pouvez pas utiliser ce jeton en combat, en arène ou sur un champ de bataille.',
 `content_loc6`='|cff00FF00No puedes usar este token en combate, en arena o en un campo de batalla.',
 `content_loc7`='|cff00FF00No puedes usar este token en combate, en arena o en un campo de batalla.',
 `content_loc8`='|cff00FF00Вы не можете использовать этот жетон в бою, на арене или на поле боя.',
 `content_loc4`='|cff00FF00战斗中、竞技场或战场内无法使用此代币。',
 `content_loc5`='|cff00FF00戰鬥中、競技場或戰場內無法使用此代幣。',
 `content_loc1`='|cff00FF00전투 중, 투기장 또는 전장에서는 이 토큰을 사용할 수 없습니다.'
WHERE `entry`=789000;

UPDATE `trinity_string` SET
 `content_loc3`='|cff00FF00Ihr seid bereits Stufe 110. Ihr könnt diesen Token an einen anderen Charakter eures Accounts senden!',
 `content_loc2`='|cff00FF00Vous êtes déjà niveau 110. Vous pouvez envoyer ce jeton à un autre personnage de votre compte !',
 `content_loc6`='|cff00FF00Ya estás en nivel 110. ¡Puedes enviar este token a otro personaje de tu cuenta!',
 `content_loc7`='|cff00FF00Ya estás en nivel 110. ¡Puedes enviar este token a otro personaje de tu cuenta!',
 `content_loc8`='|cff00FF00Вы уже 110-го уровня. Вы можете отправить этот жетон другому персонажу аккаунта!',
 `content_loc4`='|cff00FF00你已经是110级。你可以把这个代币发给账号中的其他角色！',
 `content_loc5`='|cff00FF00你已經是110級。你可以把這個代幣發給帳號中的其他角色！',
 `content_loc1`='|cff00FF00이미 110 레벨입니다. 이 토큰을 계정의 다른 캐릭터에게 보낼 수 있습니다!'
WHERE `entry`=789001;

UPDATE `trinity_string` SET
 `content_loc3`='|cff00FF00Ihr habt das Fliegen auf den Verheerten Inseln und der Verheerten Küste erlernt!',
 `content_loc2`='|cff00FF00Vous avez appris à voler aux îles Brisées et au rivage Brisé !',
 `content_loc6`='|cff00FF00¡Has aprendido a volar en las Islas Abruptas y la Costa Abrupta!',
 `content_loc7`='|cff00FF00¡Has aprendido a volar en las Islas Abruptas y la Costa Abrupta!',
 `content_loc8`='|cff00FF00Вы научились летать на Расколотых островах и Расколотом берегу!',
 `content_loc4`='|cff00FF00你已学会在破碎群岛和破碎海滩飞行！',
 `content_loc5`='|cff00FF00你已學會在破碎群島和破碎海岸飛行！',
 `content_loc1`='|cff00FF00부서진 섬과 부서진 해변에서 비행하는 법을 배웠습니다!'
WHERE `entry`=789003;

UPDATE `trinity_string` SET
 `content_loc3`='|cff00FF00Ihr habt das Fliegen in Kul Tiras und Zandalar erlernt!',
 `content_loc2`='|cff00FF00Vous avez appris à voler à Kul Tiras et Zandalar !',
 `content_loc6`='|cff00FF00¡Has aprendido a volar en Kul Tiras y Zandalar!',
 `content_loc7`='|cff00FF00¡Has aprendido a volar en Kul Tiras y Zandalar!',
 `content_loc8`='|cff00FF00Вы научились летать в Кул-Тирасе и Зандаларе!',
 `content_loc4`='|cff00FF00你已学会在库尔提拉斯和赞达拉飞行！',
 `content_loc5`='|cff00FF00你已學會在庫爾提拉斯和贊達拉飛行！',
 `content_loc1`='|cff00FF00쿨 티라스와 잔달라에서 비행하는 법을 배웠습니다!'
WHERE `entry`=789004;

UPDATE `trinity_string` SET
 `content_loc3`='|cff00FF0045.000 Ehrenpunkte wurden hinzugefügt!',
 `content_loc2`='|cff00FF0045 000 points d’honneur ont été ajoutés !',
 `content_loc6`='|cff00FF00¡Se han añadido 45.000 puntos de honor!',
 `content_loc7`='|cff00FF00¡Se han añadido 45.000 puntos de honor!',
 `content_loc8`='|cff00FF00Добавлено 45 000 очков чести!',
 `content_loc4`='|cff00FF00已添加45,000荣誉点数！',
 `content_loc5`='|cff00FF00已添加45,000榮譽點數！',
 `content_loc1`='|cff00FF00명예 점수 45,000점이 추가되었습니다!'
WHERE `entry`=789005;

UPDATE `trinity_string` SET
 `content_loc3`='Spieler |cff00ff00%s|r Chat zensiert : |cffff0000%s',
 `content_loc2`='Joueur |cff00ff00%s|r chat censuré : |cffff0000%s',
 `content_loc6`='Jugador |cff00ff00%s|r chat censurado : |cffff0000%s',
 `content_loc7`='Jugador |cff00ff00%s|r chat censurado : |cffff0000%s',
 `content_loc8`='Игрок |cff00ff00%s|r чат отфильтрован : |cffff0000%s',
 `content_loc4`='玩家 |cff00ff00%s|r 聊天已屏蔽 : |cffff0000%s',
 `content_loc5`='玩家 |cff00ff00%s|r 聊天已屏蔽 : |cffff0000%s',
 `content_loc1`='플레이어 |cff00ff00%s|r 채팅 검열 : |cffff0000%s'
WHERE `entry`=17000;

-- German leftovers that players/GMs see often
UPDATE `trinity_string` SET `content_loc3`='Persönlich' WHERE `entry`=184;
UPDATE `trinity_string` SET `content_loc3`='Kosmetisch' WHERE `entry`=183;
UPDATE `trinity_string` SET `content_loc3`='Sperre existiert' WHERE `entry`=1191;
UPDATE `trinity_string` SET `content_loc3`='Hangar' WHERE `entry`=1224;
UPDATE `trinity_string` SET `content_loc3`='Steinbruch' WHERE `entry`=1223;
UPDATE `trinity_string` SET `content_loc3`='Werkstatt' WHERE `entry`=1220;
UPDATE `trinity_string` SET `content_loc3`='Docks' WHERE `entry`=1221;
UPDATE `trinity_string` SET `content_loc3`='Raffinerie' WHERE `entry`=1222;
UPDATE `trinity_string` SET `content_loc3`='Die Allianz-Feste' WHERE `entry`=1209;
UPDATE `trinity_string` SET `content_loc3`='Die Horde-Feste' WHERE `entry`=1210;
UPDATE `trinity_string` SET `content_loc3`='%s gewinnt!' WHERE `entry`=1211;
UPDATE `trinity_string` SET `content_loc3`='Leere Liste' WHERE `entry`=70;
UPDATE `trinity_string` SET `content_loc3`='Berechtigungen:' WHERE `entry`=68;
UPDATE `trinity_string` SET `content_loc3`='Anzahl' WHERE `entry`=1164;
UPDATE `trinity_string` SET `content_loc3`='Grau' WHERE `entry`=1168;
UPDATE `trinity_string` SET `content_loc3`='Weiß' WHERE `entry`=1169;
UPDATE `trinity_string` SET `content_loc3`='Grün' WHERE `entry`=1170;
UPDATE `trinity_string` SET `content_loc3`='Blau' WHERE `entry`=1171;
UPDATE `trinity_string` SET `content_loc3`='Lila' WHERE `entry`=1172;
UPDATE `trinity_string` SET `content_loc3`='Orange' WHERE `entry`=1173;
UPDATE `trinity_string` SET `content_loc3`='Gelb' WHERE `entry`=1174;
UPDATE `trinity_string` SET `content_loc3`='<nicht autorisiert>' WHERE `entry`=5030;
UPDATE `trinity_string` SET `content_loc3`='Kein Grund angegeben.' WHERE `entry`=5035;
UPDATE `trinity_string` SET `content_loc3`='In der Nähe gibt es keine Friedhöfe' WHERE `entry`=83;
UPDATE `trinity_string` SET `content_loc3`='Passwort nicht länger als 16 Zeichen (Client-Limit), Passwort nicht geändert!' WHERE `entry`=55;
UPDATE `trinity_string` SET `content_loc3`='Spieler gespeichert.' WHERE `entry`=14 AND (`content_loc3` IS NULL OR `content_loc3`='');
