/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"minecraft:beetroot_seeds",
"minecraft:saddle",
"minecraft:diamond_sword",
"minecraft:diamond_pickaxe",
"minecraft:diamond_shovel",
"minecraft:iron_sword",
"minecraft:iron_boots",
"minecraft:iron_chestplate",
"minecraft:iron_leggings",
"minecraft:iron_helmet",
"minecraft:iron_pickaxe",
"minecraft:iron_shovel",
"actuallyadditions:crystalItems",
"actuallyadditions:crystalBlocks",
"actuallyadditions:drillCore",
"actuallyadditions:quartz",
"actuallyadditions:batWings"
] as string[];

val addedEntries = [
<gregtech:meta_ingot:2012>,
<tconstruct:ingots:2>,
<gregtech:meta_ingot:2>,
<gregtech:meta_ingot:61>,
<gregtech:meta_ingot:100>
] as IItemStack[];

val originalTable = LootTweaker.getTable("minecraft:chests/end_city_treasure");
val newTable = originalTable.addPool("primal", 2, 6, 0, 0);

for entry in removedEntries {
    originalTable.getPool("main").removeEntry(entry);
}

for entry in addedEntries {
    newTable.addItemEntry(entry, 20, 1, [{"count": {"min": 1.0, "max": 7.0}, "function": "minecraft:set_count"}], []);
}

newTable.addItemEntry(<minecraft:golden_apple>, 25);