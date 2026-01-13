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
"minecraft:book",
"minecraft:iron_pickaxe",
"empty",
"actuallyadditions:crystalItems",
"actuallyadditions:crystalBlocks",
"actuallyadditions:drillCore"
];

static removedEntriesPool1 as string[] = [
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:redstone",
"minecraft:dye",
"minecraft:diamond",
"minecraft:coal"
];

static removedEntriesPool2 as string[] = [
"minecraft:rail",
"minecraft:golden_rail",
"minecraft:detector_rail",
"minecraft:activator_rail",
"minecraft:torch"
];

static removedEntriesBees as string[] = [
"bee_steadfast_drone",
"empty"
];

static removedEntriesStorage as string[] = [
"forestry:miner_bag",
"empty"
];

static removedEntriesFactory as string[] = [
"forestry:broken_bronze_shovel",
"forestry:broken_bronze_pickaxe",
"forestry:kit_pickaxe",
"forestry:kit_shovel",
"empty"
];

static addedEntries as IItemStack[] = [
<betterwithmods:bat_wing>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>,
<minecraft:string>,
<minecraft:flint>,
<totemic:totem_torch>
];

function init() {
    val originalTable = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
    val newTable = originalTable.addPool("gag", 3, 8, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in removedEntriesBees {
        originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
    }

    for entry in removedEntriesStorage {
        originalTable.getPool("forestry_storage_items").removeEntry(entry);
    }

    for entry in removedEntriesFactory {
        originalTable.getPool("forestry_factory_items").removeEntry(entry);
    }

    for entry in addedEntries {
        newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
    }

    newTable.addItemEntry(<primal:sharp_bone>, 25);
}