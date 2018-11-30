
/*
Portal Master
By Rochet2
Downloaded from http://projectcode.zzl.org/
Bugs and contact with E-mail: Rochet2@post.com
*/

DELETE FROM creature_template WHERE entry = '190000';

Replace INTO creature_template (entry, modelid1, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, Health_mod, Mana_mod, Armor_mod, faction_A, faction_H, npcflag, speed_walk, speed_run, scale, rank, dmg_multiplier, unit_class, unit_flags, type, type_flags, InhabitType, RegenHealth, flags_extra) VALUES
('190000', '21572', "Portal Master", "", 'Directions', '50000', 71, 71, 1.56, 1.56, 1.56, 35, 35, 3, 1, 1.14286, 1.25, 1, 1, 1, 2, 7, 138936390, 3, 1, 2);

DELETE FROM creature_template_addon WHERE Entry = '190000' ;

Replace INTO creature_template_addon (entry, mount, bytes1, bytes2, emote, path_id, auras) VALUES
('190000', 0, 0, 0, 0, 0, '35766 0');

DELETE FROM gossip_menu WHERE entry>'50000'-1 AND entry<'50000'+9;
DELETE FROM npc_text WHERE ID>'300000'-1 AND ID<'300000'+5;

Replace INTO gossip_menu (entry, text_id) VALUES
('50000'+4, '300000'+3),
('50000'+3, '300000'+2),
('50000'+2, '300000'+2),
('50000'+1, '300000'+2),
('50000'+8, '300000'+4),
('50000'+7, '300000'+4),
('50000'+6, '300000'+4),
('50000'+5, '300000'+4),
('50000', '300000'+1),
('50000', '300000');

Replace INTO npc_text (ID, text0_0, em0_1) VALUES
('300000'+4, '$BWhere would you like to be ported?$B', 0),
('300000'+3, '$BBe careful with choosing raids,I wont be there if you wipe.$B', 0),
('300000'+2, '$BUp for some dungeon exploring?$B', 0),
('300000'+1, '$B For The Alliance!$B', 6),
('300000', '$B For the Horde!$B', 6);

DELETE FROM gossip_menu_option WHERE menu_id>'50000'-1 AND menu_id<'50000'+9;
DELETE FROM event_scripts WHERE id>'50000'-1 AND id<'50000'+135;
DELETE FROM conditions WHERE (SourceTypeOrReferenceId = 15 OR SourceTypeOrReferenceId=14) AND (SourceGroup>'50000'-1 AND SourceGroup<'50000'+9);

Replace INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ConditionTypeOrReference, ConditionValue1, Comment) VALUES
(15, '50000', 1, 6, 469, 'Stormwind'),
(15, '50000'+5, 2, 6, 469, 'Dun Morogh'),
(15, '50000'+5, 3, 6, 67, 'Tirisfal Glades'),
(15, '50000'+5, 4, 6, 67, 'Ghostlands'),
(15, '50000'+5, 5, 6, 469, 'Loch modan'),
(15, '50000'+5, 6, 6, 67, 'Silverpine Forest'),
(15, '50000'+5, 7, 6, 469, 'Westfall'),
(15, '50000'+5, 8, 6, 469, 'Redridge mountains'),
(15, '50000'+5, 9, 6, 469, 'Duskwood'),
(15, '50000'+5, 11, 6, 469, 'Wetlands'),
(15, '50000'+6, 0, 6, 469, 'Azuremyst Isle'),
(15, '50000'+6, 1, 6, 469, 'Teldrassil'),
(15, '50000'+6, 2, 6, 67, 'Durotar'),
(15, '50000'+6, 3, 6, 67, 'Mulgore'),
(15, '50000'+6, 4, 6, 469, 'Bloodmyst Isle'),
(15, '50000'+6, 5, 6, 469, 'Darkshore'),
(15, '50000'+6, 6, 6, 67, 'The Barrens'),
(15, '50000'+5, 1, 6, 67, 'Eversong Woods'),
(15, '50000'+5, 0, 6, 469, 'Elwynn Forest'),
(15, '50000'+4, 22, 6, 67, 'Zul\'Aman'),
(15, '50000', 2, 6, 67, 'Orgrimmar'),
(15, '50000', 3, 6, 469, 'Darnassus'),
(15, '50000', 4, 6, 469, 'Ironforge'),
(15, '50000', 5, 6, 469, 'Exodar'),
(15, '50000', 6, 6, 67, 'Thunder bluff'),
(15, '50000', 7, 6, 67, 'Undercity'),
(15, '50000', 8, 6, 67, 'Silvermoon city'),
(15, '50000'+1, 0, 6, 469, 'Gnomeregan'),
(15, '50000'+1, 1, 6, 469, 'The Deadmines'),
(15, '50000'+1, 2, 6, 469, 'The Stockade'),
(15, '50000'+1, 3, 6, 67, 'Ragefire Chasm'),
(15, '50000'+1, 4, 6, 67, 'Razorfen Downs'),
(15, '50000'+1, 5, 6, 67, 'Razorfen Kraul'),
(15, '50000'+1, 6, 6, 67, 'Scarlet Monastery'),
(15, '50000'+1, 7, 6, 67, 'Shadowfang Keep'),
(15, '50000'+1, 8, 6, 67, 'Wailing Caverns'),
(15, '50000'+6, 9, 6, 67, 'Thousand Needles'),
(14,'50000', '300000'+1, 6, 469, 'For the Alliance'),
(14, '50000', '300000', 6, 67, 'For the Horde');

Replace INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, Comment) VALUES
(15, '50000'+8, 9, 27, 77, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 8, 27, 77, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 7, 27, 77, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 6, 27, 77, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 5, 27, 76, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 4, 27, 74, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 3, 27, 73, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 2, 27, 71, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 1, 27, 68, 3, 0, 'Portal Master - Level req'),
(15, '50000'+8, 0, 27, 68, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 6, 27, 67, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 5, 27, 67, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 4, 27, 65, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 3, 27, 64, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 2, 27, 62, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 1, 27, 60, 3, 0, 'Portal Master - Level req'),
(15, '50000'+7, 0, 27, 58, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 18, 27, 55, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 17, 27, 55, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 16, 27, 48, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 15, 27, 48, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 14, 27, 45, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 13, 27, 40, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 12, 27, 40, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 11, 27, 35, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 10, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 9, 27, 25, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 8, 27, 18, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 7, 27, 15, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 6, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 5, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+6, 4, 27, 15, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 23, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 22, 27, 53, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 21, 27, 51, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 20, 27, 50, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 19, 27, 45, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 18, 27, 43, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 17, 27, 40, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 16, 27, 35, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 15, 27, 35, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 14, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 13, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 12, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 11, 27, 20, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 10, 27, 20, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 9, 27, 18, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 8, 27, 15, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 7, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 6, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 5, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+5, 4, 27, 10, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 22, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 21, 27, 57, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 19, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 18, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 17, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 16, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 15, 27, 60, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 14, 27, 67, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 13, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 12, 27, 60, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 11, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 10, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 9, 27, 60, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 8, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 7, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 6, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 5, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 4, 27, 80, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 3, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 2, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 1, 27, 60, 3, 0, 'Portal Master - Level req'),
(15, '50000'+4, 0, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 11, 27, 75, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 10, 27, 69, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 9, 27, 77, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 8, 27, 79, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 7, 27, 75, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 6, 27, 71, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 5, 27, 79, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 4, 27, 71, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 3, 27, 74, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 2, 27, 79, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 1, 27, 79, 3, 0, 'Portal Master - Level req'),
(15, '50000'+3, 0, 27, 73, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 5, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 4, 27, 70, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 3, 27, 59, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 2, 27, 62, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 1, 27, 66, 3, 0, 'Portal Master - Level req'),
(15, '50000'+2, 0, 27, 64, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 18, 27, 35, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 17, 27, 37, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 16, 27, 47, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 15, 27, 55, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 14, 27, 55, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 13, 27, 45, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 12, 27, 55, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 11, 27, 57, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 10, 27, 53, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 9, 27, 21, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 8, 27, 17, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 7, 27, 18, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 6, 27, 32, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 5, 27, 24, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 4, 27, 34, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 3, 27, 15, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 2, 27, 22, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 1, 27, 17, 3, 0, 'Portal Master - Level req'),
(15, '50000'+1, 0, 27, 25, 3, 0, 'Portal Master - Level req'),
(15, '50000', 20, 27, 57, 3, 0, 'Portal Master - Level req'),
(15, '50000', 19, 27, 69, 3, 0, 'Portal Master - Level req'),
(15, '50000', 18, 27, 59, 3, 0, 'Portal Master - Level req'),
(15, '50000', 17, 27, 15, 3, 0, 'Portal Master - Level req'),
(15, '50000', 16, 27, 68, 3, 0, 'Portal Master - Level req'),
(15, '50000', 15, 27, 58, 3, 0, 'Portal Master - Level req'),
(15, '50000', 12, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000', 11, 27, 30, 3, 0, 'Portal Master - Level req'),
(15, '50000', 10, 27, 57, 3, 0, 'Portal Master - Level req'),
(15, '50000', 9, 27, 67, 3, 0, 'Portal Master - Level req');
Replace INTO `gossip_menu_option` VALUES (50000, 1, 2, 'Stormwind', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Stormwind?');
Replace INTO `gossip_menu_option` VALUES (50000, 2, 2, 'Orgrimmar', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Orgrimmar?');
Replace INTO `gossip_menu_option` VALUES (50000, 3, 2, 'Darnassus', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Darnassus?');
Replace INTO `gossip_menu_option` VALUES (50000, 4, 2, 'Ironforge', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Ironforge?');
Replace INTO `gossip_menu_option` VALUES (50000, 5, 2, 'Exodar', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Exodar?');
Replace INTO `gossip_menu_option` VALUES (50000, 6, 2, 'Thunder bluff', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Thunder bluff?');
Replace INTO `gossip_menu_option` VALUES (50000, 7, 2, 'Undercity', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Undercity?');
Replace INTO `gossip_menu_option` VALUES (50000, 8, 2, 'Silvermoon city', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Silvermoon city?');
Replace INTO `gossip_menu_option` VALUES (50000, 9, 2, 'Dalaran', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Dalaran?');
Replace INTO `gossip_menu_option` VALUES (50000, 10, 2, 'Shattrath', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Shattrath?');
Replace INTO `gossip_menu_option` VALUES (50000, 11, 2, 'Booty bay', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Booty bay?');
Replace INTO `gossip_menu_option` VALUES (50000, 12, 2, 'Gurubashi arena', 1, 1, 50000, 0, 0, 0, 'Are you sure, that you want to go to Arena?');
Replace INTO `gossip_menu_option` VALUES (50000, 13, 3, 'Eastern Kingdoms', 1, 1, 50005, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 14, 3, 'Kalimdor', 1, 1, 50006, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 15, 3, 'Outland', 1, 1, 50007, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 16, 3, 'Northrend', 1, 1, 50008, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 17, 9, 'Classic Dungeons', 1, 1, 50001, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 18, 9, 'BC Dungeons', 1, 1, 50002, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 19, 9, 'Wrath Dungeons', 1, 1, 50003, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50000, 20, 9, 'Raid Teleports', 1, 1, 50004, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50001, 0, 2, 'Gnomeregan', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Gnomeregan?');
Replace INTO `gossip_menu_option` VALUES (50001, 1, 2, 'The Deadmines', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Deadmines?');
Replace INTO `gossip_menu_option` VALUES (50001, 2, 2, 'The Stockade', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Stockade?');
Replace INTO `gossip_menu_option` VALUES (50001, 3, 2, 'Ragefire Chasm', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Ragefire Chasm?');
Replace INTO `gossip_menu_option` VALUES (50001, 4, 2, 'Razorfen Downs', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Razorfen Downs?');
Replace INTO `gossip_menu_option` VALUES (50001, 5, 2, 'Razorfen Kraul', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Razorfen Kraul?');
Replace INTO `gossip_menu_option` VALUES (50001, 6, 2, 'Scarlet Monastery', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Scarlet Monastery?');
Replace INTO `gossip_menu_option` VALUES (50001, 7, 2, 'Shadowfang Keep', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Shadowfang Keep?');
Replace INTO `gossip_menu_option` VALUES (50001, 8, 2, 'Wailing Caverns', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Wailing Caverns?');
Replace INTO `gossip_menu_option` VALUES (50001, 9, 2, 'Blackfathom Deeps', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Blackfathom Deeps?');
Replace INTO `gossip_menu_option` VALUES (50001, 10, 2, 'Blackrock Depths', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Blackrock Depths?');
Replace INTO `gossip_menu_option` VALUES (50001, 11, 2, 'Blackrock Spire', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Blackrock Spire?');
Replace INTO `gossip_menu_option` VALUES (50001, 12, 2, 'Dire Maul', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Dire Maul?');
Replace INTO `gossip_menu_option` VALUES (50001, 13, 2, 'Maraudon', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Maraudon?');
Replace INTO `gossip_menu_option` VALUES (50001, 14, 2, 'Scholomance', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Scholomance?');
Replace INTO `gossip_menu_option` VALUES (50001, 15, 2, 'Stratholme', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Stratholme?');
Replace INTO `gossip_menu_option` VALUES (50001, 16, 2, 'Sunken Temple', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Sunken Temple?');
Replace INTO `gossip_menu_option` VALUES (50001, 17, 2, 'Uldaman', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Uldaman?');
Replace INTO `gossip_menu_option` VALUES (50001, 18, 2, 'Zul\'Farrak', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Zul\'Farrak?');
Replace INTO `gossip_menu_option` VALUES (50001, 19, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50002, 0, 2, 'Auchindoun', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Auchindoun?');
Replace INTO `gossip_menu_option` VALUES (50002, 1, 2, 'Caverns of Time', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Caverns of Time?');
Replace INTO `gossip_menu_option` VALUES (50002, 2, 2, 'Coilfang Reservoir', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Coilfang Reservoir?');
Replace INTO `gossip_menu_option` VALUES (50002, 3, 2, 'Hellfire Citadel', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Hellfire Citadel?');
Replace INTO `gossip_menu_option` VALUES (50002, 4, 2, 'Magisters\' Terrace', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Magisters\' Terrace?');
Replace INTO `gossip_menu_option` VALUES (50002, 5, 2, 'Tempest Keep', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Tempest Keep?');
Replace INTO `gossip_menu_option` VALUES (50002, 6, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50003, 0, 2, 'Azjol-Nerub', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Azjol-Nerub?');
Replace INTO `gossip_menu_option` VALUES (50003, 1, 2, 'The Culling of Stratholme', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Culling of Stratholme?');
Replace INTO `gossip_menu_option` VALUES (50003, 2, 2, 'Trial of the Champion', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Trial of the Champion?');
Replace INTO `gossip_menu_option` VALUES (50003, 3, 2, 'Drak\'Tharon Keep', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Drak\'Tharon Keep?');
Replace INTO `gossip_menu_option` VALUES (50003, 4, 2, 'Gundrak', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Gundrak?');
Replace INTO `gossip_menu_option` VALUES (50003, 5, 2, 'Icecrown Citadel Dungeons', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Icecrown Citadel Dungeons?');
Replace INTO `gossip_menu_option` VALUES (50003, 6, 2, 'The Nexus Dungeons', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Nexus Dungeons?');
Replace INTO `gossip_menu_option` VALUES (50003, 7, 2, 'The Violet Hold', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Violet Hold?');
Replace INTO `gossip_menu_option` VALUES (50003, 8, 2, 'Halls of Lightning', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Halls of Lightning?');
Replace INTO `gossip_menu_option` VALUES (50003, 9, 2, 'Halls of Stone', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Halls of Stone?');
Replace INTO `gossip_menu_option` VALUES (50003, 10, 2, 'Utgarde Keep', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Utgarde Keep?');
Replace INTO `gossip_menu_option` VALUES (50003, 11, 2, 'Utgarde Pinnacle', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Utgarde Pinnacle?');
Replace INTO `gossip_menu_option` VALUES (50003, 12, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50004, 0, 2, 'Black Temple', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Black Temple?');
Replace INTO `gossip_menu_option` VALUES (50004, 1, 2, 'Blackwing Lair', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Blackwing Lair?');
Replace INTO `gossip_menu_option` VALUES (50004, 2, 2, 'Hyjal Summit', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Hyjal Summit?');
Replace INTO `gossip_menu_option` VALUES (50004, 3, 2, 'Serpentshrine Cavern', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Serpentshrine Cavern?');
Replace INTO `gossip_menu_option` VALUES (50004, 4, 2, 'Trial of the Crusader', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Trial of the Crusader?');
Replace INTO `gossip_menu_option` VALUES (50004, 5, 2, 'Gruul\'s Lair', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Gruul\'s Lair?');
Replace INTO `gossip_menu_option` VALUES (50004, 6, 2, 'Magtheridon\'s Lair', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Magtheridon\'s Lair?');
Replace INTO `gossip_menu_option` VALUES (50004, 7, 2, 'Icecrown Citadel', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Icecrown Citadel?');
Replace INTO `gossip_menu_option` VALUES (50004, 8, 2, 'Karazhan', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Karazhan?');
Replace INTO `gossip_menu_option` VALUES (50004, 9, 2, 'Molten Core', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Molten Core?');
Replace INTO `gossip_menu_option` VALUES (50004, 10, 2, 'Naxxramas', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Naxxramas?');
Replace INTO `gossip_menu_option` VALUES (50004, 11, 2, 'Onyxia\'s Lair', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Onyxia\'s Lair?');
Replace INTO `gossip_menu_option` VALUES (50004, 12, 2, 'Ruins of Ahn\'Qiraj', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Ruins of Ahn\'Qiraj?');
Replace INTO `gossip_menu_option` VALUES (50004, 13, 2, 'Sunwell Plateau', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Sunwell Plateau?');
Replace INTO `gossip_menu_option` VALUES (50004, 14, 2, 'The Eye', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Eye?');
Replace INTO `gossip_menu_option` VALUES (50004, 15, 2, 'Temple of Ahn\'Qiraj', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Temple of Ahn\'Qiraj?');
Replace INTO `gossip_menu_option` VALUES (50004, 16, 2, 'The Eye of Eternity', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Eye of Eternity?');
Replace INTO `gossip_menu_option` VALUES (50004, 17, 2, 'The Obsidian Sanctum', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Obsidian Sanctum?');
Replace INTO `gossip_menu_option` VALUES (50004, 18, 2, 'Ulduar', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Ulduar?');
Replace INTO `gossip_menu_option` VALUES (50004, 19, 2, 'Vault of Archavon', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Vault of Archavon?');
Replace INTO `gossip_menu_option` VALUES (50004, 21, 2, 'Zul\'Gurub', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Zul\'Gurub?');
Replace INTO `gossip_menu_option` VALUES (50004, 22, 2, 'Zul\'Aman', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Zul\'Aman?');
Replace INTO `gossip_menu_option` VALUES (50004, 23, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50005, 0, 2, 'Elwynn Forest', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Elwynn Forest?');
Replace INTO `gossip_menu_option` VALUES (50005, 1, 2, 'Eversong Woods', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Eversong Woods?');
Replace INTO `gossip_menu_option` VALUES (50005, 2, 2, 'Dun Morogh', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Dun Morogh?');
Replace INTO `gossip_menu_option` VALUES (50005, 3, 2, 'Tirisfal Glades', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Tirisfal Glades?');
Replace INTO `gossip_menu_option` VALUES (50005, 4, 2, 'Ghostlands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Ghostlands?');
Replace INTO `gossip_menu_option` VALUES (50005, 5, 2, 'Loch modan', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Loch modan?');
Replace INTO `gossip_menu_option` VALUES (50005, 6, 2, 'Silverpine Forest', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Silverpine Forest?');
Replace INTO `gossip_menu_option` VALUES (50005, 7, 2, 'Westfall', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Westfall?');
Replace INTO `gossip_menu_option` VALUES (50005, 8, 2, 'Redridge mountains', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Redridge mountains?');
Replace INTO `gossip_menu_option` VALUES (50005, 9, 2, 'Duskwood', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Duskwood?');
Replace INTO `gossip_menu_option` VALUES (50005, 10, 2, 'Hillsbrad Foothills', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Hillsbrad Foothills?');
Replace INTO `gossip_menu_option` VALUES (50005, 11, 2, 'Wetlands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Wetlands?');
Replace INTO `gossip_menu_option` VALUES (50005, 12, 2, 'Alterac Mountains', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Alterac Mountains?');
Replace INTO `gossip_menu_option` VALUES (50005, 13, 2, 'Arathi Highlands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Arathi Highlands?');
Replace INTO `gossip_menu_option` VALUES (50005, 14, 2, 'Stranglethorn Vale', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Stranglethorn Vale?');
Replace INTO `gossip_menu_option` VALUES (50005, 15, 2, 'Badlands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Badlands?');
Replace INTO `gossip_menu_option` VALUES (50005, 16, 2, 'Swamp of Sorrows', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Swamp of Sorrows?');
Replace INTO `gossip_menu_option` VALUES (50005, 17, 2, 'The Hinterlands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Hinterlands?');
Replace INTO `gossip_menu_option` VALUES (50005, 18, 2, 'Searing Gorge', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Searing Gorge?');
Replace INTO `gossip_menu_option` VALUES (50005, 19, 2, 'The Blasted Lands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Blasted Lands?');
Replace INTO `gossip_menu_option` VALUES (50005, 20, 2, 'Burning Steppes', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Burning Steppes?');
Replace INTO `gossip_menu_option` VALUES (50005, 21, 2, 'Western Plaguelands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Western Plaguelands?');
Replace INTO `gossip_menu_option` VALUES (50005, 22, 2, 'Eastern Plaguelands', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Eastern Plaguelands?');
Replace INTO `gossip_menu_option` VALUES (50005, 23, 2, 'Isle of Quel\'Danas', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Isle of Quel\'Danas?');
Replace INTO `gossip_menu_option` VALUES (50005, 24, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50006, 0, 2, 'Azuremyst Isle', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Azuremyst Isle?');
Replace INTO `gossip_menu_option` VALUES (50006, 1, 2, 'Teldrassil', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Teldrassil?');
Replace INTO `gossip_menu_option` VALUES (50006, 2, 2, 'Durotar', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Durotar?');
Replace INTO `gossip_menu_option` VALUES (50006, 3, 2, 'Mulgore', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Mulgore?');
Replace INTO `gossip_menu_option` VALUES (50006, 4, 2, 'Bloodmyst Isle', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Bloodmyst Isle?');
Replace INTO `gossip_menu_option` VALUES (50006, 5, 2, 'Darkshore', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Darkshore?');
Replace INTO `gossip_menu_option` VALUES (50006, 6, 2, 'The Barrens', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to The Barrens?');
Replace INTO `gossip_menu_option` VALUES (50006, 7, 2, 'Stonetalon Mountains', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Stonetalon Mountains?');
Replace INTO `gossip_menu_option` VALUES (50006, 8, 2, 'Ashenvale Forest', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Ashenvale Forest?');
Replace INTO `gossip_menu_option` VALUES (50006, 9, 2, 'Thousand Needles', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Thousand Needles?');
Replace INTO `gossip_menu_option` VALUES (50006, 10, 2, 'Desolace', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Desolace?');
Replace INTO `gossip_menu_option` VALUES (50006, 11, 2, 'Dustwallow Marsh', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Dustwallow Marsh?');
Replace INTO `gossip_menu_option` VALUES (50006, 12, 2, 'Feralas', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Feralas?');
Replace INTO `gossip_menu_option` VALUES (50006, 13, 2, 'Tanaris Desert', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Tanaris Desert?');
Replace INTO `gossip_menu_option` VALUES (50006, 14, 2, 'Azshara', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Azshara?');
Replace INTO `gossip_menu_option` VALUES (50006, 15, 2, 'Felwood', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Felwood?');
Replace INTO `gossip_menu_option` VALUES (50006, 16, 2, 'Un\'Goro Crater', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Un\'Goro Crater?');
Replace INTO `gossip_menu_option` VALUES (50006, 17, 2, 'Silithus', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Silithus?');
Replace INTO `gossip_menu_option` VALUES (50006, 18, 2, 'Winterspring', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Winterspring?');
Replace INTO `gossip_menu_option` VALUES (50006, 19, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50007, 0, 2, 'Hellfire Peninsula', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Hellfire Peninsula?');
Replace INTO `gossip_menu_option` VALUES (50007, 1, 2, 'Zangarmarsh', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Zangarmarsh?');
Replace INTO `gossip_menu_option` VALUES (50007, 2, 2, 'Terokkar Forest', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Terokkar Forest?');
Replace INTO `gossip_menu_option` VALUES (50007, 3, 2, 'Nagrand', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Nagrand?');
Replace INTO `gossip_menu_option` VALUES (50007, 4, 2, 'Blade\'s Edge Mountains', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Blade\'s Edge Mountains?');
Replace INTO `gossip_menu_option` VALUES (50007, 5, 2, 'Netherstorm', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Netherstorm?');
Replace INTO `gossip_menu_option` VALUES (50007, 6, 2, 'Shadowmoon Valley', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Shadowmoon Valley?');
Replace INTO `gossip_menu_option` VALUES (50007, 7, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);
Replace INTO `gossip_menu_option` VALUES (50008, 0, 2, 'Borean Tundra', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Borean Tundra?');
Replace INTO `gossip_menu_option` VALUES (50008, 1, 2, 'Howling Fjord', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Howling Fjord?');
Replace INTO `gossip_menu_option` VALUES (50008, 2, 2, 'Dragonblight', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Dragonblight?');
Replace INTO `gossip_menu_option` VALUES (50008, 3, 2, 'Grizzly Hills', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Grizzly Hills?');
Replace INTO `gossip_menu_option` VALUES (50008, 4, 2, 'Zul\'Drak', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Zul\'Drak?');
Replace INTO `gossip_menu_option` VALUES (50008, 5, 2, 'Sholazar Basin', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Sholazar Basin?');
Replace INTO `gossip_menu_option` VALUES (50008, 6, 2, 'Crystalsong Forest', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Crystalsong Forest?');
Replace INTO `gossip_menu_option` VALUES (50008, 7, 2, 'Storm Peaks', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Storm Peaks?');
Replace INTO `gossip_menu_option` VALUES (50008, 8, 2, 'Icecrown', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Icecrown?');
Replace INTO `gossip_menu_option` VALUES (50008, 9, 2, 'Wintergrasp', 1, 1, 0, 0, 0, 0, 'Are you sure, that you want to go to Wintergrasp?');
Replace INTO `gossip_menu_option` VALUES (50008, 10, 7, 'Back..', 1, 1, 50000, 0, 0, 0, NULL);

Replace INTO event_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES
('50000', 0, 6, 0, 0, 0, -8842.09, 626.358, 94.0867, 3.61363),
('50000'+1, 0, 6, 1, 0, 0, 1601.08, -4378.69, 9.9846, 2.14362),
('50000'+2, 0, 6, 0, 0, 0, -14281.9, 552.564, 8.90422, 0.860144),
('50000'+3, 0, 6, 530, 0, 0, -1887.62, 5359.09, -12.4279, 4.40435),
('50000'+5, 0, 6, 571, 0, 0, 5809.55, 503.975, 657.526, 2.38338),
('50000'+6, 0, 6, 0, 0, 0, -13181.8, 339.356, 42.9805, 1.18013),
('50000'+8, 0, 6, 1, 0, 0, 9869.91, 2493.58, 1315.88, 2.78897),
('50000'+9, 0, 6, 0, 0, 0, -4900.47, -962.585, 501.455, 5.40538),
('50000'+10, 0, 6, 530, 0, 0, -3864.92, -11643.7, -137.644, 5.50862),
('50000'+11, 0, 6, 1, 0, 0, -1274.45, 71.8601, 128.159, 2.80623),
('50000'+12, 0, 6, 0, 0, 0, 1633.75, 240.167, -43.1034, 6.26128),
('50000'+13, 0, 6, 530, 0, 0, 9738.28, -7454.19, 13.5605, 0.043914),
('50000'+14, 0, 6, 0, 0, 0, -5163.54, 925.423, 257.181, 1.57423),
('50000'+15, 0, 6, 0, 0, 0, -11209.6, 1666.54, 24.6974, 1.42053),
('50000'+16, 0, 6, 0, 0, 0, -8799.15, 832.718, 97.6348, 6.04085),
('50000'+17, 0, 6, 1, 0, 0, 1811.78, -4410.5, -18.4704, 5.20165),
('50000'+18, 0, 6, 1, 0, 0, -4657.3, -2519.35, 81.0529, 4.54808),
('50000'+19, 0, 6, 1, 0, 0, -4470.28, -1677.77, 81.3925, 1.16302),
('50000'+20, 0, 6, 0, 0, 0, 2873.15, -764.523, 160.332, 5.10447),
('50000'+21, 0, 6, 0, 0, 0, -234.675, 1561.63, 76.8921, 1.24031),
('50000'+22, 0, 6, 1, 0, 0, -731.607, -2218.39, 17.0281, 2.78486),
('50000'+23, 0, 6, 1, 0, 0, 4249.99, 740.102, -25.671, 1.34062),
('50000'+24, 0, 6, 0, 0, 0, -7179.34, -921.212, 165.821, 5.09599),
('50000'+25, 0, 6, 0, 0, 0, -7527.05, -1226.77, 285.732, 5.29626),
('50000'+26, 0, 6, 1, 0, 0, -3520.14, 1119.38, 161.025, 4.70454),
('50000'+27, 0, 6, 1, 0, 0, -1421.42, 2907.83, 137.415, 1.70718),
('50000'+28, 0, 6, 0, 0, 0, 1269.64, -2556.21, 93.6088, 0.620623),
('50000'+29, 0, 6, 0, 0, 0, 3352.92, -3379.03, 144.782, 6.25978),
('50000'+30, 0, 6, 0, 0, 0, -10177.9, -3994.9, -111.239, 6.01885),
('50000'+31, 0, 6, 0, 0, 0, -6071.37, -2955.16, 209.782, 0.015708),
('50000'+32, 0, 6, 1, 0, 0, -6801.19, -2893.02, 9.00388, 0.158639),
('50000'+33, 0, 6, 530, 0, 0, -3324.49, 4943.45, -101.239, 4.63901),
('50000'+34, 0, 6, 1, 0, 0, -8369.65, -4253.11, -204.272, -2.70526),
('50000'+35, 0, 6, 530, 0, 0, 738.865, 6865.77, -69.4659, 6.27655),
('50000'+36, 0, 6, 530, 0, 0, -347.29, 3089.82, 21.394, 5.68114),
('50000'+37, 0, 6, 530, 0, 0, 12884.6, -7317.69, 65.5023, 4.799),
('50000'+38, 0, 6, 530, 0, 0, 3100.48, 1536.49, 190.3, 4.62226),
('50000'+39, 0, 6, 571, 0, 0, 3707.86, 2150.23, 36.76, 3.22),
('50000'+40, 0, 6, 1, 0, 0, -8756.39, -4440.68, -199.489, 4.66289),
('50000'+41, 0, 6, 571, 0, 0, 8590.95, 791.792, 558.235, 3.13127),
('50000'+42, 0, 6, 571, 0, 0, 4765.59, -2038.24, 229.363, 0.887627),
('50000'+43, 0, 6, 571, 0, 0, 6722.44, -4640.67, 450.632, 3.91123),
('50000'+44, 0, 6, 571, 0, 0, 5643.16, 2028.81, 798.274, 4.60242),
('50000'+45, 0, 6, 571, 0, 0, 3782.89, 6965.23, 105.088, 6.14194),
('50000'+46, 0, 6, 571, 0, 0, 5693.08, 502.588, 652.672, 4.0229),
('50000'+47, 0, 6, 571, 0, 0, 9136.52, -1311.81, 1066.29, 5.19113),
('50000'+48, 0, 6, 571, 0, 0, 8922.12, -1009.16, 1039.56, 1.57044),
('50000'+49, 0, 6, 571, 0, 0, 1203.41, -4868.59, 41.2486, 0.283237),
('50000'+50, 0, 6, 571, 0, 0, 1267.24, -4857.3, 215.764, 3.22768),
('50000'+51, 0, 6, 530, 0, 0, -3649.92, 317.469, 35.2827, 2.94285),
('50000'+52, 0, 6, 229, 0, 0, 152.451, -474.881, 116.84, 0.001073),
('50000'+53, 0, 6, 1, 0, 0, -8177.89, -4181.23, -167.552, 0.913338),
('50000'+54, 0, 6, 530, 0, 0, 797.855, 6865.77, -65.4165, 0.005938),
('50000'+55, 0, 6, 571, 0, 0, 8515.61, 714.153, 558.248, 1.57753),
('50000'+56, 0, 6, 530, 0, 0, 3530.06, 5104.08, 3.50861, 5.51117),
('50000'+57, 0, 6, 530, 0, 0, -336.411, 3130.46, -102.928, 5.20322),
('50000'+58, 0, 6, 571, 0, 0, 5855.22, 2102.03, 635.991, 3.57899),
('50000'+59, 0, 6, 0, 0, 0, -11118.9, -2010.33, 47.0819, 0.649895),
('50000'+60, 0, 6, 230, 0, 0, 1126.64, -459.94, -102.535, 3.46095),
('50000'+61, 0, 6, 571, 0, 0, 3668.72, -1262.46, 243.622, 4.785),
('50000'+62, 0, 6, 1, 0, 0, -4708.27, -3727.64, 54.5589, 3.72786),
('50000'+63, 0, 6, 1, 0, 0, -8409.82, 1499.06, 27.7179, 2.51868),
('50000'+64, 0, 6, 530, 0, 0, 12574.1, -6774.81, 15.0904, 3.13788),
('50000'+65, 0, 6, 530, 0, 0, 3088.49, 1381.57, 184.863, 4.61973),
('50000'+66, 0, 6, 1, 0, 0, -8240.09, 1991.32, 129.072, 0.941603),
('50000'+67, 0, 6, 571, 0, 0, 3784.17, 7028.84, 161.258, 5.79993),
('50000'+68, 0, 6, 571, 0, 0, 3472.43, 264.923, -120.146, 3.27923),
('50000'+69, 0, 6, 571, 0, 0, 9222.88, -1113.59, 1216.12, 6.27549),
('50000'+70, 0, 6, 571, 0, 0, 5453.72, 2840.79, 421.28, 0),
('50000'+72, 0, 6, 0, 0, 0, -11916.7, -1215.72, 92.289, 4.72454),
('50000'+73, 0, 6, 530, 0, 0, 6851.78, -7972.57, 179.242, 4.64691),
('50000'+74, 0, 6, 0, 0, 0, -9449.06, 64.8392, 56.3581, 3.07047),
('50000'+75, 0, 6, 530, 0, 0, 9024.37, -6682.55, 16.8973, 3.14131),
('50000'+76, 0, 6, 0, 0, 0, -5603.76, -482.704, 396.98, 5.23499),
('50000'+77, 0, 6, 0, 0, 0, 2274.95, 323.918, 34.1137, 4.24367),
('50000'+78, 0, 6, 530, 0, 0, 7595.73, -6819.6, 84.3718, 2.56561),
('50000'+79, 0, 6, 0, 0, 0, -5405.85, -2894.15, 341.972, 5.48238),
('50000'+80, 0, 6, 0, 0, 0, 505.126, 1504.63, 124.808, 1.77987),
('50000'+81, 0, 6, 0, 0, 0, -10684.9, 1033.63, 32.5389, 6.07384),
('50000'+82, 0, 6, 0, 0, 0, -9447.8, -2270.85, 71.8224, 0.283853),
('50000'+83, 0, 6, 0, 0, 0, -10531.7, -1281.91, 38.8647, 1.56959),
('50000'+84, 0, 6, 0, 0, 0, -385.805, -787.954, 54.6655, 1.03926),
('50000'+85, 0, 6, 0, 0, 0, -3517.75, -913.401, 8.86625, 2.60705),
('50000'+86, 0, 6, 0, 0, 0, 275.049, -652.044, 130.296, 0.502032),
('50000'+87, 0, 6, 0, 0, 0, -1581.45, -2704.06, 35.4168, 0.490373),
('50000'+88, 0, 6, 0, 0, 0, -11921.7, -59.544, 39.7262, 3.73574),
('50000'+89, 0, 6, 0, 0, 0, -6782.56, -3128.14, 240.48, 5.65912),
('50000'+90, 0, 6, 0, 0, 0, -10368.6, -2731.3, 21.6537, 5.29238),
('50000'+91, 0, 6, 0, 0, 0, 112.406, -3929.74, 136.358, 0.981903),
('50000'+92, 0, 6, 0, 0, 0, -6686.33, -1198.55, 240.027, 0.916887),
('50000'+93, 0, 6, 0, 0, 0, -11184.7, -3019.31, 7.29238, 3.20542),
('50000'+94, 0, 6, 0, 0, 0, -7979.78, -2105.72, 127.919, 5.10148),
('50000'+95, 0, 6, 0, 0, 0, 1743.69, -1723.86, 59.6648, 5.23722),
('50000'+96, 0, 6, 0, 0, 0, 2280.64, -5275.05, 82.0166, 4.7479),
('50000'+97, 0, 6, 530, 0, 0, 12806.5, -6911.11, 41.1156, 2.22935),
('50000'+98, 0, 6, 530, 0, 0, -4192.62, -12576.7, 36.7598, 1.62813),
('50000'+99, 0, 6, 1, 0, 0, 9889.03, 915.869, 1307.43, 1.9336),
('50000'+100, 0, 6, 1, 0, 0, 228.978, -4741.87, 10.1027, 0.416883),
('50000'+101, 0, 6, 1, 0, 0, -2473.87, -501.225, -9.42465, 0.6525),
('50000'+102, 0, 6, 530, 0, 0, -2095.7, -11841.1, 51.1557, 6.19288),
('50000'+103, 0, 6, 1, 0, 0, 6463.25, 683.986, 8.92792, 4.33534),
('50000'+104, 0, 6, 1, 0, 0, -575.772, -2652.45, 95.6384, 0.006469),
('50000'+105, 0, 6, 1, 0, 0, 1574.89, 1031.57, 137.442, 3.8013),
('50000'+106, 0, 6, 1, 0, 0, 1919.77, -2169.68, 94.6729, 6.14177),
('50000'+107, 0, 6, 1, 0, 0, -5375.53, -2509.2, -40.432, 2.41885),
('50000'+108, 0, 6, 1, 0, 0, -656.056, 1510.12, 88.3746, 3.29553),
('50000'+109, 0, 6, 1, 0, 0, -3350.12, -3064.85, 33.0364, 5.12666),
('50000'+110, 0, 6, 1, 0, 0, -4808.31, 1040.51, 103.769, 2.90655),
('50000'+111, 0, 6, 1, 0, 0, -6940.91, -3725.7, 48.9381, 3.11174),
('50000'+112, 0, 6, 1, 0, 0, 3117.12, -4387.97, 91.9059, 5.49897),
('50000'+113, 0, 6, 1, 0, 0, 3898.8, -1283.33, 220.519, 6.24307),
('50000'+114, 0, 6, 1, 0, 0, -6291.55, -1158.62, -258.138, 0.457099),
('50000'+115, 0, 6, 1, 0, 0, -6815.25, 730.015, 40.9483, 2.39066),
('50000'+116, 0, 6, 1, 0, 0, 6658.57, -4553.48, 718.019, 5.18088),
('50000'+117, 0, 6, 530, 0, 0, -207.335, 2035.92, 96.464, 1.59676),
('50000'+118, 0, 6, 530, 0, 0, -220.297, 5378.58, 23.3223, 1.61718),
('50000'+119, 0, 6, 530, 0, 0, -2266.23, 4244.73, 1.47728, 3.68426),
('50000'+120, 0, 6, 530, 0, 0, -1610.85, 7733.62, -17.2773, 1.33522),
('50000'+121, 0, 6, 530, 0, 0, 2029.75, 6232.07, 133.495, 1.30395),
('50000'+122, 0, 6, 530, 0, 0, 3271.2, 3811.61, 143.153, 3.44101),
('50000'+123, 0, 6, 530, 0, 0, -3681.01, 2350.76, 76.587, 4.25995),
('50000'+124, 0, 6, 571, 0, 0, 2954.24, 5379.13, 60.4538, 2.55544),
('50000'+125, 0, 6, 571, 0, 0, 682.848, -3978.3, 230.161, 1.54207),
('50000'+126, 0, 6, 571, 0, 0, 2678.17, 891.826, 4.37494, 0.101121),
('50000'+127, 0, 6, 571, 0, 0, 4017.35, -3403.85, 290, 5.35431),
('50000'+128, 0, 6, 571, 0, 0, 5560.23, -3211.66, 371.709, 5.55055),
('50000'+129, 0, 6, 571, 0, 0, 5614.67, 5818.86, -69.722, 3.60807),
('50000'+130, 0, 6, 571, 0, 0, 5411.17, -966.37, 167.082, 1.57167),
('50000'+132, 0, 6, 571, 0, 0, 6120.46, -1013.89, 408.39, 5.12322),
('50000'+133, 0, 6, 571, 0, 0, 8323.28, 2763.5, 655.093, 2.87223),
('50000'+134, 0, 6, 571, 0, 0, 4522.23, 2828.01, 389.975, 0.215009);

delete from creature WHERE ID = '190000';

ALTER TABLE creature AUTO_INCREMENT=200000;
Replace INTO creature (id, map, spawnMask, phaseMask, modelid, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana) VALUES
('190000', 0, 1, 1, 0, -13180.5, 342.503, 43.1936, 4.32977, 25, 0, 13700, 6540), 
('190000', 530, 1, 1, 0, -3862.69, -11645.8, -137.629, 2.38273, 25, 0, 13700, 6540), 
('190000', 0, 1, 1, 0, -4898.37, -965.118, 501.447, 2.25986, 25, 0, 13700, 6540), 
('190000', 0, 1, 1, 0, -8845.09, 624.828, 94.2999, 0.44062, 25, 0, 13700, 6540), 
('190000', 1, 1, 1, 0, 1599.25, -4375.85, 10.0872, 5.23641, 25, 0, 13700, 6540), 
('190000', 1, 1, 1, 0, -1277.65, 72.9751, 128.742, 5.95567, 25, 0, 13700, 6540), 
('190000', 0, 1, 1, 0, 1637.21, 240.132, -43.1034, 3.13147, 25, 0, 13700, 6540), 
('190000', 530, 1, 1, 0, 9741.67, -7454.19, 13.5572, 3.14231, 25, 0, 13700, 6540), 
('190000', 571, 1, 1, 0, 5807.06, 506.244, 657.576, 5.54461, 25, 0, 13700, 6540), 
('190000', 1, 1, 1, 0, 9866.83, 2494.66, 1315.88, 5.9462, 25, 0, 13700, 6540), 
('190000', 0, 1, 1, 0, -14279.8, 555.014, 8.90011, 3.97606, 25, 0, 13700, 6540), 
('190000', 530, 1, 1, 0, -1888.65, 5355.88, -12.4279, 1.25883, 25, 0, 13700, 6540);

SET @RUNE := 194394;

delete from gameobject WHERE ID=@RUNE and guid>199999;

ALTER TABLE gameobject AUTO_INCREMENT=200000;
Replace INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecs, state) VALUES
(@RUNE, 1, 1, 1, 1601.08, -4378.69, 9.9846, 2.14362, 0.878068, 0.478536, 25, 1), 
(@RUNE, 0, 1, 1, -14281.9, 552.564, 8.90382, 0.860144, 0.416936, 0.908936, 25, 1), 
(@RUNE, 0, 1, 1, -8842.09, 626.358, 94.0868, 3.61363, 0.972276, -0.233836, 25, 1), 
(@RUNE, 0, 1, 1, -4900.47, -962.585, 501.455, 5.40538, 0.424947, -0.905218, 25, 1), 
(@RUNE, 1, 1, 1, 9869.91, 2493.58, 1315.88, 5.9462, 0.167696, -0.985839, 25, 1), 
(@RUNE, 530, 1, 1, -3864.92, -11643.7, -137.644, 2.38273, 0.928875, 0.370392, 25, 1), 
(@RUNE, 530, 1, 1, -1887.62, 5359.09, -12.4279, 4.40435, 0.758205, 0.652017, 25, 1), 
(@RUNE, 571, 1, 1, 5809.55, 503.975, 657.526, 5.54461, 0.360952, -0.932584, 25, 1), 
(@RUNE, 530, 1, 1, 9738.28, -7454.19, 13.5605, 3.14231, 1, -0.000358625, 25, 1), 
(@RUNE, 0, 1, 1, 1633.75, 240.167, -43.1034, 3.13147, 0.999987, 0.00506132, 25, 1), 
(@RUNE, 0, 1, 1, -13181.8, 339.356, 42.9805, 1.18013, 0.556415, 0.830904, 25, 1), 
(@RUNE, 1, 1, 1, -1274.45, 71.8601, 128.159, 2.80623, 0.985974, 0.166898, 25, 1);

/*
Portal Master
By Rochet2
Downloaded from http://projectcode.zzl.org/
Bugs and contact with E-mail: Rochet2@post.com
*/
