/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.orestages.OreStages;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

val RemoveFromGame = [
<minecraft:gold_ore>,
<minecraft:iron_ore>,
<minecraft:coal_ore>,
<minecraft:lapis_ore>,
<minecraft:diamond_ore>,
<minecraft:redstone_ore>,
<minecraft:emerald_ore>
] as IIngredient[];

val RemoveFromGameNether = [
<minecraft:quartz_ore>,
<netherex:amethyst_ore>,
<netherex:quartz_ore>
] as IIngredient[];

for block in RemoveFromGame{
    OreStages.addReplacement("removed", block);
}

for block in RemoveFromGameNether{
    OreStages.addReplacement("removed", block, <minecraft:netherrack>);
}

OreStages.addReplacement("removed", <netherex:rime_ore>, <netherex:icy_netherrack>);
OreStages.addReplacement("four", <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log>);