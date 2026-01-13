/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"galacticraftplanets:carbon_fragments",
"galacticraftcore:oil_canister_partial",
"galacticraftplanets:desh_boots",
"galacticraftplanets:desh_chestplate",
"galacticraftplanets:desh_helmet",
"galacticraftplanets:desh_leggings",
"minecraft:redstone",
"minecraft:record_mall",
"minecraft:record_mellohi",
"raw_desh",
"desh_stick"
] as string[];

val addedEntries = [
<galacticraftcore:item_basic_moon:2>,
<gregtech:meta_ingot:2012>,
<gregtech:meta_ingot:323>,
<gregtech:meta_ingot:301>,
<minecraft:gold_ingot>,
<gregtech:meta_item_1:500>,
<gregtech:meta_gem:2004>,
<gregtech:meta_ingot:113>
] as IItemStack[];

val originalTable = LootTweaker.getTable("galacticraftcore:dungeon_tier_2");
val newTable = originalTable.addPool("gag", 5, 10, 0, 0);

for entry in removedEntries {
    originalTable.getPool("dungeon_tier_2").removeEntry(entry);
}

for entry in addedEntries {
    newTable.addItemEntry(entry, 18, 1, [{"count": {"min": 1.0, "max": 4.0}, "function": "minecraft:set_count"}], []);
}

newTable.addItemEntry(<primal:sharp_bone>, 25);