/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

val removedEntries = [
"netherex:rime_crystal"
] as string[];

val originalTable = LootTweaker.getTable("netherex:chest/base_arctic_abyss");
val newTable = originalTable.addPool("primal", 1, 6, 0, 0);

for entry in removedEntries {
    originalTable.getPool("arctic_abyss_base_pool").removeEntry(entry);
}

newTable.addItemEntry(<primal:sharp_bone>, 25);