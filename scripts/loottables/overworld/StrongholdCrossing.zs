/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

static removedEntries  as string[] = [
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:redstone",
"minecraft:coal",
"minecraft:iron_pickaxe",
"minecraft:book"
];

static removedEntriesBees  as string[] = [
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
    val originalTable = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
    val newTable = originalTable.addPool("gag", 3, 8, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in removedEntriesBees {
        originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
    }

    originalTable.getPool("moms_spaghetti").removeEntry("moms_spaghetti");

    for entry in addedEntries {
        newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
    }
}