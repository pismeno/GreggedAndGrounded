/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static recipes as IIngredient[IItemStack] = {
    <tconstruct:materials> : <gagtweaks:compressed_grout>,
    <minecraft:bread> : <gregtechfoodoption:gtfo_meta_item:47>,
    <primal:corn_bread> : <gagtweaks:unbaked_corn_bread>,
    <actuallyadditions:item_food:17> : <gagtweaks:unbaked_rice_bread>,
    <actuallyadditions:item_food:15> : <gagtweaks:unbaked_baguette>,
    <minecraft:brick> : <gagtweaks:compressed_clay>,
    <tconstruct:soil:3> : <minecraft:soul_sand>
};

function init() as void {
    for output, input in recipes {
        furnace.addRecipe(output, input);
    }

    furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}), 6400);
}