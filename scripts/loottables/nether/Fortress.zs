/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

static removedEntries as string[] = [
"minecraft:golden_sword",
"minecraft:saddle",
"actuallyadditions:crystalItems",
"actuallyadditions:crystalBlocks",
"actuallyadditions:drillCore",
"actuallyadditions:batWings"
];

static addedEntries as IItemStack[] = [
<forestry:humus>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>,
<gregtech:meta_ingot:100>,
<gregtech:meta_ingot:69>,
<gregtech:meta_gem:314>,
<gregtech:meta_gem:2005>,
<gregtech:meta_gem:2017>,
<gregtech:meta_gem:311>,
<gregtech:meta_ingot:2012>,
<gregtech:meta_nugget:2012>
];

function init() {
    val originalTable = LootTweaker.getTable("minecraft:chests/nether_bridge");
    val newTable = originalTable.addPool("primal", 5, 14, 0, 0);

    for entry in removedEntries {
        originalTable.getPool("main").removeEntry(entry);
    }

    for entry in addedEntries {
        newTable.addItemEntry(entry, 18, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
    }

    newTable.addItemEntry(<primal:sharp_bone>, 25);
}