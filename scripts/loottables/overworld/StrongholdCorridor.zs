/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

static removedEntries as string[] = [
"minecraft:ender_pearl",
"minecraft:diamond",
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:redstone",
"minecraft:bread",
"minecraft:apple",
"minecraft:iron_pickaxe",
"minecraft:iron_sword",
"minecraft:iron_chestplate",
"minecraft:iron_helmet",
"minecraft:iron_leggings",
"minecraft:iron_boots",
"minecraft:golden_apple",
"minecraft:saddle",
"minecraft:iron_horse_armor",
"minecraft:golden_horse_armor",
"minecraft:diamond_horse_armor",
"minecraft:book"
];

static removedEntriesBees as string[] = [
"bee_steadfast_drone",
"empty"
];

static addedEntries as IItemStack[] = [
<betterwithmods:bat_wing>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>,
<primal:plant_cloth>,
<primal:hide_raw>
];

function init() {
    val originalTable = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
    val newTable = originalTable.addPool("gag", 3, 8, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in removedEntriesBees {
        originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
    }

    for entry in addedEntries {
        newTable.addItemEntry(entry, 20);
    }
}