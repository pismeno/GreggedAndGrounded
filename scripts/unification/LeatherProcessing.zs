/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.oredict.IOreDictEntry;

<ore:peltLarge>.add(<totemic:buffalo_items>);

//Salting
recipes.addShapeless("SaltingHide", <primal:hide_salted>,
 [<primal:hide_raw>,<gregtech:meta_dust:312>,<primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).transformReplace(<primal_tech:fluid_bladder>)]);

//Drying
mods.tconstruct.Drying.addRecipe(<primal:hide_dried>,<primal:hide_salted>, 20*60*4);

//Tanning in Primal tech config

//Drying again
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<primal:hide_tanned>, 20*60*4);

//GT Chain Multicooker
<recipemap:multicooker>.recipeBuilder()
        .inputs(<primal:hide_salted>)
        .outputs(<primal:hide_dried>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

<recipemap:multicooker>.recipeBuilder()
        .inputs(<primal:hide_raw>, <gregtech:meta_dust:312>)
        .fluidInputs(<liquid:water> * 1000)
        .outputs(<primal:hide_dried>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

<recipemap:multicooker>.recipeBuilder()
        .inputs(<primal:hide_raw>)
        .fluidInputs(<liquid:salt_water> * 500)
        .outputs(<primal:hide_dried>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

<recipemap:multicooker>.recipeBuilder()
        .inputs(<primal:hide_tanned>)
        .outputs(<minecraft:leather>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

<recipemap:multicooker>.recipeBuilder()
        .inputs(<primal:hide_dried>, <primal:tannin_ground> * 2)
        .fluidInputs(<liquid:water> * 1000)
        .outputs(<minecraft:leather>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

//GT Chain
<recipemap:chemical_bath>.recipeBuilder()
        .inputs(<primal:hide_raw>)
        .fluidInputs(<liquid:salt_water> * 500)
        .outputs(<primal:hide_salted>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();

<recipemap:assembler>.recipeBuilder()
        .inputs(<primal:hide_dried>, <primal:tannin_ground> * 2)
        .fluidInputs(<liquid:water> * 1000)
        .outputs(<primal:hide_tanned>)
        .duration(200)
        .EUt(2)
        .buildAndRegister();