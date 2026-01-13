/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

static removedEntries as string[] = [
"minecraft:golden_apple",
"minecraft:golden_apple#0",
"minecraft:record_13",
"minecraft:record_cat",
"minecraft:golden_horse_armor",
"minecraft:iron_horse_armor",
"minecraft:diamond_horse_armor",
"minecraft:book",
"actuallyadditions:crystalItems",
"actuallyadditions:crystalBlocks",
"actuallyadditions:drillCore",
"actuallyadditions:quartz"
];

static removedEntriesPool1 as string[] = [
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:bucket",
"minecraft:redstone",
"minecraft:coal"
];

static removedEntriesBees as string[] = [
"bee_steadfast_drone",
"empty"
];

static addedEntries as IItemStack[] = [
<betterwithmods:bat_wing>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>
];

function init() {
    val originalTable = LootTweaker.getTable("minecraft:chests/simple_dungeon");
    val newTable = originalTable.addPool("gag", 1, 8, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in removedEntriesPool1 {
        originalTable.getPool("pool1").removeEntry(entry);
    }

    for entry in removedEntriesBees {
        originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
    }

    for entry in addedEntries {
        newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
    }
}