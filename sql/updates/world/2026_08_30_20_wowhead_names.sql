-- Wowhead names for rows added from DBErrors.log. Does not delete.
SET NAMES utf8mb4;

-- Creatures (enUS name)
UPDATE `world`.`creature_template` SET `name`='Silvermoon Flame Guardian' WHERE `entry`=248989;
UPDATE `world`.`creature_template` SET `name`='Li Li Stormstout' WHERE `entry`=253727;
UPDATE `world`.`creature_template` SET `name`='Apothecary Dezi' WHERE `entry`=253837;
UPDATE `world`.`creature_template` SET `name`='Captain Sal\'chatah' WHERE `entry`=257299;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit' WHERE `entry` IN (257768,257769);
UPDATE `world`.`creature_template` SET `name`='Ulan Tunnels - Bunny' WHERE `entry` IN (259422,259423,259424);
UPDATE `world`.`creature_template` SET `name`='Kill Credit' WHERE `entry`=259750;
UPDATE `world`.`creature_template` SET `name`='Jelvik' WHERE `entry`=260710;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit - Small' WHERE `entry`=261070;
UPDATE `world`.`creature_template` SET `name`='[DNT] Ritual Kill Credit' WHERE `entry`=263364;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: 12.0.7 Showdowns - Naigtal - WQ - Simple - 002' WHERE `entry`=263409;
UPDATE `world`.`creature_template` SET `name`='Scout Oma\'ema' WHERE `entry`=263618;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: 12.0.7 Showdowns - Naigtal - WQ - Simple - 002b' WHERE `entry`=263623;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit - Medium' WHERE `entry`=263701;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit - Large' WHERE `entry`=263702;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Infected Devourers Purged' WHERE `entry`=263968;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Travel through the Rift' WHERE `entry`=264025;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Rift Opened' WHERE `entry`=264026;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit:' WHERE `entry`=264038;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Naigtal Beacon' WHERE `entry`=264291;
UPDATE `world`.`creature_template` SET `name`='12.0.7 Showdowns - Naigtal - Event - Floating Shrooms - WQ Credit' WHERE `entry`=264323;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Tier 1' WHERE `entry`=265778;
UPDATE `world`.`creature_template` SET `name`='[DNT] Kill Credit: Tier 2' WHERE `entry`=265779;
UPDATE `world`.`creature_template` SET `name`='Sporomir' WHERE `entry`=266165;
UPDATE `world`.`creature_template` SET `name`='Elder Sunhorn' WHERE `entry`=266846;

-- deDE creature locales
INSERT INTO `world`.`creature_template_locale` (`entry`,`locale`,`Name`,`VerifiedBuild`) VALUES
(248989,'deDE','Flammenbehüter von Silbermond',68974),
(253727,'deDE','Li Li Sturmbräu',68974),
(253837,'deDE','Apothekerin Dezi',68974),
(257299,'deDE','Kapitän Sal\'chatah',68974),
(260710,'deDE','Jelvik',68974),
(263618,'deDE','Späherin Oma\'ema',68974),
(266165,'deDE','Sporomir',68974),
(266846,'deDE','Ältester Sonnenhorn',68974)
ON DUPLICATE KEY UPDATE `Name`=VALUES(`Name`);

-- Quests
UPDATE `world`.`quest_template` SET
  `LogTitle`='Sporefall: Rotmire',
  `LogDescription`='Enter Sporefall and defeat Rotmire.',
  `QuestDescription`='Need help! End of Harandar! End of world! Spore Storm making something new for Grudge Pit, but too much. Too much! Can\'t control. Will break free! Destroy pit. Destroy us all! Must go to Sporefall, destroy Rotmire before they lose control! For Harandar! For Azeroth! For Grudge Pit!',
  `QuestCompletionLog`='You save us all. Fungaria! Harandar! World! Grudge Pit!'
WHERE `ID`=96746;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Hagar\'s Invitation',
  `LogDescription`='Attend Hagar\'s meeting at the Den in Harandar.',
  `QuestDescription`='Hagar has a message she believes the elves and trolls of Azeroth must all hear. She has sent a call to leaders from the elven and troll tribes to come to Harandar. I have come here to ask the blood elves to join us, but you should be there as well.'
WHERE `ID`=92895;

UPDATE `world`.`quest_template` SET
  `LogTitle`='The Battle of the Bridge',
  `LogDescription`='Complete the Battle of the Bridge scenario.',
  `QuestDescription`='Our elven allies have arrived. It is time to take the fight to the Darkwell. Xal\'atath\'s forces hold the bridge and recently pushed into the harbor to reinforce their position.'
WHERE `ID`=88769;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Into the Darkway',
  `LogDescription`='Slay Twilight Imposter Gulkat in the Darkway Delve.',
  `QuestDescription`='Ulen\'s imposter may have escaped, but I suspect I know what the cult has been doing. The Twilight\'s Blade must be redirecting Suramar\'s mana flow.'
WHERE `ID`=88919;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Those Left Behind',
  `LogDescription`='Seek out Arator at the Darkwell.',
  `QuestDescription`='In the wake of Xal\'atath\'s destruction, what remains of our forces are gathering at the Darkwell to determine what we can do about the remnants of the Void.'
WHERE `ID`=90861;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Ignite the Skies: Silvermoon',
  `LogDescription`='Ignite the skies by flying through the sun blossoms over Silvermoon.',
  `QuestDescription`='The season of Midsummer is celebrated by many cultures across Azeroth. Even now, bonfires across the land are ignited in honor of the spirits of fire.'
WHERE `ID`=92821;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Venemetic',
  `LogDescription`='Collect 5 doses of Virulent Ula\'tek Venom from the Children of Ula\'tek at the Serpent\'s Tail.',
  `QuestDescription`='I have the other ingredients for the emetic here. The last ingredient I need is some venom to trigger a response.'
WHERE `ID`=96090;

UPDATE `world`.`quest_template` SET
  `LogTitle`='The Kaldorei',
  `LogDescription`='Listen to Arator\'s plan and then use Telemancer Oculeth\'s Portal to Bel\'ameth.',
  `QuestDescription`='We must retake the Darkwell and defeat L\'ura before the world is torn asunder. We will need an army. No. Many armies. We need to reach out to the other elves.'
WHERE `ID`=88920;

UPDATE `world`.`quest_template` SET
  `LogTitle`='For Quel\'Thalas',
  `LogDescription`='Confront the Sunreavers with Vereesa Windrunner at the gates of Silvermoon.',
  `QuestDescription`='It is time for us to return to Silvermoon. I have no doubt we will be greeted as traitors and murderers. I do not care how we are seen. I care that Quel\'Thalas survives.'
WHERE `ID`=88941;

UPDATE `world`.`quest_template` SET
  `LogTitle`='Venom Fishing: My Second-Best',
  `LogDescription`='Meet with Second Mate Sluggs at Tokka\'s Folly.',
  `QuestDescription`='Before I send ye out hunting, ye should acquaint yerself with what remains of my crew.'
WHERE `ID`=98343;

INSERT INTO `world`.`quest_template_locale` (`ID`,`locale`,`LogTitle`,`LogDescription`,`QuestDescription`,`VerifiedBuild`) VALUES
(96746,'deDE','Sporenfall: Rottmoor','Betretet Sporenfall und besiegt Rottmoor.','Brauchen Hilfe! Ende von Harandar! Ende der Welt! Sporensturm erschafft etwas Neues für Grollgrube, aber zu viel. Zu viel! Außer Kontrolle geraten! Wird ausbrechen! Zerstört Grube. Zerstört uns alle! Müssen nach Sporenfall gehen und Rottmoor zerstören, bevor alles außer Kontrolle! Für Harandar! Für Azeroth! Für Grollgrube!',68974),
(92895,'deDE','Hagars Einladung','Nehmt an Hagars Treffen in der Höhle in Harandar teil.','Hagar hat eine Botschaft, die ihrer Ansicht nach alle Elfen und Trolle Azeroths hören müssen. Sie hat die Anführer der Elfen- und Trollstämme nach Harandar gerufen.',68974),
(88769,'deDE','Die Schlacht um die Brücke','Schließt das Szenario „Schlacht um die Brücke“ ab.','Unsere elfischen Verbündeten sind eingetroffen. Es ist Zeit, den Kampf zum Dunkelbrunnen zu tragen.',68974),
(88919,'deDE','In den Dunkelweg','Tötet den Zwielichtimitator Gulkat in der Dunkelweg-Tiefe.','Ulens Imitator mag entkommen sein, aber der Kult leitet Suramars Manafluss um.',68974),
(90861,'deDE','Die Zurückgelassenen','Sucht Arator am Dunkelbrunnen auf.','Nach Xal\'ataths Zerstörung versammeln sich unsere verbliebenen Streitkräfte am Dunkelbrunnen.',68974),
(92821,'deDE','Entzündet den Himmel: Silbermond','Entzündet den Himmel, indem Ihr durch die Sonnenblüten über Silbermond fliegt.','Die Zeit der Sonnenwende wird von vielen Kulturen Azeroths gefeiert.',68974),
(96090,'deDE','Venemetikum','Sammelt 5 Dosen virulentes Ula\'tek-Gift von den Kindern Ula\'teks am Schlangenschwanz.','Ich habe die anderen Zutaten für das Brechmittel hier. Die letzte Zutat ist Gift, um eine Reaktion auszulösen.',68974),
(88920,'deDE','Die Kaldorei','Hört Euch Arators Plan an und benutzt dann Telemant Oculeths Portal nach Bel\'ameth.','Wir müssen den Dunkelbrunnen zurückerobern und L\'ura besiegen, bevor die Welt zerreißt.',68974),
(88941,'deDE','Für Quel\'Thalas','Stellt die Sonnenhäscher mit Vereesa Windläufer an den Toren von Silbermond.', 'Es ist Zeit, nach Silbermond zurückzukehren. Man wird uns als Verräter und Mörder empfangen.',68974),
(98343,'deDE','Giftangeln: Mein Zweiter','Trefft Euch mit dem zweiten Maat Sluggs bei Tokkas Torheit.','Bevor ich Euch auf die Jagd schicke, solltet Ihr den Rest meiner Mannschaft kennenlernen.',68974)
ON DUPLICATE KEY UPDATE
  `LogTitle`=VALUES(`LogTitle`),
  `LogDescription`=VALUES(`LogDescription`),
  `QuestDescription`=VALUES(`QuestDescription`);

-- Gameobject
UPDATE `world`.`gameobject_template` SET `name`='Snake Tunnel' WHERE `entry`=625556;
INSERT INTO `world`.`gameobject_template_locale` (`entry`,`locale`,`name`,`VerifiedBuild`) VALUES
(625556,'deDE','Schlangentunnel',68974)
ON DUPLICATE KEY UPDATE `name`=VALUES(`name`);
