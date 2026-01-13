/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"minecraft:coal",
"minecraft:gold_nugget",
"minecraft:stone_axe",
"minecraft:emerald",
"actuallyadditions:batWings"
] as string[];

val removedEntriesBees = [
"bee_steadfast_drone",
"bee_wintry_drone",
"empty"
] as string[];

val addedEntries = [
<forestry:humus>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>
] as IItemStack[];

val originalTable = LootTweaker.getTable("minecraft:chests/igloo_chest");
val newTable = originalTable.addPool("gag", 5, 14, 0, 0);

for entry in removedEntries {
    originalTable.getPool("main").removeEntry(entry);
}

for entry in removedEntriesBees {
    originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
}

originalTable.getPool("pool1").removeEntry("minecraft:golden_apple");

for entry in addedEntries {
    newTable.addItemEntry(entry, 18, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
}

newTable.addItemEntry(<primal:sharp_bone>, 25);