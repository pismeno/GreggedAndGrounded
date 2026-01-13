/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import loottweaker.LootTweaker;
import loottweaker.LootTable;
import crafttweaker.item.IItemStack;

function init() {
    val originalTable = LootTweaker.getTable("netherex:chest/base_temple");
    val newTable = originalTable.addPool("primal", 1, 6, 0, 0);

    originalTable.getPool("arctic_abyss_base_pool").removeEntry("netherex:wither_bone");
    originalTable.getPool("arctic_abyss_base_pool").removeEntry("minecraft:golden_pickaxe");

    newTable.addItemEntry(<primal:sharp_bone>, 25);
}