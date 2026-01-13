#priority 180

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;

val SetStageThree = [
"gregtech",
"jabcm",
"projectred-core",
"projectred-illumination",
"projectred-integration",
"projectred-transmission",
"projectred-relocation",
"stygian",
"gregtechfoodoption",
"buildinggadgets",
"elevatorid",
"gregstinkering",
"ironjetpacks",
"xtones",
"camera"
] as string[];

for id in SetStageThree{
    ItemStages.stageModItems("three", id);
    mods.recipestages.Recipes.setRecipeStageByMod("three", id);
}