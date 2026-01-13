/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.recipestages.Recipes;

val stage = "six";

Recipes.addShaped("AutoExtremeCrafting", stage, <avaritiaddons:extreme_auto_crafter>,[
    [<gregtech:meta_item_1:193>,<avaritia:resource:4>,<gregtech:meta_item_1:193>],
    [<gregtech:meta_plate:32007>,<avaritia:extreme_crafting_table>,<gregtech:meta_plate:32007>],
    [<gregtech:meta_item_1:163>,<gregtech:meta_item_1:646>,<gregtech:meta_item_1:163>]]);

Recipes.addShaped("EnergyCollector1", stage, <projecte:collector_mk1>,[
    [<gregtech:meta_plate:1601>,<gregtech:transparent_casing:1>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<projecte:item.pe_fuel:2>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<minecraft:furnace>,<gregtech:meta_plate:1601>]]);

Recipes.addShaped("EnergyCollector2", stage, <projecte:collector_mk2>,[
    [<gregtech:meta_plate:1601>,<projecte:item.pe_matter>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<projecte:collector_mk1>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>]]);

Recipes.addShaped("EnergyCollector3", stage, <projecte:collector_mk3>,[
    [<gregtech:meta_plate:1601>,<projecte:item.pe_matter:1>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<projecte:collector_mk2>,<gregtech:meta_plate:1601>],
    [<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>,<gregtech:meta_plate:1601>]]);

Recipes.addShaped("SwapTransmutationTable", stage, <projecte:transmutation_table>,[
    [<ore:craftingToolScrewdriver>],
    [<projecte:item.pe_transmutation_tablet>]]);

Recipes.addShaped("SwapTransmutationTablet", stage, <projecte:item.pe_transmutation_tablet>,[
    [<ore:craftingToolScrewdriver>],
    [<projecte:transmutation_table>]]);