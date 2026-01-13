/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"minecraft:book",
"minecraft:paper",
"minecraft:map",
"minecraft:compass",
"minecraft:book#0",
"actuallyadditions:batWings"
] as string[];

val removedEntriesBees = [
"bee_steadfast_drone",
"bee_monastic_drone",
"empty"
] as string[];

val addedEntries = [
<betterwithmods:bat_wing>,
<actuallyadditions:item_solidified_experience>,
<primal:plant_cloth>,
<primal:hide_raw>
] as IItemStack[];

val originalTable = LootTweaker.getTable("minecraft:chests/stronghold_library");
val newTable = originalTable.addPool("gag", 6, 18, 0, 0);

for entry in removedEntries {
    originalTable.getPool("main").removeEntry(entry);
}

for entry in removedEntriesBees {
    originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
}

for entry in addedEntries {
    newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
}