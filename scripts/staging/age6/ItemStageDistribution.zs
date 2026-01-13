#priority 60

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import mods.ItemStages;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val SetStageSix = [
<extrautils2:ingredients:11>,
<extrautils2:ingredients:12>,
<extrautils2:unstableingots>,
<extrautils2:unstableingots:1>,
<extrautils2:unstableingots:2>,
<extrautils2:ingredients:17>,
<extrautils2:goldenlasso>,
<extrautils2:goldenlasso:1>,
<extrautils2:angelring:*>,
<appliedenergistics2:creative_energy_cell>,
<extrautils2:passivegenerator:6>
] as IIngredient[];

for item in SetStageSix{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("six", item);
    mods.recipestages.Recipes.setRecipeStage("six", item);
}