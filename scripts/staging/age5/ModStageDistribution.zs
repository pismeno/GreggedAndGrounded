#priority 170

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;

val SetStageFive = [
"soulshardsrespawn"
] as string[];

for id in SetStageFive{
    ItemStages.stageModItems("five", id);
    mods.recipestages.Recipes.setRecipeStageByMod("five", id);
}