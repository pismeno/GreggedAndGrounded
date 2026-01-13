/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

function addFurnace(meta as int, block as IItemStack, fluid as ILiquidStack) {
    var ingot = <gregtech:meta_ingot>.definition.makeStack(meta);
    var dust = <gregtech:meta_dust>.definition.makeStack(meta);
    var dustSmall = <gregtech:meta_dust_small>.definition.makeStack(meta);
    var dustTiny = <gregtech:meta_dust_tiny>.definition.makeStack(meta);
    var nugget = <gregtech:meta_nugget>.definition.makeStack(meta);
    var plate = <gregtech:meta_plate>.definition.makeStack(meta);

    Melting.addRecipe(fluid * 144, ingot);
    Melting.addRecipe(fluid * 144, plate);
    Melting.addRecipe(fluid * 1296, block);
    Melting.addRecipe(fluid * 144, dust);
    Melting.addRecipe(fluid * 36, dustSmall);
    Melting.addRecipe(fluid * 16, dustTiny);
    Melting.addRecipe(fluid * 16, nugget);

    Casting.addTableRecipe(ingot, <tconstruct:cast_custom>, fluid, 144, false);
    Casting.addTableRecipe(nugget, <tconstruct:cast_custom:1>, fluid, 16, false);

    Casting.addBasinRecipe(block, null, fluid, 1296);
}

function init() as void {
    Melting.removeRecipe(<liquid:ardite>, <gregtech:ore_ardite_0:*>);
    Melting.removeRecipe(<liquid:ardite>, <tconstruct:ore:1>);
    Melting.removeRecipe(<liquid:ardite>, <gregtech:meta_dust:24000>);
    Melting.removeRecipe(<liquid:ardite>, <gregtech:meta_dust_small:24000>);
    Melting.removeRecipe(<liquid:ardite>, <gregtech:meta_dust_tiny:24000>);
    Melting.removeRecipe(<liquid:cobalt>, <tconstruct:ore>);
    Melting.removeRecipe(<liquid:dirt>,<tconstruct:materials:1>);
    Melting.removeRecipe(<liquid:stone>);

    for i in 0 to 16 {
        Melting.removeRecipe(<liquid:glass>, <minecraft:stained_glass_pane>.definition.makeStack(i));
        Melting.removeRecipe(<liquid:glass>, <minecraft:stained_glass>.definition.makeStack(i));
    }

    Alloy.removeRecipe(<liquid:bronze> * 4);
    Alloy.removeRecipe(<liquid:knightslime> * 72);

    Casting.removeTableRecipe(<gregtech:meta_plate: *>);
    Casting.removeTableRecipe(<minecraft:glass_pane>);
    Casting.removeTableRecipe(<tconstruct:materials:1>);

    Casting.removeBasinRecipe(<tconstruct:clear_glass>);

    addFurnace(2037, <gregtech:meta_block_compressed_127:5>, <liquid:potin>);
    addFurnace(287, <gregtech:meta_block_compressed_17:15>, <liquid:invar>);
    addFurnace(274, <gregtech:meta_block_compressed_17:2>, <liquid:cupronickel>);
    addFurnace(328, <gregtech:meta_block_compressed_20:8>, <liquid:tin_alloy>);
    addFurnace(335, <gregtech:meta_block_compressed_20:15>, <liquid:wrought_iron>);

    Alloy.addRecipe(<liquid:bronze> * 3, [<liquid:copper> * 3, <liquid:tin> * 1]);
    Alloy.addRecipe(<liquid:knightslime> * 1, [<liquid:tin_alloy> * 1, <liquid:purpleslime> * 1]);

    Melting.addRecipe(<liquid:stone> * 144, <gagtweaks:filtered_grout>);

    Casting.addTableRecipe(<storagedrawers:upgrade_storage>, <storagedrawers:upgrade_template>, <liquid:obsidian>, 432, true);
}