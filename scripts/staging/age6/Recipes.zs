/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_SIX;

static recipesShaped as IIngredient[][][][IItemStack] = {
    <avaritiaddons:extreme_auto_crafter> : [
        [
            [<gregtech:meta_item_1:193>,<avaritia:resource:4>,<gregtech:meta_item_1:193>],
            [<gregtech:meta_plate:32007>,<avaritia:extreme_crafting_table>,<gregtech:meta_plate:32007>],
            [<gregtech:meta_item_1:163>,<gregtech:meta_item_1:646>,<gregtech:meta_item_1:163>]
        ]
    ],

    <projecte:collector_mk1> : [
        [
            [<gregtech:meta_plate:1601>,<gregtech:transparent_casing:1>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<projecte:item.pe_fuel:2>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<minecraft:furnace>,<gregtech:meta_plate:1601>]
        ]
    ],

    <projecte:collector_mk2> : [
        [
            [<gregtech:meta_plate:1601>,<projecte:item.pe_matter>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<projecte:collector_mk1>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>]
        ]
    ],

    <projecte:collector_mk3> : [
        [
            [<gregtech:meta_plate:1601>,<projecte:item.pe_matter:1>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<projecte:collector_mk2>,<gregtech:meta_plate:1601>],
            [<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>]
        ]
    ],

    <projecte:transmutation_table> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<projecte:item.pe_transmutation_tablet>]
        ]
    ],

    <projecte:item.pe_transmutation_tablet> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<projecte:transmutation_table>]
        ]
    ]
};

function init() as void {
    ProcessUtils.processRecipesShaped(recipesShaped, STAGE_SIX);
}