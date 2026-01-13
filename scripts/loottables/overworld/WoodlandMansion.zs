/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"minecraft:golden_apple",
"minecraft:golden_apple#0",
"minecraft:record_13",
"minecraft:record_cat",
"minecraft:name_tag",
"minecraft:chainmail_chestplate",
"minecraft:diamond_hoe",
"minecraft:diamond_chestplate",
"minecraft:book",
"actuallyadditions:crystalItems",
"actuallyadditions:crystalBlocks",
"actuallyadditions:drillCore",
"actuallyadditions:quartz",
"actuallyadditions:batWings"
] as string[];

val removedEntriesPool1 = [
"minecraft:iron_ingot",
"minecraft:gold_ingot",
"minecraft:bucket",
"minecraft:redstone",
"minecraft:coal"
] as string[];

val addedEntries = [
<forestry:humus>,
<primal:plant_cordage>,
<minecraft:stick>,
<actuallyadditions:item_solidified_experience>,
<primal:sharp_bone>
] as IItemStack[];

val originalTable = LootTweaker.getTable("minecraft:chests/woodland_mansion");
val newTable = originalTable.addPool("gag", 1, 5, 0, 0);

for entry in removedEntries {
    originalTable.getPool("main").removeEntry(entry);
}

for entry in removedEntriesPool1 {
    originalTable.getPool("pool1").removeEntry(entry);
}

for entry in addedEntries {
    newTable.addItemEntry(entry, 20);
}