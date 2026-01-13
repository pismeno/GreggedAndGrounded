/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.helpers;
import mods.betterwithmods.Mill;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.FilteredHopper;

mods.betterwithmods.Mill.removeAll();
mods.betterwithmods.Anvil.removeAll();
mods.betterwithmods.Saw.removeAll();
mods.betterwithmods.Cauldron.removeAll();
mods.betterwithmods.Crucible.removeAll();

val RemoveFilteredHopper = [
<minecraft:gravel>,
<betterwithmods:material:15>,
<betterwithmods:material:23>
] as IItemStack[];

Mill.addRecipe([<minecraft:wheat>], [<gregtech:meta_dust:1615>]);
Mill.addRecipe([<ore:seedCorn>], [<gregtech:meta_dust:32009>]);
Mill.addRecipe([<minecraft:reeds>], [<minecraft:sugar>]);
Mill.addRecipe([<minecraft:stone>], [<gregtech:meta_dust_small:1599> * 2]);
Mill.addRecipe([<betterwithmods:material:2>], [<betterwithmods:material:3> * 2]);
Mill.addRecipe([<primal:bark_oak>], [<primal:tannin_ground>]);
Mill.addRecipe([<plants2:rubus_o>], [<plants2:generic:1>]);
Mill.addRecipe([<plants2:blackberry>], [<plants2:generic:1>]);
Mill.addRecipe([<minecraft:dye>], [<plants2:generic:1>]);
Mill.addRecipe([<minecraft:dye:15>], [<plants2:generic:4>]);
Mill.addRecipe([<ore:plantGreen>], [<minecraft:dye:2>]);
Mill.addRecipe([<ore:plantPurple>], [<minecraft:dye:5>]);
Mill.addRecipe([<ore:plantOrange>], [<minecraft:dye:14>]);
Mill.addRecipe([<ore:plantWhite>], [<plants2:generic:4>]);
Mill.addRecipe([<ore:plantPink>], [<minecraft:dye:9>]);
Mill.addRecipe([<ore:plantBlue>], [<plants2:generic:2>]);
Mill.addRecipe([<ore:plantRed>], [<minecraft:dye:1>]);
Mill.addRecipe([<ore:plantYellow>], [<minecraft:dye:11>]);
Mill.addRecipe([<forestry:peat>], [<gagtweaks:peat_dust>]);
Mill.addRecipe([<minecraft:bone>], [<minecraft:dye:15> * 3]);
Mill.addRecipe([<minecraft:sand> * 5, <minecraft:clay_ball>* 3, <betterwithmods:material:12>], [<gagtweaks:coke_oven_clay> * 3]);
Mill.addRecipe([<primal:rush_stems> * 5], [<primal:thatching_wet> * 2]);
Mill.addRecipe([<ore:charcoal>], [<gregtech:meta_dust_small:266> * 2]);
Mill.addRecipe([<gregtech:meta_crushed:2064> * 2], [<gregtech:meta_dust_impure:2064>]);

Cauldron.addStoked([<minecraft:leather> * 2, <forestry:bee_combs:3> * 2, <gregtech:meta_item_1:438> * 3],[<betterwithmods:material:12>]);
Cauldron.addUnstoked([<primal:bark_oak> * 3],[<primal:tannin_ground> * 2]);
Cauldron.addUnstoked([<primal:hide_salted>],[<primal:hide_dried>]);
Cauldron.addUnstoked([<primal:hide_tanned>],[<minecraft:leather>]);

FilteredHopper.addFilterRecipe("betterwithmods:wicker", <tconstruct:soil>, [], [<gagtweaks:filtered_grout>]);

for item in RemoveFilteredHopper {
	FilteredHopper.removeRecipeByInput(item);
}






