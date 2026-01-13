#priority 190

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;

val SetStageTwo = [
"ironchest",
"netherex",
"netherhexedkingdommod",
"witherskelefix",
"openglider"
] as string[];

for id in SetStageTwo{
    ItemStages.stageModItems("two", id);
    mods.recipestages.Recipes.setRecipeStageByMod("two", id);
}