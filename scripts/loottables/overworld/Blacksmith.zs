/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

static removedEntries as string[] = [
"minecraft:diamond",
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:iron_pickaxe",
"minecraft:iron_sword",
"minecraft:iron_chestplate",
"minecraft:iron_helmet",
"minecraft:iron_leggings",
"minecraft:iron_boots",
"minecraft:obsidian",
"minecraft:saddle",
"minecraft:iron_horse_armor",
"minecraft:golden_horse_armor",
"minecraft:diamond_horse_armor",
"actuallyadditions:drillCore",
"actuallyadditions:quartz"
];

static addedEntries as IItemStack[] = [
<forestry:humus>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>
];

function init() {
    val originalTable = LootTweaker.getTable("minecraft:chests/village_blacksmith");
    val newTable = originalTable.addPool("gag", 5, 14, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in addedEntries {
        newTable.addItemEntry(entry, 18, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
    }

    newTable.addItemEntry(<primal:sharp_bone>, 25);
}