/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"minecraft:diamond",
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:emerald",
"minecraft:bone",
"minecraft:rotten_flesh",
"minecraft:saddle",
"minecraft:iron_horse_armor",
"minecraft:golden_horse_armor",
"minecraft:diamond_horse_armor",
"minecraft:book"
] as string[];

val removedEntriesBees = [
"bee_steadfast_drone",
"bee_tropical_drone",
"empty"
] as string[];

val removedEntriesTrees = [
"forestry:sapling",
"empty"
] as string[];

val addedEntries = [
<betterwithmods:bat_wing>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>,
<primal:plant_cloth>
] as IItemStack[];

val originalTable = LootTweaker.getTable("minecraft:chests/jungle_temple");
val newTable = originalTable.addPool("gag", 3, 8, 0, 0);

for entry in removedEntries {
    originalTable.getPool("main").removeEntry(entry);
}

for entry in removedEntriesBees {
    originalTable.getPool("forestry_apiculture_bees").removeEntry(entry);
}

for entry in removedEntriesTrees {
    originalTable.getPool("forestry_arboriculture_items").removeEntry(entry);
}

originalTable.getPool("moms_spaghetti").removeEntry("moms_spaghetti");

for entry in addedEntries {
    newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
}

newTable.addItemEntry(<primal:sharp_bone>, 25);