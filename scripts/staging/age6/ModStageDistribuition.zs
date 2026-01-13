#priority 150

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;

val SetStageSix = [
"projecte",
"avaritiaddons",
"avaritia"
] as string[];

for id in SetStageSix{
    ItemStages.stageModItems("six", id);
    mods.recipestages.Recipes.setRecipeStageByMod("six", id);
}