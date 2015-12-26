-- ============================================================================================
-- ====     TBC-DB UPDATE PACK 1.4.2 "Happyplace Houserules" FOR CMANGOS-TBC (2.4.3) CLIENT     ====
-- ============================================================================================

/* Copyright (C) 2009-2014 TBC-DB Project <http://udb.no-ip.org/>
 * Copyright (C) 2007-2014 UDB Project <http://udb.no-ip.org/>
 * Copyright (C) 2006-2014 ScriptDev2 <http://www.scriptdev2.com/>
 * Copyright (C) 2008-2014 ACID Project <http://www.scriptdev2.com/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License','or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not,write to the Free Software
 * Foundation,Inc.,59 Temple Place,Suite 330,Boston,MA  02111-1307  USA
 */

-- ===========
-- PATCH NOTES 
-- ===========
-- Add stuff for the Onwards to Outlands level 60 boost quest
-- Populate GM Island (vendors, trainers)


-- =========================
-- Onwards to Outlands quest
-- =========================
-- Requires custom ItemExtendedCost.dbc, Spell.dbc, SkillLineAbility.dbc
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32005, 32001);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32004, 32001);


INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
(40022, 15, 0, -1, 'GM Island Token: Weapon', 36597, 2, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0),
(40023, 15, 0, -1, 'GM Island Token: Armor', 36597, 2, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0),
(40021, 15, 0, -1, 'GM Island Token: Profession', 36597, 2, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES
(32001, 2, 876, 1, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onward to Outlands', 'Greetings $c,\r\n\r\n\r\nNo doubt you are aware of the wars that continue to rage on Azeroth - there are however some problems away from your home which may be of greater threat than you realise...\r\n\r\nAs we speak, heroes of the Alliance and Horde alike travel to Outlands to do battle with the evils therein.\r\n\r\nIf you wish to lend immediate aid in Outlands, please first use this portal beside me to travel to GM Island.  On GM Island you will find your training and fitting of armour highly accelerated.\r\n\r\nA WORD OF CAUTION: should you proceed, you will undergo irreversible amounts of training which may render many challenges here on Azeroth trivial at best.\r\n\r\nMeet me at GM Island if you wish to proceed.\r\n', 'Meet the Outlands Emissary on GM Island.', 'Welcome, $c.\r\n\r\nEverything you need to get started can be found upstairs.  When you have finished, please use your hearthstone to return back to your homeland.\r\n\r\nOh and hero... good luck.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500000, 20300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET `RewItemId1` = '40021',
`RewItemId2` = '40022',
`RewItemId3` = '40023',
`RewItemCount1` = '3',
`RewItemCount2` = '5',
`RewItemCount3` = '2' WHERE `quest_template`.`entry` =32001;

UPDATE `spell_target_position`
SET `target_map`="1", `target_position_x`="16200.7", `target_position_y`="16205", `target_position_z`="0.15", `target_orientation`="0"
WHERE `id`="29216";

-- ==============
-- GM Island NPCs
-- ==============
INSERT INTO `creature_template` (`Entry`, `HeroicEntry`, `KillCredit1`, `KillCredit2`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `Name`, `SubName`, `IconName`, `GossipMenuId`, `MinLevel`, `MaxLevel`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `Armor`, `FactionAlliance`, `FactionHorde`, `NpcFlags`, `SpeedWalk`, `SpeedRun`, `Scale`, `Rank`, `MinMeleeDmg`, `MaxMeleeDmg`, `DamageSchool`, `MeleeAttackPower`, `DamageMultiplier`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `UnitClass`, `UnitFlags`, `DynamicFlags`, `Family`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `MinRangedDmg`, `MaxRangedDmg`, `RangedAttackPower`, `CreatureType`, `CreatureTypeFlags`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MinLootGold`, `MaxLootGold`, `AIName`, `MovementType`, `InhabitType`, `HealthMultiplier`, `RacialLeader`, `EquipmentTemplateId`, `TrainerTemplateId`, `VendorTemplateId`, `MechanicImmuneMask`, `ExtraFlags`, `ScriptName`) VALUES
(32001, 0, 0, 0, 17870, 0, 17870, 0, 'L''uru', NULL, NULL, 0, 72, 72, 7300, 7300, 0, 0, 0, 1741, 1741, 128, 1, 1.14286, 1, 3, 286, 464, 0, 173, 1, 2000, 0, 1, 256, 0, 0, 0, 0, 0, 0, 338.087, 471.323, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0, 0, 0, 2, ''),
(32006, 0, 0, 0, 2197, 0, 2197, 0, 'Ilaria Moonsong', 'Weapon Master', NULL, 0, 72, 72, 7800, 7800, 0, 0, 0, 35, 35, 16, 1, 1.14286, 1, 1, 292, 333, 0, 144, 1, 1500, 0, 1, 4096, 0, 0, 2, 0, 0, 0, 55.36, 76.12, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 5256, 32002, 0, 0, 2, ''),
(32011, 0, 0, 0, 10912, 0, 10912, 0, 'Motley', 'Foraged Treasures', NULL, 0, 72, 72, 7300, 7300, 0, 0, 0, 35, 35, 128, 1, 1.14286, 1, 1, 286, 464, 0, 173, 1, 2000, 0, 1, 256, 0, 0, 0, 0, 0, 0, 338.087, 471.323, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0, 0, 0, 0, ''),
(32012, 0, 0, 0, 757, 0, 757, 0, 'Steve', 'Riding Trainer', NULL, 0, 72, 72, 7300, 7300, 0, 0, 0, 35, 35, 16, 1, 1.14286, 1, 1, 286, 464, 0, 173, 1, 2000, 0, 1, 256, 0, 0, 1, 0, 0, 0, 338.087, 471.323, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 32003, 0, 0, 0, ''),
(32013, 0, 0, 0, 282, 0, 282, 0, 'Joseph Ainseworth', 'Weapon Vendor', NULL, 0, 72, 72, 7300, 7300, 0, 0, 0, 35, 35, 128, 1, 1.14286, 1, 1, 286, 464, 0, 173, 1, 2000, 0, 1, 256, 0, 0, 0, 0, 0, 0, 338.087, 471.323, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1400321, 32012, 1, 1, 0, 0, 16238.7, 16291.8, 22.93, 1.48435, 25, 0, 0, 7300, 0, 0, 0),
(1400320, 32011, 1, 1, 0, 0, 16241.9, 16291.5, 22.9319, 1.46472, 25, 0, 0, 7300, 0, 0, 0),
(1400316, 32006, 1, 1, 0, 5256, 16253.8, 16312.3, 20.8458, 3.51225, 25, 0, 0, 7800, 0, 0, 0),
(1400313, 26329, 1, 1, 0, 0, 16228.3, 16305.5, 29.2615, 1.4333, 25, 0, 0, 1, 0, 0, 0),
(1400308, 26325, 1, 1, 0, 0, 16229.7, 16306.6, 29.2625, 3.03943, 25, 0, 0, 1, 0, 0, 0),
(1400307, 26332, 1, 1, 0, 0, 16227.6, 16306.9, 29.261, 6.16924, 25, 0, 0, 1, 0, 0, 0),
(1400305, 26331, 1, 1, 0, 0, 16231.1, 16290.9, 22.1233, 2.05376, 25, 0, 0, 1, 0, 0, 0),
(1400304, 26326, 1, 1, 0, 0, 16253.2, 16299.3, 20.8439, 6.21244, 25, 0, 0, 1, 0, 0, 0),
(1400303, 26324, 1, 1, 0, 0, 16216.8, 16280.3, 20.9218, 3.66462, 25, 0, 0, 1, 0, 0, 0),
(1400302, 26330, 1, 1, 0, 0, 16217.3, 16279.2, 20.9232, 3.59393, 25, 0, 0, 1, 0, 0, 0),
(1400301, 26328, 1, 1, 0, 0, 16225.7, 16276.4, 20.9176, 3.17374, 25, 0, 0, 1, 0, 0, 0),
(1400300, 26327, 1, 1, 0, 0, 16224, 16276.4, 20.9147, 0.149958, 25, 0, 0, 1, 0, 0, 0),
(1400290, 32001, 1, 1, 0, 0, 16253.7, 16305.2, 20.8446, 3.10698, 25, 0, 0, 7300, 0, 0, 0),
(1400351, 32013, 1, 1, 0, 0, 16253.9, 16309.3, 20.8443, 3.11326, 25, 0, 0, 7300, 0, 0, 0);
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(32002, 196, 0, 0, 0, 0),
(32002, 197, 0, 0, 0, 0),
(32002, 198, 0, 0, 0, 0),
(32002, 199, 0, 0, 0, 0),
(32002, 201, 0, 0, 0, 0),
(32002, 202, 0, 0, 0, 0),
(32002, 227, 0, 0, 0, 0),
(32002, 264, 0, 0, 0, 0),
(32002, 266, 0, 0, 0, 0),
(32002, 2567, 0, 0, 0, 0),
(32002, 5011, 0, 0, 0, 0),
(32002, 15590, 0, 0, 0, 0),
(32003, 33388, 0, 0, 0, 60),
(32003, 33391, 0, 0, 0, 60);

-- ==================
-- Class starter kits
-- ==================
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(502, 16706, 100, 0, 1, 1, 0),
(502, 16714, 100, 0, 1, 1, 0),
(502, 16716, 100, 0, 1, 1, 0),
(502, 16717, 100, 0, 1, 1, 0),
(502, 16718, 100, 0, 1, 1, 0),
(502, 16719, 100, 0, 1, 1, 0),
(502, 16720, 100, 0, 1, 1, 0),
(502, 16715, 100, 0, 1, 1, 0),
(503, 16682, 100, 0, 1, 1, 0),
(503, 16683, 100, 0, 1, 1, 0),
(503, 16684, 100, 0, 1, 1, 0),
(503, 16685, 100, 0, 1, 1, 0),
(503, 16686, 100, 0, 1, 1, 0),
(503, 16687, 100, 0, 1, 1, 0),
(503, 16688, 100, 0, 1, 1, 0),
(503, 16689, 100, 0, 1, 1, 0),
(504, 16674, 100, 0, 1, 1, 0),
(504, 16675, 100, 0, 1, 1, 0),
(504, 16676, 100, 0, 1, 1, 0),
(504, 16677, 100, 0, 1, 1, 0),
(504, 16678, 100, 0, 1, 1, 0),
(504, 16679, 100, 0, 1, 1, 0),
(504, 16680, 100, 0, 1, 1, 0),
(504, 16681, 100, 0, 1, 1, 0),
(505, 16722, 100, 0, 1, 1, 0),
(505, 16723, 100, 0, 1, 1, 0),
(505, 16724, 100, 0, 1, 1, 0),
(505, 16725, 100, 0, 1, 1, 0),
(505, 16726, 100, 0, 1, 1, 0),
(505, 16727, 100, 0, 1, 1, 0),
(505, 16728, 100, 0, 1, 1, 0),
(505, 16729, 100, 0, 1, 1, 0),
(506, 16690, 100, 0, 1, 1, 0),
(506, 16691, 100, 0, 1, 1, 0),
(506, 16692, 100, 0, 1, 1, 0),
(506, 16693, 100, 0, 1, 1, 0),
(506, 16694, 100, 0, 1, 1, 0),
(506, 16695, 100, 0, 1, 1, 0),
(506, 16696, 100, 0, 1, 1, 0),
(506, 16697, 100, 0, 1, 1, 0),
(507, 16707, 100, 0, 1, 1, 0),
(507, 16708, 100, 0, 1, 1, 0),
(507, 16709, 100, 0, 1, 1, 0),
(507, 16710, 100, 0, 1, 1, 0),
(507, 16711, 100, 0, 1, 1, 0),
(507, 16712, 100, 0, 1, 1, 0),
(507, 16713, 100, 0, 1, 1, 0),
(507, 16721, 100, 0, 1, 1, 0),
(508, 16666, 100, 0, 1, 1, 0),
(508, 16667, 100, 0, 1, 1, 0),
(508, 16668, 100, 0, 1, 1, 0),
(508, 16669, 100, 0, 1, 1, 0),
(508, 16670, 100, 0, 1, 1, 0),
(508, 16671, 100, 0, 1, 1, 0),
(508, 16672, 100, 0, 1, 1, 0),
(508, 16673, 100, 0, 1, 1, 0),
(509, 16698, 100, 0, 1, 1, 0),
(509, 16699, 100, 0, 1, 1, 0),
(509, 16700, 100, 0, 1, 1, 0),
(509, 16701, 100, 0, 1, 1, 0),
(509, 16702, 100, 0, 1, 1, 0),
(509, 16703, 100, 0, 1, 1, 0),
(509, 16704, 100, 0, 1, 1, 0),
(509, 16705, 100, 0, 1, 1, 0),
(510, 16730, 100, 0, 1, 1, 0),
(510, 16731, 100, 0, 1, 1, 0),
(510, 16732, 100, 0, 1, 1, 0),
(510, 16733, 100, 0, 1, 1, 0),
(510, 16734, 100, 0, 1, 1, 0),
(510, 16735, 100, 0, 1, 1, 0),
(510, 16736, 100, 0, 1, 1, 0),
(510, 16737, 100, 0, 1, 1, 0),
(511, 13098, 100, 0, 1, 1, 0),
(511, 13373, 100, 0, 1, 1, 0),
(511, 12929, 100, 0, 1, 1, 0),
(511, 13340, 100, 0, 1, 1, 0),
(512, 13283, 100, 0, 1, 1, 0),
(512, 18103, 100, 0, 1, 1, 0),
(512, 13141, 100, 0, 1, 1, 0),
(512, 12967, 100, 0, 1, 1, 0);

-- ==============
-- GM Island loot
-- ==============
-- Make it so players don't profit from vending their free [Rare] kit
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="13167";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="12939";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="12940";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="23124";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="12602";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="18680";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="18376";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="20675";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="13372";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="20666";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="12582";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="22319";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="20672";
UPDATE item_template SET `BuyPrice`="0" WHERE `entry`="13205";

-- Class starter kits
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
(502, 15, 0, 0, 'Starter Kit: Druid', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(503, 15, 0, 0, 'Starter Kit: Mage', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(504, 15, 0, 0, 'Starter Kit: Hunter', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(505, 15, 0, 0, 'Starter Kit: Paladin', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(506, 15, 0, 0, 'Starter Kit: Priest', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(507, 15, 0, 0, 'Starter Kit: Rogue', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(508, 15, 0, 0, 'Starter Kit: Shaman', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(509, 15, 0, 0, 'Starter Kit: Warlock', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(510, 15, 0, 0, 'Starter Kit: Warrior', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(511, 15, 0, 0, 'Jewelry Kit: Melee and Ranged', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, , 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, , 0, 0, 0, 0, 0, 0),
(512, 15, 0, 0, 'Jewelry Kit: Casters and Healers', 44685, 3, 4, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, , 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, , 0, 0, 0, 0, 0, 0),
(515, 15, 0, -1, 'Motley''s Prized Candle', 6677, 4, 0, 1, 99999999, 1, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'You no take..', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0);

-- Scrolls to buff profession skills
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
(40001, 0, 0, -1, 'Scroll of Leatherworking: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 10662, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Leatherworking skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40002, 0, 0, -1, 'Scroll of Tailoring: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 12180, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Tailoring skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40003, 0, 0, -1, 'Scroll of Jewelcrafting: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 28895, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Jewelcrafting skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40004, 0, 0, -1, 'Scroll of Blacksmithing: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 9785, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Blacksmithing skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40008, 0, 0, -1, 'Scroll of Alchemy: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 11611, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Alchemy skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40009, 0, 0, -1, 'Scroll of Herbalism: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 11994, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Herbalism skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40010, 0, 0, -1, 'Scroll of Skinning: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 10768, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Skinning skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40011, 0, 0, -1, 'Scroll of Mining: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 10248, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Mining skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40012, 0, 0, -1, 'Scroll of Engineering: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 12656, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Engineering skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0),
(40013, 0, 0, -1, 'Scroll of Enchanting: Artisan', 3331, 1, 0, 1, 1, 1, 0, -1, -1, 20, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, -1, 0, -1, 13920, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you the Enchanting skill, with a maximum potential of 300.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0);

-- Various other items available for sale
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) VALUES
(32011, 28053, 0, 0, 0, 0),
(32011, 19319, 0, 0, 0, 0),
(32011, 18242, 0, 0, 0, 0),
(32011, 6265, 0, 0, 0, 0),
(32011, 4500, 0, 0, 0, 0),
(32011, 515, 0, 0, 2997, 0),
(32011, 28399, 0, 0, 0, 0),
(32011, 27854, 0, 0, 0, 0),
(32011, 40001, 0, 0, 2999, 0),
(32011, 40002, 0, 0, 2999, 0),
(32011, 40003, 0, 0, 2999, 0),
(32011, 40004, 0, 0, 2999, 0),
(32011, 40008, 0, 0, 2999, 0),
(32011, 40009, 0, 0, 2999, 0),
(32011, 40010, 0, 0, 2999, 0),
(32011, 40011, 0, 0, 2999, 0),
(32011, 40012, 0, 0, 2999, 0),
(32011, 40013, 0, 0, 2999, 0),
(32011, 18245, 0, 0, 0, 0),
(32001, 510, 0, 0, 2997, 0),
(32001, 509, 0, 0, 2997, 0),
(32001, 508, 0, 0, 2997, 0),
(32001, 507, 0, 0, 2997, 0),
(32001, 506, 0, 0, 2997, 0),
(32001, 505, 0, 0, 2997, 0),
(32001, 504, 0, 0, 2997, 0),
(32001, 503, 0, 0, 2997, 0),
(32001, 502, 0, 0, 2997, 0),
(32013, 23124, 0, 0, 2998, 0), 
(32013, 13205, 0, 0, 2998, 0), 
(32013, 18376, 0, 0, 2998, 0),
(32013, 12602, 0, 0, 2998, 0), 
(32013, 13372, 0, 0, 2998, 0), 
(32013, 13167, 0, 0, 2998, 0), 
(32013, 12939, 0, 0, 2998, 0), 
(32013, 12940, 0, 0, 2998, 0), 
(32013, 18680, 0, 0, 2998, 0), 
(32013, 20675, 0, 0, 2998, 0), 
(32013, 12582, 0, 0, 2998, 0), 
(32013, 20666, 0, 0, 2998, 0), 
(32013, 22319, 0, 0, 2998, 0), 
(32013, 20672, 0, 0, 2998, 0),
(32013, 511, 0, 0, 2998, 0),
(32013, 512, 0, 0, 2998, 0);

-- ===================
-- Outlands Emissaries
-- ===================
INSERT INTO `creature_template` (`Entry`, `HeroicEntry`, `KillCredit1`, `KillCredit2`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `Name`, `SubName`, `IconName`, `GossipMenuId`, `MinLevel`, `MaxLevel`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `Armor`, `FactionAlliance`, `FactionHorde`, `NpcFlags`, `SpeedWalk`, `SpeedRun`, `Scale`, `Rank`, `MinMeleeDmg`, `MaxMeleeDmg`, `DamageSchool`, `MeleeAttackPower`, `DamageMultiplier`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `UnitClass`, `UnitFlags`, `DynamicFlags`, `Family`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `MinRangedDmg`, `MaxRangedDmg`, `RangedAttackPower`, `CreatureType`, `CreatureTypeFlags`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MinLootGold`, `MaxLootGold`, `AIName`, `MovementType`, `InhabitType`, `HealthMultiplier`, `RacialLeader`, `EquipmentTemplateId`, `TrainerTemplateId`, `VendorTemplateId`, `MechanicImmuneMask`, `ExtraFlags`, `ScriptName`) VALUES
(32004, 0, 0, 0, 19155, 0, 19155, 0, 'Outlands Emissary', 'Servant of L''uru', NULL, 0, 62, 62, 7200, 7200, 0, 0, 500, 35, 35, 2, 1, 1.14286, 1, 0, 238, 402, 0, 326, 1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 200, 300, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0, 0, 0, 0, ''),
(32005, 0, 0, 0, 19155, 0, 19155, 0, 'Outlands Emissary', 'Servant of L''uru', NULL, 0, 62, 62, 7200, 7200, 0, 0, 500, 35, 35, 2, 1, 1.14286, 1, 0, 238, 402, 0, 326, 1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 200, 300, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0, 0, 0, 0, '');

-- Place one near each racial starting area
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1400330, 32004, 0, 1, 0, 0, -6235.83, 346.215, 383.643, 4.92209, 25, 0, 0, 7200, 0, 0, 0),
(1400331, 32004, 1, 1, 0, 0, -593.607, -4207.52, 38.6137, 3.98982, 25, 0, 0, 7200, 0, 0, 0),
(1400333, 32004, 1, 1, 0, 0, 10344.9, 833.294, 1326.37, 3.05345, 25, 0, 0, 7200, 0, 0, 0),
(1400334, 32004, 530, 1, 0, 0, -3999.4, -13881.5, 91.3101, 5.89282, 25, 0, 0, 7200, 0, 0, 0),
(1400335, 32004, 0, 1, 0, 0, 1715.6, 1601.7, 120.634, 1.79577, 25, 0, 0, 7200, 0, 0, 0),
(1400337, 32004, 0, 1, 0, 0, -8948.13, -146.79, 82.9318, 2.15234, 25, 0, 0, 7200, 0, 0, 0),
(1400338, 32004, 1, 1, 0, 0, -2870.59, -254.035, 53.9165, 3.21228, 25, 0, 0, 7200, 0, 0, 0),
(1400339, 32004, 530, 1, 0, 0, 10327.3, -6390.19, 36.5362, 1.09454, 25, 0, 0, 7200, 0, 0, 0);

-- Place one on GM Island
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1400315, 32005, 1, 1, 0, 0, 16224.3, 16284.2, 13.175, 4.62594, 25, 0, 0, 7200, 0, 0, 0);

-- ====================
-- Portals to GM Island
-- ====================
-- Create game object
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(1000000, 22, 7416, 'Portal to GM Island', '', '', 0, 0, 1, 29216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Place one near each racial starting area
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(200112, 1000000, 530, 1, 10324.7, -6392.06, 36.4807, 1.55635, 0, 0, 0.701981, 0.712196, 25, 100, 1),
(200105, 1000000, 0, 1, -8950.26, -149.003, 82.5775, 5.17376, 0, 0, 0.526697, -0.850053, 25, 100, 1),
(200106, 1000000, 0, 1, -6233.46, 346.93, 383.751, 1.71767, 0, 0, 0.757082, 0.65332, 25, 100, 1),
(200107, 1000000, 1, 1, -589.579, -4208.82, 38.9941, 3.83274, 0, 0, 0.940881, -0.338738, 25, 100, 1),
(200108, 1000000, 1, 1, 10344.8, 831.017, 1326.46, 5.95157, 0, 0, 0.165049, -0.986285, 25, 100, 1),
(200109, 1000000, 530, 1, -4001.11, -13879.2, 90.8651, 2.83762, 0, 0, 0.988473, 0.1514, 25, 100, 1),
(200110, 1000000, 0, 1, 1718.21, 1599.49, 119.929, 1.67953, 0, 0, 0.744486, 0.667638, 25, 100, 1),
(200111, 1000000, 1, 1, -2868.49, -251.471, 53.9165, 3.21228, 0, 0, 0.999376, -0.0353353, 25, 100, 1);
