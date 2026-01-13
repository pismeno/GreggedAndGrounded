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

val SetStageOne = [
"tconstruct",
"betterwithmods",
"storagedrawers",
"gregtechdrawers",
"prospectors",
"ceramics",
"testdummy",
"forestry"
] as string[];

for id in SetStageOne{
    ItemStages.stageModItems("one", id);
    mods.recipestages.Recipes.setRecipeStageByMod("one", id);
}
