#priority 200

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val SetStageZero = [
"minecraft",
"primalboat",
"primalchests",
"primal",
"primal_tech",
"death_compass",
"gravestone",
"plants"
] as string[];

for id in SetStageZero{
    ItemStages.stageModItems("zero", id);
    mods.recipestages.Recipes.setRecipeStageByMod("zero", id);
}
