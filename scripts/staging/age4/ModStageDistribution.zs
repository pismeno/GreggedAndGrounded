#priority 170

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;

val SetStageFour = [
"appliedenergistics2",
"ae2fc",
"actuallyadditions",
"galacticraftcore",
"galacticraftplanets",
"galacticrafttweaker",
"projectred-transportation",
"projectred-expansion",
"extrautils2",
"integrateddynamics",
"integratedtunnels",
"extraplanets"
] as string[];

for id in SetStageFour{
    ItemStages.stageModItems("four", id);
    mods.recipestages.Recipes.setRecipeStageByMod("four", id);
}