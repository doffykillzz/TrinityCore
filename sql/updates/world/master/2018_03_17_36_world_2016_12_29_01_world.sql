-- 
-- [Q] The Fel and the Furious -- http://wotlk.openwow.com/?quest=10613
-- Nakansi SAI
SET @ENTRY := 21789;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,10613,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nakansi - On Quest 'The Fel and the Furious' Taken - Run Script");

-- Actionlist SAI
SET @ENTRY := 2178900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.989615,"Nakansi - On Script - Set Oriebtation 5.989615"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nakansi - On Script - Play Emote 25"),
(@ENTRY,9,2,0,0,0,100,0,1000,1000,0,0,1,0,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Nakansi - On Script - Say Line 0"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nakansi - On Script - ReSet Oriebtation");


DELETE FROM `creature_text` WHERE `CreatureID`=21789;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `Comment`) VALUES 
(21789, 0, 0, 'I''ve rigged a few control consoles down the slope. Get one quickly and take control of the fel reaver! You''ll only have a limited amount of time.', 12, 0, 100, 0, 0, 0, 19666, 'Nakansi');

SET @ENTRY := 2179000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plexi - On Script - ReSet Oriebtation");
