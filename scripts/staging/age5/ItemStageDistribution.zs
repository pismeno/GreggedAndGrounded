#priority 50

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import mods.ItemStages;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val SetStageFive = [
<extrautils2:compressedcobblestone:*>,
<avaritiaddons:avaritiaddons_chest>,
<extrautils2:compresseddirt:*>,
<extrautils2:compressedsand:*>,
<extrautils2:compressedgravel:*>,
<extrautils2:compressednetherrack:*>,
<gregtech:machine:1020>,
<gregtech:machine:1021>,
<gregtech:machine:1022>
] as IIngredient[];

for item in SetStageFive{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("five", item);
    mods.recipestages.Recipes.setRecipeStage("five", item);
}