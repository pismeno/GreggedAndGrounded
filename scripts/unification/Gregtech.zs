/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.helpers;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

function addAlloySmelterAlloy(input1 as int, input2 as int, output as IItemStack, duration as int, EUt as int) {
        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_dust>.definition.makeStack(input1), <gregtech:meta_dust>.definition.makeStack(input2)) 
                .outputs(output)
                .duration(duration)
                .EUt(EUt)
                .buildAndRegister();

        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_dust>.definition.makeStack(input1), <gregtech:meta_ingot>.definition.makeStack(input2)) 
                .outputs(output)
                .duration(duration)
                .EUt(EUt)
                .buildAndRegister();

        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_ingot>.definition.makeStack(input1), <gregtech:meta_dust>.definition.makeStack(input2)) 
                .outputs(output)
                .duration(duration)
                .EUt(EUt)
                .buildAndRegister();

        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_ingot>.definition.makeStack(input1), <gregtech:meta_ingot>.definition.makeStack(input2)) 
                .outputs(output)
                .duration(duration)
                .EUt(EUt)
                .buildAndRegister();
}

function addBlockToPlatesRecipe(block as IItemStack, plate as IItemStack, duration as int, EUt as int) {
        <recipemap:cutter>.recipeBuilder()
                .inputs(block) 
                .fluidInputs(<liquid:water> * 9)
                .outputs(plate)
                .duration(duration + duration / 3)
                .EUt(EUt)
                .buildAndRegister();

        <recipemap:cutter>.recipeBuilder()
                .inputs(block) 
                .fluidInputs(<liquid:distilled_water> * 6)
                .outputs(plate)
                .duration(duration)
                .EUt(EUt)
                .buildAndRegister();

        <recipemap:cutter>.recipeBuilder()
                .inputs(block) 
                .fluidInputs(<liquid:lubricant> * 2)
                .outputs(plate)
                .duration(duration - duration / 3)
                .EUt(EUt)
                .buildAndRegister();
}

function addInscriberPress(meta as int, lens as IIngredient) {
        <recipemap:laser_fabricator>.recipeBuilder()
        .inputs(<gregtech:meta_plate_dense:323>)
        .notConsumable(<ore:craftingLensWhite>, <ore:craftingLensBlack>, lens)
        .outputs(<appliedenergistics2:material>.definition.makeStack(meta))
        .duration(900)
        .EUt(480)
        .buildAndRegister();
}

function addPackaging(initialItem as IItemStack, compressedItem as IItemStack, compressLimit as int) {
        <recipemap:packer>.recipeBuilder()
                .inputs(initialItem * 9)
                .outputs(compressedItem)
                .circuit(9)
                .duration(100)
                .EUt(7680)
                .buildAndRegister();

        <recipemap:packer>.recipeBuilder()
                .inputs(compressedItem)
                .outputs(initialItem * 9)
                .circuit(1)
                .duration(40)
                .EUt(7)
                .buildAndRegister();

        for i in 0 to compressLimit + 1 {
                <recipemap:packer>.recipeBuilder()
                        .inputs(compressedItem.definition.makeStack(i) * 9)
                        .outputs(compressedItem.definition.makeStack(i + 1))
                        .circuit(9)
                        .duration(100)
                        .EUt(7680)
                        .buildAndRegister();

                <recipemap:packer>.recipeBuilder()
                        .inputs(compressedItem.definition.makeStack(i + 1))
                        .outputs(compressedItem.definition.makeStack(i) * 9)
                        .circuit(1)
                        .duration(40)
                        .EUt(7)
                        .buildAndRegister();
        }
}

function addDoughRecipe(dough as IItemStack, flourMeta as int) {
        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust>.definition.makeStack(flourMeta) * 4)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(dough * 4)
                .circuit(3)
                .duration(200)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust>.definition.makeStack(flourMeta) * 4, <gregtech:meta_dust_tiny:312>)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(dough * 8)
                .circuit(2)
                .duration(150)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust>.definition.makeStack(flourMeta) * 4, <gregtech:meta_dust_tiny:312>, <gregtech:meta_dust_tiny:353>)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(dough * 16)
                .circuit(1)
                .duration(150)
                .EUt(8)
                .buildAndRegister();
}

static CompressedGCPlates as IItemStack[IItemStack] = {
<galacticraftcore:basic_item:6> : <gregtech:meta_plate_dense:25>,
<galacticraftcore:basic_item:7> : <gregtech:meta_plate_dense:112>,
<galacticraftcore:basic_item:8> : <gregtech:meta_plate_dense:2>,
<galacticraftcore:basic_item:9> : <gregtech:meta_plate_dense:324>,
<galacticraftcore:basic_item:10> : <gregtech:meta_plate_dense:260>,
<galacticraftcore:basic_item:11> : <gregtech:meta_plate_dense:51>,
<galacticraftplanets:item_basic_asteroids:6> : <gregtech:meta_plate_dense:113>,
<extraplanets:tier8_items:4> : <gregtech:meta_plate_dense:122>,
<extraplanets:tier9_items:4> : <gregtech:meta_plate_dense:115>,
<extraplanets:tier11_items:6> : <gregtech:meta_plate_dense:80>,
<extraplanets:tier5_items:6> : <gregtech:meta_plate_dense:69>,
<extraplanets:tier5_items:4> : <gregtech:meta_plate_dense:77>
};

static ShulkerColors as ILiquidStack[IItemStack] = {
<minecraft:white_shulker_box> : <liquid:dye_white>,
<minecraft:orange_shulker_box> : <liquid:dye_orange>,
<minecraft:magenta_shulker_box> : <liquid:dye_magenta>,
<minecraft:light_blue_shulker_box> : <liquid:dye_light_blue>,
<minecraft:yellow_shulker_box> : <liquid:dye_yellow>,
<minecraft:lime_shulker_box> : <liquid:dye_lime>,
<minecraft:pink_shulker_box> : <liquid:dye_pink>,
<minecraft:gray_shulker_box> : <liquid:dye_gray>,
<minecraft:silver_shulker_box> : <liquid:dye_light_gray>,
<minecraft:cyan_shulker_box> : <liquid:dye_cyan>,
<minecraft:purple_shulker_box> : <liquid:dye_purple>,
<minecraft:blue_shulker_box> : <liquid:dye_blue>,
<minecraft:brown_shulker_box> : <liquid:dye_brown>,
<minecraft:green_shulker_box> : <liquid:dye_green>,
<minecraft:red_shulker_box> : <liquid:dye_red>,
<minecraft:black_shulker_box> : <liquid:dye_black>
};

static ShulkerUpgrades as IItemStack[IItemStack] = {
<ironchest:iron_gold_chest_upgrade> : <ironchest:iron_gold_shulker_upgrade>,
<ironchest:gold_diamond_chest_upgrade> : <ironchest:gold_diamond_shulker_upgrade>,
<ironchest:copper_silver_chest_upgrade> : <ironchest:copper_silver_shulker_upgrade>,
<ironchest:silver_gold_chest_upgrade> : <ironchest:silver_gold_shulker_upgrade>,
<ironchest:copper_iron_chest_upgrade> : <ironchest:copper_iron_shulker_upgrade>,
<ironchest:diamond_crystal_chest_upgrade> : <ironchest:diamond_crystal_shulker_upgrade>,
<ironchest:diamond_obsidian_chest_upgrade> : <ironchest:diamond_obsidian_shulker_upgrade>,
<ironchest:wood_iron_chest_upgrade> : <ironchest:vanilla_iron_shulker_upgrade>,
<ironchest:wood_copper_chest_upgrade> : <ironchest:vanilla_copper_shulker_upgrade>
};

function init() as void {
        <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:iron_ingot:0> * 2, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustIron> * 2, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:iron_ingot:0> * 2, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustIron> * 2, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotWroughtIron> * 2, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustWroughtIron> * 2, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotWroughtIron> * 2, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustWroughtIron> * 2, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotCopper>, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustCopper>, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotCopper>, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustCopper>, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotAnnealedCopper>, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustAnnealedCopper>, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotAnnealedCopper>, <metaitem:ingotNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustAnnealedCopper>, <metaitem:dustNickel>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(120, [<metaitem:dustCobalt>, <metaitem:dustArdite>], null).remove();
        <recipemap:alloy_smelter>.findRecipe(120, [<tconstruct:ingots:0>, <metaitem:dustArdite>], null).remove();

        <recipemap:cutter>.findRecipe(7, [<minecraft:log:0>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:0>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:0>], [<liquid:lubricant>]).remove();
        <recipemap:cutter>.findRecipe(7, [<gregtech:rubber_log:0>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<gregtech:rubber_log:0>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<gregtech:rubber_log:0>], [<liquid:lubricant>]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:1>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:1>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:1>], [<liquid:lubricant>]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:0>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:0>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log2:0>], [<liquid:lubricant>]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:3>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:3>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:3>], [<liquid:lubricant>]).remove();<recipemap:cutter>.findRecipe(7, [<minecraft:log:2>], [<liquid:water> * 4]).remove();<recipemap:cutter>.findRecipe(7, [<minecraft:log:2>], [<liquid:distilled_water> * 3]).remove();<recipemap:cutter>.findRecipe(7, [<minecraft:log:2>], [<liquid:lubricant>]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:1>], [<liquid:water> * 4]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:1>], [<liquid:distilled_water> * 3]).remove();
        <recipemap:cutter>.findRecipe(7, [<minecraft:log:1>], [<liquid:lubricant>]).remove();

        <recipemap:extractor>.findRecipe(2, [<minecraft:double_plant:5>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:double_plant:4>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:double_plant:1>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:double_plant:0>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:yellow_flower:0>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:8>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:7>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:6>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:5>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:4>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:3>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:2>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:1>], null).remove();
        <recipemap:extractor>.findRecipe(2, [<minecraft:red_flower:0>], null).remove();
        <recipemap:extractor>.findRecipe(120, [<minecraft:leather:0>], null).remove();
        <recipemap:extractor>.findRecipe(7, [<forestry:honeydew:0>], null).remove();

        <recipemap:electric_blast_furnace>.findRecipe(120, [<minecraft:glass:0>], [<liquid:oxygen> * 100]).remove();
        <recipemap:electric_blast_furnace>.findRecipe(480, [<metaitem:plateEmerald>, <metaitem:crystal.raw>], [<liquid:helium> * 1000]).remove();
        <recipemap:electric_blast_furnace>.findRecipe(480, [<metaitem:plateOlivine>, <metaitem:crystal.raw>], [<liquid:helium> * 1000]).remove();

        <recipemap:forming_press>.findRecipe(20, [<gregtechfoodoption:gtfo_meta_item:50> * 3, <gregtechfoodoption:gtfo_meta_item:45>], null).remove();
        <recipemap:forming_press>.findRecipe(20, [<gregtechfoodoption:gtfo_meta_item:50> * 2, <gregtechfoodoption:gtfo_meta_item:46>], null).remove();
        <recipemap:forming_press>.findRecipe(480, [<gregtech:transparent_casing:0> * 2, <metaitem:platePolyvinylButyral>], null).remove();
        <recipemap:forming_press>.findRecipe(30, [<minecraft:sand:32767> * 3, <minecraft:gravel:0> * 2, <metaitem:dustBentonite>, <metaitem:dustTalc>, <minecraft:wheat:0>, <metaitem:wooden_form.brick>], null).remove();

        <recipemap:compressor>.findRecipe(2, [<minecraft:clay_ball:0> * 4], null).remove();

        <recipemap:centrifuge>.findRecipe(5, [<minecraft:magma_cream:0>], null).remove();

        <recipemap:chemical_reactor>.findRecipe(1920, [<metaitem:wafer.central_processing_unit>, <metaitem:carbon.fibers> * 16], [<liquid:glowstone> * 576]).remove();
        <recipemap:chemical_reactor>.findRecipe(480, [<metaitem:dustCarbon>, <metaitem:dustSulfur>], null).remove();

        <recipemap:chemical_bath>.findRecipe(480, [<minecraft:ender_pearl:0>], [<liquid:blaze> * 144]).remove();

        <recipemap:arc_furnace>.findRecipe(30, [<minecraft:glass:0>], [<liquid:oxygen> * 60]).remove();

        <recipemap:forge_hammer>.findRecipe(480, [<metaitem:crystal.raw>], null).remove();

        <recipemap:autoclave>.findRecipe(320, [<metaitem:gemExquisiteEmerald>], [<liquid:europium> * 16]).remove();
        <recipemap:autoclave>.findRecipe(320, [<metaitem:gemExquisiteOlivine>], [<liquid:europium> * 16]).remove();
        <recipemap:autoclave>.findRecipe(480, [<metaitem:crystal.raw_chip>], [<liquid:europium> * 16]).remove();
        <recipemap:autoclave>.findRecipe(480, [<metaitem:crystal.raw_chip>], [<liquid:mutagen> * 250]).remove();
        <recipemap:autoclave>.findRecipe(480, [<metaitem:crystal.raw_chip>], [<liquid:bacterial_sludge> * 250]).remove();

        <recipemap:autoclave>.findRecipe(30, [<metaitem:dustCarbon> * 4], [<liquid:plastic> * 36]).remove();

        <recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustObsidian> * 8], null).remove();
        <recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustSoapstone> * 21], null).remove();
        <recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustBiotite> * 22], null).remove();

        <recipemap:assembler>.findRecipe(30, [<metaitem:electric.motor.mv>, <metaitem:ringAluminium> * 2, <metaitem:stickAluminium>, <metaitem:rotorSteel>, <metaitem:cableGtSingleCopper> * 2], null).remove();
        <recipemap:assembler>.findRecipe(30, [<metaitem:electric.motor.hv>, <metaitem:ringStainlessSteel> * 2, <metaitem:stickStainlessSteel>, <metaitem:rotorChrome>, <metaitem:cableGtSingleGold> * 2], null).remove();
        <recipemap:assembler>.findRecipe(16, [<metaitem:plateTitanium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
        <recipemap:assembler>.findRecipe(480, [<metaitem:fluid_hatch.export.ev>, <appliedenergistics2:fluid_interface:0>, <appliedenergistics2:material:30> * 2], null).remove();
        <recipemap:assembler>.findRecipe(480, [<metaitem:fluid_hatch.import.ev>, <appliedenergistics2:fluid_interface:0>, <appliedenergistics2:material:30> * 2], null).remove();
        <recipemap:assembler>.findRecipe(480, [<metaitem:item_bus.export.ev>, <appliedenergistics2:interface:0>, <appliedenergistics2:material:30> * 2], null).remove();
        <recipemap:assembler>.findRecipe(480, [<metaitem:item_bus.import.ev>, <appliedenergistics2:interface:0>, <appliedenergistics2:material:30> * 2], null).remove();
        <recipemap:assembler>.findRecipe(7680, [<metaitem:item_bus.import.iv>, <appliedenergistics2:interface:0>, <metaitem:conveyor.module.iv>, <metaitem:sensor.iv>, <appliedenergistics2:material:30> * 4], null).remove();
        <recipemap:assembler>.findRecipe(7680, [<metaitem:fluid_hatch.import.iv>, <appliedenergistics2:fluid_interface:0>, <metaitem:electric.pump.iv>, <metaitem:sensor.iv>, <appliedenergistics2:material:30> * 4], null).remove();
        <recipemap:assembler>.findRecipe(30, [<metaitem:dustWood>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 50]).remove();
        <recipemap:assembler>.findRecipe(16, [<metaitem:plateStainlessSteel> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
        <recipemap:assembler>.findRecipe(120, [<metaitem:plateSilicon>, <metaitem:wireFineTin> * 6], [<liquid:plastic> * 144]).remove();

        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_processor> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineYttriumBariumCuprate> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_assembly> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:plate.nor_memory_chip> * 32, <metaitem:plate.nand_memory_chip> * 64, <metaitem:wireFineNiobiumTitanium> * 32], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_assembly> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:plate.nor_memory_chip> * 32, <metaitem:plate.nand_memory_chip> * 64, <metaitem:wireFineNiobiumTitanium> * 32], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:processor.neuro>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:component.advanced_smd.transistor> * 8, <metaitem:wireFineYttriumBariumCuprate> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:processor.neuro>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:component.advanced_smd.transistor> * 8, <metaitem:wireFineYttriumBariumCuprate> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(150000, [<metaitem:processor.neuro>, <metaitem:plate.highly_advanced_system_on_chip>, <metaitem:wireFineYttriumBariumCuprate> * 8, <metaitem:boltNaquadah> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(150000, [<metaitem:processor.neuro>, <metaitem:plate.highly_advanced_system_on_chip>, <metaitem:wireFineYttriumBariumCuprate> * 8, <metaitem:boltNaquadah> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.advanced_smd.capacitor> * 6, <metaitem:component.advanced_smd.transistor> * 6, <metaitem:wireFineNiobiumTitanium> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.advanced_smd.capacitor> * 6, <metaitem:component.advanced_smd.transistor> * 6, <metaitem:wireFineNiobiumTitanium> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(86000, [<metaitem:circuit_board.elite>, <metaitem:crystal.system_on_chip>, <metaitem:wireFineNiobiumTitanium> * 8, <metaitem:boltYttriumBariumCuprate> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(86000, [<metaitem:circuit_board.elite>, <metaitem:crystal.system_on_chip>, <metaitem:wireFineNiobiumTitanium> * 8, <metaitem:boltYttriumBariumCuprate> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:plate.random_access_memory> * 32, <metaitem:plate.nor_memory_chip> * 64, <metaitem:plate.nand_memory_chip> * 64, <metaitem:wireFineYttriumBariumCuprate> * 32], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:plate.random_access_memory> * 32, <metaitem:plate.nor_memory_chip> * 64, <metaitem:plate.nand_memory_chip> * 64, <metaitem:wireFineYttriumBariumCuprate> * 32], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(1024, [<metaitem:circuit_board.extreme>, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:engraved.lapotron_chip> * 24, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:wireFinePlatinum> * 16, <metaitem:platePlatinum> * 8], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(1024, [<metaitem:circuit_board.extreme>, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:engraved.lapotron_chip> * 24, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:wireFinePlatinum> * 16, <metaitem:platePlatinum> * 8], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(90, [<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <metaitem:component.inductor> * 4, <metaitem:component.capacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(90, [<metaitem:circuit_board.plastic>, <metaitem:circuit.processor> * 2, <metaitem:component.inductor> * 4, <metaitem:component.capacitor> * 8, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineRedAlloy> * 8], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(120, [<metaitem:circuit_board.plastic>, <metaitem:circuit.assembly> * 2, <metaitem:component.diode> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineElectrum> * 16, <metaitem:boltBlueAlloy> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(120, [<metaitem:circuit_board.plastic>, <metaitem:circuit.assembly> * 2, <metaitem:component.diode> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFineElectrum> * 16, <metaitem:boltBlueAlloy> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.smd.resistor> * 8, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.transistor> * 8, <metaitem:wireFineElectrum> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.smd.resistor> * 8, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.transistor> * 8, <metaitem:wireFineElectrum> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.resistor> * 2, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:component.advanced_smd.transistor> * 2, <metaitem:wireFineElectrum> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.resistor> * 2, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:component.advanced_smd.transistor> * 2, <metaitem:wireFineElectrum> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.advanced>, <metaitem:plate.advanced_system_on_chip>, <metaitem:wireFineElectrum> * 4, <metaitem:boltPlatinum> * 4], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.advanced>, <metaitem:plate.advanced_system_on_chip>, <metaitem:wireFineElectrum> * 4, <metaitem:boltPlatinum> * 4], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.smd.inductor> * 4, <metaitem:component.smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_processor> * 2, <metaitem:component.advanced_smd.inductor>, <metaitem:component.advanced_smd.capacitor> * 2, <metaitem:plate.random_access_memory> * 8, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.smd.capacitor> * 12, <metaitem:component.smd.transistor> * 12, <metaitem:wireFinePlatinum> * 12], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.smd.capacitor> * 12, <metaitem:component.smd.transistor> * 12, <metaitem:wireFinePlatinum> * 12], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.capacitor> * 3, <metaitem:component.advanced_smd.transistor> * 3, <metaitem:wireFinePlatinum> * 12], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <metaitem:component.advanced_smd.capacitor> * 3, <metaitem:component.advanced_smd.transistor> * 3, <metaitem:wireFinePlatinum> * 12], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.extreme>, <metaitem:plate.advanced_system_on_chip>, <metaitem:wireFinePlatinum> * 12, <metaitem:boltNiobiumTitanium> * 8], [<liquid:soldering_alloy> * 72]).remove();
        <recipemap:circuit_assembler>.findRecipe(38400, [<metaitem:circuit_board.extreme>, <metaitem:plate.advanced_system_on_chip>, <metaitem:wireFinePlatinum> * 12, <metaitem:boltNiobiumTitanium> * 8], [<liquid:tin> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(480, [<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, <metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(480, [<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, <metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(480, [<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(480, [<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_assembly> * 2, <metaitem:component.smd.diode> * 8, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_assembly> * 2, <metaitem:component.smd.diode> * 8, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_assembly> * 2, <metaitem:component.advanced_smd.diode> * 2, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFineElectrum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(600, [<metaitem:circuit_board.advanced>, <metaitem:circuit.nano_assembly> * 2, <metaitem:component.advanced_smd.diode> * 2, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFineElectrum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.smd.inductor> * 24, <metaitem:component.smd.capacitor> * 48, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.smd.inductor> * 24, <metaitem:component.smd.capacitor> * 48, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(9600, [<metaitem:circuit_board.elite>, <metaitem:circuit.crystal_processor> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 24, <metaitem:wireFineNiobiumTitanium> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, <metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, <metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:soldering_alloy> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, <metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:tin> * 576]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.smd.inductor> * 8, <metaitem:component.smd.capacitor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_processor> * 2, <metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:wireFinePlatinum> * 16], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_assembly> * 2, <metaitem:component.smd.diode> * 8, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFinePlatinum> * 32], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_assembly> * 2, <metaitem:component.smd.diode> * 8, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFinePlatinum> * 32], [<liquid:tin> * 288]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_assembly> * 2, <metaitem:component.advanced_smd.diode> * 2, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFinePlatinum> * 32], [<liquid:soldering_alloy> * 144]).remove();
        <recipemap:circuit_assembler>.findRecipe(2400, [<metaitem:circuit_board.extreme>, <metaitem:circuit.quantum_assembly> * 2, <metaitem:component.advanced_smd.diode> * 2, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 16, <metaitem:wireFinePlatinum> * 32], [<liquid:tin> * 288]).remove();

        <recipemap:mixer>.findRecipe(16, [<forestry:fertilizer_compound:0>, <minecraft:dirt:0> * 8], [<liquid:water> * 1000]).remove();
        <recipemap:mixer>.findRecipe(480, [<metaitem:energium_dust> * 3, <metaitem:dustLapis> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
        <recipemap:mixer>.findRecipe(16, [<minecraft:sand:32767> * 2, <metaitem:dustApatite>], [<liquid:water> * 100]).remove();
        <recipemap:mixer>.findRecipe(120, [<metaitem:dustCobalt>, <metaitem:dustArdite>], null).remove();

        <recipemap:arc_furnace>.findRecipe(30, [<metaitem:dustCopper>], [<liquid:oxygen> * 63]).remove();

        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_cinnabar_0:1>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_electrotine_0:1>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_cinnabar_0:2>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_electrotine_0:2>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_cinnabar_0:0>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<gregtech:ore_electrotine_0:0>], null).remove();
        <recipemap:macerator>.findRecipe(2, [<metaitem:stickWyrmwood>], null).remove();

        <recipemap:large_chemical_reactor>.findRecipe(1920, [<metaitem:wafer.central_processing_unit>, <metaitem:carbon.fibers> * 16], [<liquid:glowstone> * 576]).remove();

        <recipemap:mob_extractor>.findRecipe(16, [<metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

        <recipemap:laser_engraver>.findRecipe(40000, [<metaitem:crystal.central_processing_unit>, <metaitem:glass_lens.blue>], null).remove();
        <recipemap:laser_engraver>.findRecipe(480, [<metaitem:lapotron_crystal>, <metaitem:glass_lens.blue>], null).remove();

        <recipemap:laser_engraver>.findRecipe(10000, [<metaitem:engraved.crystal_chip>, <metaitem:glass_lens.lime>], null).remove();
        <recipemap:assembly_line>.findRecipe(38400, [<metaitem:circuit_board.wetware>, <metaitem:circuit.wetware_assembly> * 2, <metaitem:component.advanced_smd.diode> * 8, <metaitem:plate.nor_memory_chip> * 16, <metaitem:plate.random_access_memory> * 32, <metaitem:wireFineYttriumBariumCuprate> * 24, <metaitem:foilPolybenzimidazole> * 32, <metaitem:plateEuropium> * 4], [<liquid:soldering_alloy> * 1152]).remove();
        <recipemap:assembly_line>.findRecipe(300000, [<metaitem:frameTritanium> * 2, <metaitem:circuit.wetware_computer> * 2, <metaitem:component.advanced_smd.diode> * 32, <metaitem:component.advanced_smd.capacitor> * 32, <metaitem:component.advanced_smd.transistor> * 32, <metaitem:component.advanced_smd.resistor> * 32, <metaitem:component.advanced_smd.inductor> * 32, <metaitem:foilPolybenzimidazole> * 64, <metaitem:plate.random_access_memory> * 32, <metaitem:wireGtDoubleEnrichedNaquadahTriniumEuropiumDuranide> * 16, <metaitem:plateEuropium> * 8], [<liquid:soldering_alloy> * 2880, <liquid:polybenzimidazole> * 1152]).remove();
        <recipemap:assembly_line>.findRecipe(30720, [<metaitem:frameHsse> * 2, <metaitem:circuit.crystal_computer> * 2, <metaitem:plate.random_access_memory> * 32, <metaitem:plate.high_power_integrated_circuit> * 2, <metaitem:wireGtSingleNiobiumTitanium> * 8, <metaitem:component.advanced_smd.inductor> * 8, <metaitem:component.advanced_smd.capacitor> * 16, <metaitem:component.advanced_smd.diode> * 8], [<liquid:soldering_alloy> * 1440]).remove();



        <recipemap:packer>.recipeBuilder()
                .inputs(<witherskelefix:fragment> * 9)
                .outputs(<minecraft:skull:1>)
                .duration(300)
                .EUt(480)
                .buildAndRegister();

        <recipemap:packer>.recipeBuilder()
                .inputs(<minecraft:chest> * 32)
                .outputs(<avaritiaddons:avaritiaddons_chest>)
                .duration(600)
                .EUt(7680)
                .buildAndRegister();


        <recipemap:electrolyzer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:304> * 22)
                .outputs(<gregtech:meta_dust:83>, <gregtech:meta_dust:2> * 3, <gregtech:meta_dust:99> * 3)
                .fluidOutputs(<liquid:fluorine> * 2000, <liquid:oxygen> * 10000)
                .duration(440)
                .EUt(60)
                .buildAndRegister();


        <recipemap:sifter>.recipeBuilder()
                .inputs(<tconstruct:soil>)
                .outputs(<gagtweaks:filtered_grout>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();


        <recipemap:forge_hammer>.recipeBuilder()
                .inputs(<gregtech:meta_stick_long:324> * 2)
                .outputs(<galacticraftcore:steel_pole>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();


        <recipemap:arc_furnace>.recipeBuilder()
                .inputs(<ore:blockGlass>)
                .outputs(<gregtech:transparent_casing>)
                .duration(80)
                .EUt(96)
                .buildAndRegister();

        <recipemap:arc_furnace>.recipeBuilder()
                .inputs(<gregtech:meta_dust:25>)
                .outputs(<gregtech:meta_ingot:25>)
                .duration(100)
                .EUt(16)
                .buildAndRegister();


        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed> * 3)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(<tconstruct:materials:9>)
                .duration(400)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed:1> * 3)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(<tconstruct:materials:10>)
                .duration(400)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed:4> * 3)
                .fluidInputs(<liquid:water> * 1000)
                .outputs(<tconstruct:materials:11>)
                .duration(400)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed> * 3)
                .fluidInputs(<liquid:distilled_water> * 500)
                .outputs(<tconstruct:materials:9>)
                .duration(200)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed:1> * 3)
                .fluidInputs(<liquid:distilled_water> * 500)
                .outputs(<tconstruct:materials:10>)
                .duration(200)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<tconstruct:slime_congealed:4> * 3)
                .fluidInputs(<liquid:distilled_water> * 500)
                .outputs(<tconstruct:materials:11>)
                .duration(200)
                .EUt(24)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .fluidInputs(<liquid:menrilresin> * 250)
                .outputs(<integrateddynamics:crystalized_menril_chunk>)
                .duration(150)
                .EUt(320)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<gregtech:meta_dust:32001> * 1)
                .fluidInputs(<liquid:gtfo_chorus_juice> * 250)
                .outputs(<integrateddynamics:crystalized_chorus_chunk> * 1)
                .duration(200)
                .EUt(320)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<integrateddynamics:crystalized_menril_chunk> * 3)
                .fluidInputs(<liquid:hydrogen> * 250)
                .outputs(<integrateddynamics:variable>)
                .duration(200)
                .EUt(320)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<integrateddynamics:variable>)
                .fluidInputs(<liquid:gtfo_chorus_juice> * 100)
                .outputs(<integrateddynamics:logic_director>)
                .duration(200)
                .EUt(320)
                .buildAndRegister();

        <recipemap:autoclave>.recipeBuilder()
                .inputs(<extrautils2:endershard>)
                .fluidInputs(<liquid:redstone> * 576)
                .outputs(<extrautils2:ingredients>)
                .duration(100)
                .EUt(320)
                .buildAndRegister();


        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<minecraft:apple>, <minecraft:diamond_block> * 8)
                .outputs(<extraplanets:apple_diamond:1>)
                .duration(50)
                .EUt(30)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<gregtech:meta_dust:18>, <gregtech:meta_dust:103>)
                .fluidInputs(<liquid:blaze> * 144)
                .outputs(<minecraft:blaze_powder>)
                .duration(200)
                .EUt(96)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<minecraft:blaze_powder> * 2, <minecraft:ender_pearl>)
                .outputs(<minecraft:ender_eye>)
                .duration(440)
                .EUt(96)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1012>, <gregtech:meta_foil:122> * 8)
                .fluidInputs(<liquid:sulfuric_acid> * 250)
                .outputs(<projectred-core:resource_item:600>)
                .duration(600)
                .EUt(72)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<appliedenergistics2:material:16>, <gregtech:meta_bolt:301> * 8)
                .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
                .outputs(<appliedenergistics2:material:25>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<appliedenergistics2:material:16>, <gregtech:meta_bolt:32004> * 8)
                .fluidInputs(<liquid:polytetrafluoroethylene> * 288)
                .outputs(<appliedenergistics2:material:28>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<tconstruct:clear_glass>, <gregtech:meta_dust:339> * 4)
                .fluidInputs(<liquid:hydrofluoric_acid> * 200)
                .outputs(<appliedenergistics2:quartz_glass>)
                .duration(80)
                .EUt(1200)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<tconstruct:clear_glass>, <minecraft:glowstone_dust> * 4)
                .outputs(<extrautils2:decorativeglass:4>)
                .duration(80)
                .EUt(96)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<tconstruct:clear_glass>, <minecraft:redstone> * 4)
                .outputs(<extrautils2:decorativeglass:5>)
                .duration(80)
                .EUt(96)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<tconstruct:clear_glass>, <gregtech:meta_dust:32017> * 4)
                .outputs(<extrautils2:ineffableglass:2>)
                .duration(80)
                .EUt(96)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<gregtech:meta_ingot:430>, <extrautils2:ingredients:10> * 4)
                .fluidInputs(<liquid:plasma.iron> * 432)
                .outputs(<extrautils2:ingredients:17>)
                .duration(100)
                .EUt(491520)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<gregtech:meta_ingot:3>, <actuallyadditions:item_solidified_experience> * 64)
                .fluidInputs(<liquid:plasma.argon> * 375)
                .outputs(<extrautils2:ingredients:12>)
                .duration(100)
                .EUt(491520)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<extrautils2:unstableingots:2>)
                .fluidInputs(<liquid:tungsten> * 1440)
                .outputs(<extrautils2:unstableingots:2>)
                .duration(400)
                .EUt(491520)
                .buildAndRegister();

        <recipemap:chemical_reactor>.recipeBuilder()
                .inputs(<gregtech:meta_dust:32003> * 16, <gregtech:meta_dust:2038> * 4)
                .fluidInputs(<liquid:liquid_nether_air> * 16000, <liquid:plasma.helium> * 500, <liquid:europium> * 32)
                .outputs(<gregtech:meta_dust:1602> * 2)
                .duration(800)
                .EUt(122880)
                .buildAndRegister();


        <recipemap:electric_blast_furnace>.recipeBuilder()
                .inputs(<gregtech:transparent_casing>)
                .fluidInputs(<liquid:oxygen> * 100)
                .outputs(<tconstruct:clear_glass>)
                .property("temperature", 1893)
                .duration(1000)
                .EUt(300)
                .buildAndRegister();

        <recipemap:electric_blast_furnace>.recipeBuilder()
                .inputs(<galacticraftcore:meteoric_iron_raw>)
                .fluidInputs(<liquid:helium> * 1000)
                .outputs(<galacticraftcore:item_basic_moon>)
                .property("temperature", 4200)
                .duration(3600)
                .EUt(300)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<minecraft:ender_pearl>)
                .fluidInputs(<liquid:redstone> * 1296)
                .outputs(<extrautils2:ingredients:2>)
                .duration(360)
                .EUt(350)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<gregtech:meta_ingot_hot:24000>)
                .fluidInputs(<liquid:water> * 100)
                .outputs(<tconstruct:ingots:1>)
                .duration(420)
                .EUt(120)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<gregtech:meta_ingot_hot:24000>)
                .fluidInputs(<liquid:distilled_water> * 100)
                .outputs(<tconstruct:ingots:1>)
                .duration(246)
                .EUt(120)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<ore:treeSapling>)
                .fluidInputs(<liquid:dye_blue> * 144)
                .outputs(<tconstruct:slime_sapling:0>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<ore:treeSapling>)
                .fluidInputs(<liquid:dye_purple> * 144)
                .outputs(<tconstruct:slime_sapling:1>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<ore:treeSapling>)
                .fluidInputs(<liquid:dye_orange> * 144)
                .outputs(<tconstruct:slime_sapling:2>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();

        <recipemap:chemical_bath>.recipeBuilder()
                .inputs(<gregtech:meta_dust:32002>)
                .fluidInputs(<liquid:water> * 100)
                .outputs(<projectred-expansion:plan>)
                .duration(50)
                .EUt(40)
                .buildAndRegister();

        for key, value in ShulkerUpgrades {
                <recipemap:chemical_bath>.recipeBuilder()
                        .inputs(key)
                        .fluidInputs(<liquid:gtfo_chorus_juice> * 100)
                        .outputs(value)
                        .duration(50)
                        .EUt(8)
                        .buildAndRegister();
        }

        for shulker, color in ShulkerColors {
                for key, value in ShulkerColors {
                
                <recipemap:chemical_bath>.recipeBuilder()
                        .inputs(key)
                        .fluidInputs(color * 100)
                        .outputs(shulker)
                        .duration(50)
                        .EUt(8)
                        .buildAndRegister();
                }
        }


        <recipemap:compressor>.recipeBuilder()
                .inputs(<betterwithmods:material:3> * 6)
                .outputs(<betterwithmods:material:4>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<ore:blockWool> * 6)
                .outputs(<extraplanets:cloth>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<gagtweaks:filtered_grout>)
                .outputs(<gagtweaks:compressed_grout>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<gagtweaks:compressed_heavy_duty_composite>)
                .outputs(<galacticraftcore:heavy_plating>)
                .duration(200)
                .EUt(96)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<gagtweaks:compressed_heavy_duty_composite2>)
                .outputs(<galacticraftplanets:item_basic_mars:3>)
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<gagtweaks:coke_oven_clay>)
                .outputs(<gregtech:meta_item_1:350>)
                .duration(80)
                .EUt(4)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<gagtweaks:muddy_dust>)
                .outputs(<gregtechfoodoption:gtfo_meta_item:43>)
                .duration(80)
                .EUt(4)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<minecraft:clay_ball>)
                .outputs(<gagtweaks:compressed_clay>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<primal:plant_cloth> * 2)
                .outputs(<primal:plant_papyrus>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        <recipemap:compressor>.recipeBuilder()
                .inputs(<primal:plant_fiber> * 6)
                .outputs(<primal:plant_cloth>)
                .duration(40)
                .EUt(2)
                .buildAndRegister();

        for key, value in CompressedGCPlates {
                <recipemap:compressor>.recipeBuilder()
                        .inputs(value * 2)
                        .outputs(key)
                        .duration(120)
                        .EUt(96)
                        .buildAndRegister();
        }


        <recipemap:extractor>.recipeBuilder()
                .inputs(<minecraft:leather> * 3)
                .outputs(<betterwithmods:material:12> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<plants2:rubus_o>)
                .outputs(<plants2:generic:1> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<plants2:blackberry>)
                .outputs(<plants2:generic:1> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantGreen>)
                .outputs(<minecraft:dye:2> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantPurple>)
                .outputs(<minecraft:dye:5> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantOrange>)
                .outputs(<minecraft:dye:14> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantWhite>)
                .outputs(<plants2:generic:4> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantPink>)
                .outputs(<minecraft:dye:14> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantRed>)
                .outputs(<minecraft:dye:1> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantYellow>)
                .outputs(<minecraft:dye:11> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<ore:plantBlue>)
                .outputs(<plants2:generic:2> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<minecraft:dye>)
                .outputs(<plants2:generic:2> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<minecraft:dye:15>)
                .outputs(<plants2:generic:4> * 2)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<gagtweaks:blaze_chunk>)
                .fluidOutputs(<liquid:blaze> * 72)
                .duration(44)
                .EUt(30)
                .buildAndRegister();

        <recipemap:extractor>.recipeBuilder()
                .inputs(<integrateddynamics:menril_planks>)
                .fluidOutputs(<liquid:menrilresin> * 100)
                .duration(80)
                .EUt(30)
                .buildAndRegister();
                
        <recipemap:extractor>.recipeBuilder()
                .inputs(<gregtech:meta_plate:32001>)
                .fluidOutputs(<liquid:menrilresin> * 100)
                .duration(80)
                .EUt(30)
                .buildAndRegister();


        <recipemap:macerator>.recipeBuilder()
                .inputs(<betterwithmods:material:2>)
                .outputs(<betterwithmods:material:3> * 4)
                .duration(50)
                .EUt(8)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<plants2:rubus_o>)
                .outputs(<plants2:generic:1>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<plants2:blackberry>)
                .outputs(<plants2:generic:1>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantGreen>)
                .outputs(<minecraft:dye:2>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantPurple>)
                .outputs(<minecraft:dye:5>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantOrange>)
                .outputs(<minecraft:dye:14>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantWhite>)
                .outputs(<plants2:generic:4>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantPink>)
                .outputs(<minecraft:dye:14>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantRed>)
                .outputs(<minecraft:dye:1>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantYellow>)
                .outputs(<minecraft:dye:11>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:plantBlue>)
                .outputs(<plants2:generic:2>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<minecraft:dye>)
                .outputs(<plants2:generic:2>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<minecraft:dye:15>)
                .outputs(<plants2:generic:4>)
                .duration(300)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:2>)
                .outputs(<gregtech:meta_dust:32004>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:4>)
                .outputs(<gregtech:meta_dust:32005>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal>)
                .outputs(<gregtech:meta_dust:32007>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:3>)
                .outputs(<gregtech:meta_dust:32008>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:1>)
                .outputs(<gregtech:meta_dust:32006>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:5>)
                .outputs(<gregtech:meta_dust:32003>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<forestry:peat>)
                .outputs(<gagtweaks:peat_dust>)
                .duration(60)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreCinnabar>)
                .outputs(<gregtech:meta_crushed:268> * 2)
                .chancedOutput(<gregtech:meta_dust:1599>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreNetherrackCinnabar>)
                .outputs(<gregtech:meta_crushed:268> * 4)
                .chancedOutput(<gregtech:meta_dust:1604>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreEndstoneCinnabar>)
                .outputs(<gregtech:meta_crushed:268> * 4)
                .chancedOutput(<gregtech:meta_dust:1603>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreElectrotine>)
                .outputs(<gregtech:meta_crushed:2507> * 10)
                .chancedOutput(<gregtech:meta_dust:1599>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreNetherrackElectrotine>)
                .outputs(<gregtech:meta_crushed:2507> * 20)
                .chancedOutput(<gregtech:meta_dust:1604>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();

        <recipemap:macerator>.recipeBuilder()
                .inputs(<ore:oreEndstoneElectrotine>)
                .outputs(<gregtech:meta_crushed:2507> * 20)
                .chancedOutput(<gregtech:meta_dust:1603>, 6700, 800)
                .duration(400)
                .EUt(2)
                .buildAndRegister();


        <recipemap:saw>.recipeBuilder()
                .inputs(<minecraft:reeds>)
                .outputs(<gregtech:meta_dust:1618>)
                .duration(40)
                .EUt(12)
                .buildAndRegister();


        <recipemap:wiremill>.recipeBuilder()
                .inputs(<gregtech:meta_ingot:2517>)
                .outputs(<projectred-transmission:wire> * 4)
                .duration(80)
                .EUt(7)
                .circuit(7)
                .buildAndRegister();

        <recipemap:wiremill>.recipeBuilder()
                .inputs(<projectred-core:resource_item:104>)
                .outputs(<projectred-transmission:wire:34>)
                .duration(80)
                .EUt(7)
                .circuit(7)
                .buildAndRegister();

        <recipemap:wiremill>.recipeBuilder()
                .inputs(<integrateddynamics:crystalized_menril_chunk> * 2)
                .outputs(<integrateddynamics:cable>)
                .duration(80)
                .EUt(7)
                .circuit(7)
                .buildAndRegister();

        <recipemap:wiremill>.recipeBuilder()
                .inputs(<gregtech:meta_plate:214> * 2)
                .outputs(<appliedenergistics2:part:140>)
                .duration(160)
                .EUt(14)
                .circuit(7)
                .buildAndRegister();


        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:2063> * 4, <minecraft:gravel> * 4, <gregtech:meta_dust:266>)
                .outputs(<gagtweaks:filtered_grout> * 4)
                .duration(160)
                .EUt(16)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:2524>,<gregtech:meta_dust:2063>,<gagtweaks:peat_dust>)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gregtech:meta_dust:2525> * 4)
                .duration(160)
                .EUt(16)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:2524>,<gregtech:meta_dust:2063>,<gagtweaks:peat_dust>)
                .fluidInputs(<liquid:enhanced_glue> * 50)
                .outputs(<gregtech:meta_dust:2525> * 4)
                .duration(120)
                .EUt(16)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<minecraft:sand> * 5, <minecraft:clay_ball> * 3)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gagtweaks:coke_oven_clay> * 6)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 4,<minecraft:clay_ball> * 2, <minecraft:gravel> * 2)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gagtweaks:muddy_dust> * 6)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 3,<minecraft:clay_ball> * 2, <minecraft:gravel> * 2, <minecraft:wheat>)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gagtweaks:muddy_dust> * 8)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 4, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <minecraft:gravel> * 2)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gagtweaks:muddy_dust> * 12)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 3, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <minecraft:gravel> * 2, <minecraft:wheat>)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<gagtweaks:muddy_dust> * 16)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 4,<minecraft:clay_ball> * 2, <minecraft:gravel> * 2)
                .fluidInputs(<liquid:water> * 2000)
                .outputs(<gagtweaks:muddy_dust> * 6)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 3,<minecraft:clay_ball> * 2, <minecraft:gravel> * 2, <minecraft:wheat>)
                .fluidInputs(<liquid:water> * 2000)
                .outputs(<gagtweaks:muddy_dust> * 8)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 4, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <minecraft:gravel> * 2)
                .fluidInputs(<liquid:water> * 2000)
                .outputs(<gagtweaks:muddy_dust> * 12)
                .duration(160)
                .EUt(8)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<ore:sand> * 3, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <minecraft:gravel> * 2, <minecraft:wheat>)
                .fluidInputs(<liquid:water> * 2000)
                .outputs(<gagtweaks:muddy_dust> * 16)
                .duration(160)
                .EUt(8)
                .buildAndRegister();


        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:23>,<gregtech:meta_dust:32000>)
                .outputs(<gregtech:meta_dust:32001>)
                .duration(150)
                .EUt(30)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:69> * 6, <gregtech:meta_dust:22> * 2, <gregtech:meta_dust:23>, <gregtech:meta_dust:64>)
                .outputs(<gregtech:meta_dust:32011> * 10)
                .duration(360)
                .EUt(96)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<forestry:honeydew>)
                .fluidInputs(<liquid:glue> * 100)
                .fluidOutputs(<liquid:enhanced_glue> * 100)
                .duration(50)
                .EUt(30)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:2034> * 8)
                .fluidInputs(<liquid:enhanced_glue> * 800)
                .outputs(<buildinggadgets:constructionpaste>)
                .duration(110)
                .EUt(8)
                .buildAndRegister();


        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:491> * 3, <gregtech:meta_dust:32006> * 2)
                .outputs(<gregtech:meta_dust:1647> * 5)
                .duration(200)
                .EUt(480)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:214> * 2, <gregtech:meta_dust:2006>, <gregtech:meta_dust:24001>)
                .outputs(<gregtech:meta_dust:32015> * 4)
                .duration(500)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<minecraft:soul_sand> * 8, <gregtech:meta_dust:425> * 16, <gregtech:meta_dust:423> * 4)
                .outputs(<soulshardsrespawn:materials:2>)
                .duration(600)
                .EUt(30720)
                .buildAndRegister();

        <recipemap:mixer>.recipeBuilder()
                .inputs(<gregtech:meta_dust:24001> * 8, <gregtech:meta_dust:82> * 4, <gregtech:meta_dust:130> * 2, <netherex:ghast_queen_tear>)
                .outputs(<soulshardsrespawn:materials:1>)
                .duration(600)
                .EUt(30720)
                .buildAndRegister();


        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_dust:1648>)
                .fluidInputs(<liquid:enhanced_glue> * 50)
                .outputs(<gregtech:meta_item_1:382>)
                .duration(150)
                .EUt(30)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<storagedrawers:upgrade_template>, <gregtech:meta_plate:51> * 4)
                .outputs(<storagedrawers:upgrade_storage:1>)
                .duration(160)
                .EUt(8)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<storagedrawers:upgrade_template>, <gregtech:meta_plate:41> * 4)
                .outputs(<storagedrawers:upgrade_storage:2>)
                .duration(160)
                .EUt(8)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<storagedrawers:upgrade_template>, <gregtech:meta_plate:276> * 4)
                .outputs(<storagedrawers:upgrade_storage:3>)
                .duration(160)
                .EUt(8)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<storagedrawers:upgrade_template>, <gregtech:meta_plate:278> * 4)
                .outputs(<storagedrawers:upgrade_storage:4>)
                .duration(160)
                .EUt(8)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<ore:circuitHv> * 4, <gregtech:meta_item_1:219> * 2, <gregtech:transparent_casing>, <gregtech:machine:987>, <gregtech:metal_casing:5> * 4, <gregtech:meta_plate:32002> * 4)
                .outputs(<actuallyadditions:block_atomic_reconstructor>)
                .duration(700)
                .EUt(120)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:324> * 4, <gregtech:meta_screw:324> * 4, <chunkloaders:single_chunk_loader>, <gregtech:meta_item_1:232>)
                .outputs(<chunkloaders:basic_chunk_loader>)
                .duration(120)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:2> * 4, <gregtech:meta_screw:2> * 4, <gregtech:meta_foil:277> * 16, <chunkloaders:basic_chunk_loader>, <gregtech:meta_item_1:233>)
                .outputs(<chunkloaders:advanced_chunk_loader>)
                .duration(120)
                .EUt(64)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:32004> * 4, <gregtech:meta_screw:323> * 4, <gregtech:meta_foil:277> * 16, <chunkloaders:advanced_chunk_loader>, <gregtech:meta_item_1:234>)
                .outputs(<chunkloaders:ultimate_chunk_loader>)
                .duration(120)
                .EUt(256)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<actuallyadditions:block_testifi_bucks_white_wall> * 6, <actuallyadditions:block_crystal:4> * 3, <ore:cableGtOctalGold> * 2, <gregtech:meta_item_1:99> * 3, <gregtech:meta_item_1:219>)
                .fluidInputs(<liquid:plastic> * 144)
                .outputs(<actuallyadditions:gag_block_display_stand>)
                .duration(1200)
                .EUt(512)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine_casing:3>, <gregtech:meta_plate:32008> * 6, <gregtech:meta_item_1:189> * 4, <actuallyadditions:item_crystal_empowered> * 3, <gregtech:meta_item_1:593> * 3)
                .fluidInputs(<liquid:plastic> * 288)
                .outputs(<galacticraftcore:rocket_workbench>)
                .duration(3000)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<actuallyadditions:block_giant_chest>, <gregtech:meta_plate:32005> * 8, <gregtech:meta_item_1:203>, <actuallyadditions:item_crystal_empowered> * 2)
                .outputs(<actuallyadditions:block_giant_chest_medium>)
                .duration(550)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<actuallyadditions:block_giant_chest_medium>, <gregtech:meta_plate:2520> * 8, <gregtech:meta_item_1:204>, <gagtweaks:peccorite_crystal_empowered> * 2)
                .outputs(<actuallyadditions:block_giant_chest_large>)
                .duration(1920)
                .EUt(30000)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:32003> * 8)
                .outputs(<gregtech:machine_casing:3>)
                .circuit(8)
                .duration(50)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:32019> * 8)
                .outputs(<gregtech:machine_casing:4>)
                .circuit(8)
                .duration(50)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<galacticraftcore:heavy_plating> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<galacticraftcore:nose_cone>)
                .duration(400)
                .EUt(120)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<galacticraftplanets:item_basic_asteroids:5> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<galacticraftplanets:heavy_nose_cone>)
                .duration(800)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier4_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier4>)
                .duration(800)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier5_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier5>)
                .duration(800)
                .EUt(7680)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier7_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier7>)
                .duration(800)
                .EUt(30720)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier8_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier8>)
                .duration(800)
                .EUt(122880)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier9_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier9>)
                .duration(800)
                .EUt(122880)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier10_items:3> * 3, <projectred-illumination:inverted_cage_lamp:14>)
                .outputs(<extraplanets:nose_cone_tier10>)
                .duration(800)
                .EUt(491520)
                .buildAndRegister();



        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:501> * 3, <galacticraftcore:basic_item:9> * 3, <gregtech:meta_item_1:144> * 2, <ore:circuitHv>)
                .outputs(<galacticraftcore:oxygen_concentrator>)
                .duration(350)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:501> * 3, <galacticraftcore:basic_item:8> * 3, <gregtech:meta_item_1:234> * 2, <ore:circuitHv>)
                .fluidInputs(<liquid:plastic> * 144)
                .outputs(<galacticraftcore:basic_item:19>)
                .duration(480)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:80>, <galacticraftcore:basic_item:7> * 3, <gregtech:meta_ring:323> * 3)
                .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
                .duration(200)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_foil:323> * 32, <gregtech:meta_foil:1000> * 32)
                .outputs(<extraplanets:tier1_pressure_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_foil:113> * 32, <gregtech:meta_foil:1000> * 32)
                .outputs(<extraplanets:tier2_pressure_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_foil:2013> * 32, <gregtech:meta_foil:1000> * 32)
                .outputs(<extraplanets:tier3_pressure_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_foil:2062> * 32, <gregtech:meta_foil:1000> * 32)
                .outputs(<extraplanets:tier4_pressure_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:55> * 8, <extraplanets:cloth> * 8, <gregtech:meta_foil:1012> * 32)
                .outputs(<extraplanets:tier1_radiation_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:11> * 8, <extraplanets:cloth> * 8, <gregtech:meta_foil:1012> * 32)
                .outputs(<extraplanets:tier2_radiation_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();


        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:115> * 8, <extraplanets:cloth> * 8, <gregtech:meta_foil:1012> * 32)
                .outputs(<extraplanets:tier3_radiation_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:27> * 8, <extraplanets:cloth> * 8, <gregtech:meta_foil:1012> * 32)
                .outputs(<extraplanets:tier4_radiation_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();


        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate_double:2> * 4, <gregtech:meta_screw:2> * 8)
                .outputs(<extraplanets:tier1_armor_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate_double:323> * 4, <gregtech:meta_screw:323> * 8)
                .outputs(<extraplanets:tier2_armor_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate_double:113> * 4, <gregtech:meta_screw:113> * 8)
                .outputs(<extraplanets:tier3_armor_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate_double:2042> * 4, <gregtech:meta_screw:2042> * 8)
                .outputs(<extraplanets:tier4_armor_layer>)
                .duration(200)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier1_un_prepared_space_suit_helmet>, <extraplanets:tier1_pressure_layer> * 2, <extraplanets:tier1_radiation_layer> * 2, <extraplanets:tier1_armor_layer>)
                .outputs(<extraplanets:tier1_space_suit_helmet:100>.withTag({}))
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier1_un_prepared_space_suit_chest>, <extraplanets:tier1_pressure_layer> * 2, <extraplanets:tier1_radiation_layer> * 2, <extraplanets:tier1_armor_layer>)
                .outputs(<extraplanets:tier1_space_suit_chest:100>.withTag({}))
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier1_un_prepared_space_suit_legings>, <extraplanets:tier1_pressure_layer> * 2, <extraplanets:tier1_radiation_layer> * 2, <extraplanets:tier1_armor_layer>)
                .outputs(<extraplanets:tier1_space_suit_legings:100>.withTag({}))
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier1_un_prepared_space_suit_boots>, <extraplanets:tier1_pressure_layer> * 2, <extraplanets:tier1_radiation_layer> * 2, <extraplanets:tier1_armor_layer>)
                .outputs(<extraplanets:tier1_space_suit_boots:100>.withTag({}))
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier2_un_prepared_space_suit_helmet>, <extraplanets:tier2_pressure_layer> * 2, <extraplanets:tier2_radiation_layer> * 2, <extraplanets:tier2_armor_layer>)
                .outputs(<extraplanets:tier2_space_suit_helmet:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier2_un_prepared_space_suit_chest>, <extraplanets:tier2_pressure_layer> * 2, <extraplanets:tier2_radiation_layer> * 2, <extraplanets:tier2_armor_layer>)
                .outputs(<extraplanets:tier2_space_suit_chest:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier2_un_prepared_space_suit_legings>, <extraplanets:tier2_pressure_layer> * 2, <extraplanets:tier2_radiation_layer> * 2, <extraplanets:tier2_armor_layer>)
                .outputs(<extraplanets:tier2_space_suit_legings:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier2_un_prepared_space_suit_boots>, <extraplanets:tier2_pressure_layer> * 2, <extraplanets:tier2_radiation_layer> * 2, <extraplanets:tier2_armor_layer>)
                .outputs(<extraplanets:tier2_space_suit_boots:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier3_un_prepared_space_suit_helmet>, <extraplanets:tier3_pressure_layer> * 2, <extraplanets:tier3_radiation_layer> * 2, <extraplanets:tier3_armor_layer>)
                .outputs(<extraplanets:tier3_space_suit_helmet:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier3_un_prepared_space_suit_chest>, <extraplanets:tier3_pressure_layer> * 2, <extraplanets:tier3_radiation_layer> * 2, <extraplanets:tier3_armor_layer>)
                .outputs(<extraplanets:tier3_space_suit_chest:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier3_un_prepared_space_suit_legings>, <extraplanets:tier3_pressure_layer> * 2, <extraplanets:tier3_radiation_layer> * 2, <extraplanets:tier3_armor_layer>)
                .outputs(<extraplanets:tier3_space_suit_legings:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier3_un_prepared_space_suit_boots>, <extraplanets:tier3_pressure_layer> * 2, <extraplanets:tier3_radiation_layer> * 2, <extraplanets:tier3_armor_layer>)
                .outputs(<extraplanets:tier3_space_suit_boots:100>.withTag({}))
                .duration(400)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier4_un_prepared_space_suit_helmet>, <extraplanets:tier4_pressure_layer> * 2, <extraplanets:tier4_radiation_layer> * 2, <extraplanets:tier4_armor_layer>)
                .outputs(<extraplanets:tier4_space_suit_helmet:100>.withTag({}))
                .duration(400)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier4_un_prepared_space_suit_chest>, <extraplanets:tier4_pressure_layer> * 2, <extraplanets:tier4_radiation_layer> * 2, <extraplanets:tier4_armor_layer>)
                .outputs(<extraplanets:tier4_space_suit_chest:100>.withTag({}))
                .duration(400)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier4_un_prepared_space_suit_legings>, <extraplanets:tier4_pressure_layer> * 2, <extraplanets:tier4_radiation_layer> * 2, <extraplanets:tier4_armor_layer>)
                .outputs(<extraplanets:tier4_space_suit_legings:100>.withTag({}))
                .duration(400)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<extraplanets:tier4_un_prepared_space_suit_boots>, <extraplanets:tier4_pressure_layer> * 2, <extraplanets:tier4_radiation_layer> * 2, <extraplanets:tier4_armor_layer>)
                .outputs(<extraplanets:tier4_space_suit_boots:100>.withTag({}))
                .duration(400)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:99>, <gregtech:meta_wire_fine:112> * 6, <gregtech:meta_foil:1012> * 4)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<gregtech:meta_item_1:518> * 8)
                .duration(160)
                .EUt(120)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1170>, <appliedenergistics2:interface>, <appliedenergistics2:material:30> * 2)
                .outputs(<gregtech:machine:11013>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1155>, <appliedenergistics2:interface>, <appliedenergistics2:material:30> * 2)
                .outputs(<gregtech:machine:11012>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1185>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:material:30> * 2)
                .outputs(<gregtech:machine:11014>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1200>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:material:30> * 2)
                .outputs(<gregtech:machine:11015>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1185>, <appliedenergistics2:fluid_interface>, <gregtech:meta_item_1:161>, <gregtech:meta_item_1:236>, <appliedenergistics2:material:30> * 4)
                .outputs(<gregtech:machine:11016>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:machine:1185>, <appliedenergistics2:fluid_interface>, <gregtech:meta_item_1:146>, <gregtech:meta_item_1:236>, <appliedenergistics2:material:30> * 4)
                .outputs(<gregtech:machine:11017>)
                .duration(300)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_stick_long:1648> * 4, <gregtech:meta_stick:1648> * 4, <betterwithmods:rope>)
                .fluidInputs(<liquid:glue> * 500)
                .outputs(<gregtech:meta_item_1:518> * 8)
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1648> * 6)
                .fluidInputs(<liquid:glue> * 100)
                .outputs(<forestry:impregnated_casing>)
                .duration(100)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1648> * 6)
                .fluidInputs(<liquid:enhanced_glue> * 50)
                .outputs(<forestry:impregnated_casing>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_stick_long:1617> * 8)
                .outputs(<forestry:crafting_material:6>)
                .duration(40)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <ore:circuitUlv> * 4, <gregtech:meta_plate:41> * 2)
                .outputs(<forestry:alveary.swarmer>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <forestry:crafting_material:3> * 3, <gregtech:meta_plate:51> * 3)
                .outputs(<forestry:alveary.sieve>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <gregtech:fluid_pipe_small:1617> * 3, <gregtech:meta_item_1:247>)
                .outputs(<forestry:alveary.hygro>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <gregtech:meta_item_1:97> * 2)
                .outputs(<forestry:alveary.heater>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <gregtech:meta_rotor:260>, <gregtech:meta_item_1:127>)
                .outputs(<forestry:alveary.fan>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<forestry:alveary.plain>, <gregtech:meta_plate:339> * 6)
                .outputs(<forestry:alveary.stabiliser>)
                .duration(160)
                .EUt(12)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:501> * 8)
                .outputs(<gagtweaks:carbon_machine_casing>)
                .circuit(8)
                .duration(50)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_stick_long:2011> * 4, <tconstruct:clear_glass>, <gregtech:meta_ring:2011> * 2)
                .fluidInputs(<liquid:red_alloy> * 72)
                .outputs(<projectred-transportation:pipe>)
                .circuit(18)
                .duration(50)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe> * 4, <gregtech:meta_screw:23> * 4)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<projectred-transportation:pipe:1>)
                .circuit(18)
                .duration(100)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe>, <ore:circuitMv>, <gregtech:meta_item_1:158> * 2)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<projectred-transportation:pipe:2>)
                .circuit(18)
                .duration(100)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe>, <gagtweaks:logic_chipset>, <gagtweaks:graphic_chipset>)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<projectred-transportation:pipe:3>)
                .circuit(18)
                .duration(100)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe>, <gregtech:meta_item_1:293>)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<projectred-transportation:pipe:4>)
                .circuit(18)
                .duration(100)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe>, <gregtech:meta_item_1:291>)
                .fluidInputs(<liquid:enhanced_glue> * 100)
                .outputs(<projectred-transportation:pipe:32>)
                .circuit(18)
                .duration(50)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transportation:pipe>, <forestry:crafting_material:3>)
                .outputs(<projectred-transportation:pipe:33>)
                .circuit(18)
                .duration(50)
                .EUt(80)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<ore:workbench>, <ironchest:iron_chest>, <ore:plankWood> * 2, <gregtech:meta_plate:32007> * 3)
                .outputs(<projectred-expansion:machine2:10>)
                .duration(80)
                .EUt(16)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<ore:workbench>, <ironchest:iron_chest>, <appliedenergistics2:material:23>, <gregtech:meta_plate:1012> * 2, <gregtech:meta_plate:32004> * 2)
                .outputs(<appliedenergistics2:cell_workbench>)
                .duration(80)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<ore:workbench>, <ironchest:iron_chest>, <ore:plankWood> * 2, <gregtech:meta_plate:32006> * 3, <gagtweaks:processing_chipset>, <gagtweaks:logic_chipset>)
                .outputs(<projectred-expansion:machine2:11>)
                .duration(120)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transmission:wire:34>, <gregtech:meta_block_frame_20:4>)
                .outputs(<projectred-transmission:framed_wire:34>)
                .duration(40)
                .EUt(8)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<projectred-transmission:wire:34>, <gregtech:meta_plate:274>)
                .fluidInputs(<liquid:plastic> * 144)
                .outputs(<projectred-expansion:empty_battery>)
                .duration(300)
                .EUt(150)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<integrateddynamics:variable_transformer:0>, <forestry:impregnated_casing>, <integrateddynamics:variable_transformer:1>, <integrateddynamics:cable> * 4, <ore:circuitHv> * 2, <gregtech:meta_item_1:219>)
                .fluidInputs(<liquid:gtfo_chorus_juice> * 1000)
                .outputs(<integrateddynamics:logic_programmer>)
                .duration(400)
                .EUt(240)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<ironchest:iron_chest:2>, <gregtech:meta_plate:32002> * 16, <gregtech:meta_screw:24001> * 32)
                .outputs(<actuallyadditions:block_giant_chest>)
                .duration(550)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 3, <appliedenergistics2:quartz_glass> * 2, <actuallyadditions:item_crystal_empowered:0> * 2)
                .outputs(<appliedenergistics2:material:39>)
                .duration(60)
                .EUt(480)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 16, <ore:circuitIv> * 4, <appliedenergistics2:material:24> * 4, <ore:wireGtDoubleMercuryBariumCalciumCuprate> * 8, <appliedenergistics2:part:16> * 8)
                .outputs(<appliedenergistics2:controller>)
                .duration(3000)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:22> * 1, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:592> * 16)
                .fluidInputs(<liquid:redstone> * 576)
                .outputs(<appliedenergistics2:material:35>)
                .duration(700)
                .EUt(600)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:35> * 3, <appliedenergistics2:material:23>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:592> * 32)
                .fluidInputs(<liquid:redstone> * 576)
                .outputs(<appliedenergistics2:material:36>)
                .duration(700)
                .EUt(600)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:36> * 3, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:592> * 48)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:37>)
                .duration(700)
                .EUt(1200)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:37> * 3, <appliedenergistics2:material:23> * 3, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:592> * 64)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:38>)
                .duration(700)
                .EUt(1200)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:22> * 1, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:592> * 16, <gregtech:meta_item_1:250>)
                .fluidInputs(<liquid:redstone> * 576)
                .outputs(<appliedenergistics2:material:54>)
                .duration(700)
                .EUt(600)
                .circuit(2)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:54> * 3, <appliedenergistics2:material:23>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:592> * 32, <gregtech:meta_item_1:250>)
                .fluidInputs(<liquid:redstone> * 576)
                .outputs(<appliedenergistics2:material:55>)
                .duration(700)
                .EUt(600)
                .circuit(2)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:55> * 3, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:592> * 48, <gregtech:meta_item_1:250>)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:56>)
                .duration(700)
                .EUt(1200)
                .circuit(2)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:56> * 3, <appliedenergistics2:material:23> * 3, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:592> * 64, <gregtech:meta_item_1:250>)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:57>)
                .duration(700)
                .EUt(1200)
                .circuit(2)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:24>, <appliedenergistics2:material:9> * 4, <gregtech:meta_item_1:281>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:592> * 32)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:32>)
                .duration(700)
                .EUt(600)
                .circuit(3)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:32> * 3, <appliedenergistics2:material:24> * 2, <appliedenergistics2:material:9> * 4, <gregtech:meta_item_1:281>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:592> * 48)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:33>)
                .duration(700)
                .EUt(1200)
                .circuit(3)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<appliedenergistics2:material:33> * 3, <appliedenergistics2:material:24> * 3, <appliedenergistics2:material:9> * 4, <gregtech:meta_item_1:281>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:592> * 64)
                .fluidInputs(<liquid:glowstone> * 576)
                .outputs(<appliedenergistics2:material:34>)
                .duration(700)
                .EUt(1200)
                .circuit(3)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 18, <appliedenergistics2:part:16> * 10, <appliedenergistics2:material:24> * 2)
                .outputs(<appliedenergistics2:drive>)
                .duration(1000)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 18, <appliedenergistics2:part:16> * 10, <appliedenergistics2:material:24> * 2)
                .outputs(<appliedenergistics2:drive>)
                .duration(1000)
                .EUt(1920)
                .circuit(10)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 4, <appliedenergistics2:part:16> * 2, <appliedenergistics2:material:24>)
                .outputs(<appliedenergistics2:chest>)
                .duration(500)
                .EUt(1920)
                .circuit(1)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 8, <appliedenergistics2:material:22> * 2, <appliedenergistics2:material:23> *2, <appliedenergistics2:material:24>, <appliedenergistics2:part:16> * 4)
                .outputs(<appliedenergistics2:crafting_unit>)
                .duration(800)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_stick:32008> * 12, <appliedenergistics2:quartz_glass> * 6, <ore:circuitIv>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>)
                .outputs(<appliedenergistics2:molecular_assembler>)
                .duration(800)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:1016> * 4, <gregtech:meta_plate:32004> * 8, <ore:circuitIv>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <appliedenergistics2:material:24> *2)
                .outputs(<ae2fc:fluid_discretizer>)
                .duration(800)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_stick:396> * 12, <soulshardsrespawn:materials> * 4, <minecraft:skull:5>)
                .outputs(<soulshardsrespawn:soul_cage>)
                .duration(600)
                .EUt(30000)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:128>, <gregtech:meta_ring:2> * 2, <gregtech:meta_stick:2>, <gregtech:meta_item_1:218>, <gregtech:meta_rotor:324>, <ore:cableGtSingleCopper> * 2)
                .outputs(<ironjetpacks:basic_thruster>)
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:130>, <gregtech:meta_ring:113> * 2, <gregtech:meta_stick:113>, <gregtech:meta_item_1:220>, <gregtech:meta_rotor:323>, <ore:cableGtSingleAluminium> * 2)
                .outputs(<ironjetpacks:advanced_thruster>)
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:132>, <gregtech:meta_ring:2062> * 2, <gregtech:meta_stick:2062>, <gregtech:meta_item_1:222>, <gregtech:meta_rotor:2013>, <ore:cableGtSingleHssg> * 2)
                .outputs(<ironjetpacks:elite_thruster>)
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:133>, <gregtech:meta_ring:128> * 2, <gregtech:meta_stick:128>, <gregtech:meta_item_1:223>, <gregtech:meta_rotor:344>, <ore:cableGtSingleVanadiumGallium> * 2)
                .outputs(<ironjetpacks:ultimate_thruster>)
                .duration(400)
                .EUt(96)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:112> * 4, <gregtech:meta_wire_fine:2517> * 8)
                .outputs(<gendustry:upgrade_frame>)
                .duration(40)
                .circuit(8)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:301> * 4, <gregtech:meta_item_1:187>)
                .outputs(<gendustry:eject_cover>)
                .duration(40)
                .circuit(8)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:301> * 4, <gregtech:meta_item_1:157>)
                .outputs(<gendustry:import_cover>)
                .duration(40)
                .circuit(8)
                .EUt(1920)
                .buildAndRegister();

        <recipemap:assembler>.recipeBuilder()
                .inputs(<gregtech:meta_plate:301> * 4, <ore:circuitLv>)
                .outputs(<gendustry:error_sensor_cover>)
                .duration(40)
                .circuit(8)
                .EUt(1920)
                .buildAndRegister();


        <recipemap:canner>.recipeBuilder()
                .inputs(<projectred-expansion:empty_battery>, <projectred-core:resource_item:105> * 6)
                .outputs(<projectred-expansion:charged_battery>)
                .duration(100)
                .EUt(2)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>)
                .outputs(<appliedenergistics2:storage_cell_1k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:36>)
                .outputs(<appliedenergistics2:storage_cell_4k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>)
                .outputs(<appliedenergistics2:storage_cell_16k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>)
                .outputs(<appliedenergistics2:storage_cell_64k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:54>)
                .outputs(<appliedenergistics2:fluid_storage_cell_1k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:55>)
                .outputs(<appliedenergistics2:fluid_storage_cell_4k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:56>)
                .outputs(<appliedenergistics2:fluid_storage_cell_16k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:57>)
                .outputs(<appliedenergistics2:fluid_storage_cell_64k>.withTag({}))
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:32>)
                .outputs(<appliedenergistics2:spatial_storage_cell_2_cubed>)
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:33>)
                .outputs(<appliedenergistics2:spatial_storage_cell_16_cubed>)
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:34>)
                .outputs(<appliedenergistics2:spatial_storage_cell_128_cubed>)
                .duration(300)
                .EUt(30)
                .buildAndRegister();

        <recipemap:canner>.recipeBuilder()
                .inputs(<appliedenergistics2:material:39>, <gregtech:meta_item_1:293>)
                .outputs(<appliedenergistics2:view_cell>)
                .duration(300)
                .EUt(30)
                .buildAndRegister();


        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<minecraft:sand:0> * 5, <minecraft:clay_ball:0> * 3)
                .outputs(<gagtweaks:coke_oven_clay> * 3)
                .duration(240)
                .EUt(8)
                .buildAndRegister();

        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_ingot:328>, <tconstruct:edible:2>) 
                .outputs(<tconstruct:ingots:3>)
                .duration(40)
                .EUt(8)
                .buildAndRegister();

        <recipemap:alloy_smelter>.recipeBuilder()
                .inputs(<gregtech:meta_dust:328>, <tconstruct:edible:2>) 
                .outputs(<tconstruct:ingots:3>)
                .duration(40)
                .EUt(8)
                .buildAndRegister();


        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:5>)
                .outputs(<gregtech:meta_stick:32003> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:4>)
                .outputs(<gregtech:meta_stick:32005> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal>)
                .outputs(<gregtech:meta_stick:32007> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:2>)
                .outputs(<gregtech:meta_stick:32004> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:1>)
                .outputs(<gregtech:meta_stick:32006> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<actuallyadditions:item_crystal:3>)
                .outputs(<gregtech:meta_stick:32008> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<gagtweaks:peccorite_crystal>)
                .outputs(<gregtech:meta_stick:32018> * 2)
                .duration(127)
                .EUt(240)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<ore:peltSmall>)
                .outputs(<primal:hide_raw> * 2)
                .duration(20)
                .EUt(2)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<ore:peltMedium>)
                .outputs(<primal:hide_raw> * 4)
                .duration(20)
                .EUt(2)
                .buildAndRegister();

        <recipemap:lathe>.recipeBuilder()
                .inputs(<ore:peltLarge>)
                .outputs(<primal:hide_raw> * 6)
                .duration(20)
                .EUt(2)
                .buildAndRegister();


        <recipemap:circuit_assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:403>, <gregtech:meta_item_1:628> * 2, <ore:componentInductor> * 4, <ore:componentCapacitor> * 8, <gregtech:meta_item_1:592> * 4, <gagtweaks:processing_chipset>)
                .fluidInputs(<liquid:tin> * 288)
                .outputs(<gregtech:meta_item_1:629>)
                .duration(400)
                .EUt(90)
                .buildAndRegister();

        <recipemap:circuit_assembler>.recipeBuilder()
                .inputs(<gregtech:meta_item_1:403>, <gregtech:meta_item_1:628> * 2, <ore:componentInductor> * 4, <ore:componentCapacitor> * 8, <gregtech:meta_item_1:592> * 4, <gagtweaks:processing_chipset>)
                .fluidInputs(<liquid:soldering_alloy> * 144)
                .outputs(<gregtech:meta_item_1:629>)
                .duration(400)
                .EUt(90)
                .buildAndRegister();


        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gagtweaks:graphic_chipset>, <gregtech:meta_foil:24001> * 16, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip:5> * 2)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gagtweaks:logic_chipset>, <gregtech:meta_foil:23> * 16, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip:6> * 2)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gagtweaks:processing_chipset>, <gregtech:meta_foil:2517> * 16, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip:8> * 6)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gagtweaks:processing_chipset>, <gregtech:meta_foil:274> * 16, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip> * 2)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gregtech:meta_item_1:159> * 2, <gregtech:meta_foil:61> * 16, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip:4> * 2)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-core:resource_item:600>, <gregtech:meta_bolt:301> * 12, <gagtweaks:computing_chipset>, <gagtweaks:processing_chipset>, <gregtech:meta_plate:32005> * 2, <gregtech:meta_wire_fine:122> * 20)
                .outputs(<projectred-transportation:routing_chip:7> * 2)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-transportation:routing_chip> * 4, <gagtweaks:logic_chipset>)
                .outputs(<projectred-transportation:routing_chip:1> * 4)
                .duration(350)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-transportation:routing_chip>)
                .notConsumable(<ore:craftingLensGreen>)
                .outputs(<projectred-transportation:routing_chip:2>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<projectred-transportation:routing_chip>)
                .notConsumable(<ore:craftingLensPurple>)
                .outputs(<projectred-transportation:routing_chip:3>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier2>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32018>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<galacticraftcore:schematic:1>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier3>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32004>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<galacticraftplanets:schematic>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier4>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32018>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier4>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier5>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32004>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier5>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier6>, <gregtech:meta_lens:32008>, <ore:craftingLensGreen>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier6>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier7>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32019>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier7>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier8>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32007>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier8>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier9>, <gregtech:meta_lens:32008>, <ore:craftingLensCyan>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier9>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier10>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32005>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier10>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_tier10_electric>, <gregtech:meta_lens:32008>, <ore:craftingLensGray>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32006>)
                .outputs(<extraplanets:schematic_tier10_electric_rocket>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_buggy_moon>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32004>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32007>)
                .outputs(<galacticraftcore:schematic>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_rover_venus>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32004>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32007>)
                .outputs(<extraplanets:schematic_venus_rover>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_foil:1007> * 32)
                .notConsumable(<gagtweaks:plan_rover_mars>, <gregtech:meta_lens:32008>, <gregtech:meta_lens:32004>, <gregtech:meta_lens:32003>, <gregtech:meta_lens:32007>)
                .outputs(<extraplanets:schematic_mars_rover>)
                .duration(100)
                .EUt(420)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<integrateddynamics:variable>, <gregtech:meta_item_1:174>, <integrateddynamics:crystalized_menril_chunk> * 2)
                .notConsumable(<gregtech:meta_lens:32004>)
                .outputs(<integrateddynamics:variable_transformer:0> * 4)
                .duration(200)
                .EUt(420)
                .circuit(1)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<integrateddynamics:variable>, <gregtech:meta_item_1:174>, <integrateddynamics:crystalized_menril_chunk> * 2)
                .notConsumable(<gregtech:meta_lens:32004>)
                .outputs(<integrateddynamics:variable_transformer:1> * 4)
                .duration(200)
                .EUt(420)
                .circuit(2)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gagtweaks:computing_chipset> * 2, <gregtech:meta_plate:32005>, <gregtech:meta_wire_fine:252> * 16)
                .notConsumable(<gregtech:meta_lens:32005>)
                .outputs(<gendustry:genetics_processor>)
                .duration(800)
                .EUt(420)
                .circuit(8)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gagtweaks:logic_chipset> * 2, <gregtech:meta_plate:32006>, <gregtech:meta_wire_fine:23> * 16)
                .notConsumable(<gregtech:meta_lens:32006>)
                .outputs(<gendustry:env_processor>)
                .duration(800)
                .EUt(420)
                .circuit(8)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<tconstruct:clear_glass>)
                .notConsumable(<ore:craftingLensWhite>)
                .outputs(<gendustry:labware> * 2)
                .duration(30)
                .EUt(1920)
                .circuit(8)
                .buildAndRegister();

        <recipemap:laser_fabricator>.recipeBuilder()
                .inputs(<gregtech:meta_plate:32003>)
                .notConsumable(<ore:craftingLensWhite>)
                .outputs(<gendustry:gene_sample_blank>)
                .duration(30)
                .EUt(1920)
                .circuit(8)
                .buildAndRegister();


        <recipemap:forming_press>.recipeBuilder()
                .notConsumable(<appliedenergistics2:material:19>)
                .inputs(<gregtech:meta_plate_double:99> * 3)
                .outputs(<appliedenergistics2:material:20>)
                .duration(200)
                .EUt(480)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<tconstruct:clear_glass> * 2, <gregtech:meta_plate:1074>)
                .outputs(<gregtech:transparent_casing:2>)
                .duration(200)
                .EUt(480)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<gregtechfoodoption:gtfo_meta_item:50>)
                .notConsumable(<gregtechfoodoption:gtfo_meta_item:45>)
                .outputs(<gregtechfoodoption:gtfo_meta_item:47>)
                .circuit(1)
                .duration(60)
                .EUt(8)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<actuallyadditions:item_misc:9>)
                .notConsumable(<gregtechfoodoption:gtfo_meta_item:45>)
                .outputs(<gagtweaks:unbaked_rice_bread>)
                .circuit(1)
                .duration(60)
                .EUt(8)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<primal:corn_ground>)
                .notConsumable(<gregtechfoodoption:gtfo_meta_item:45>)
                .outputs(<gagtweaks:unbaked_corn_bread>)
                .circuit(1)
                .duration(60)
                .EUt(8)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<gregtechfoodoption:gtfo_meta_item:50> * 2)
                .notConsumable(<gregtechfoodoption:gtfo_meta_item:46>)
                .outputs(<gregtechfoodoption:gtfo_meta_item:48>)
                .circuit(1)
                .duration(60)
                .EUt(8)
                .buildAndRegister();

        <recipemap:forming_press>.recipeBuilder()
                .inputs(<gregtechfoodoption:gtfo_meta_item:50> * 2)
                .notConsumable(<gregtechfoodoption:gtfo_meta_item:46>)
                .outputs(<gagtweaks:unbaked_baguette>)
                .circuit(2)
                .duration(60)
                .EUt(8)
                .buildAndRegister();



        addPackaging(<minecraft:cobblestone>, <extrautils2:compressedcobblestone>, 7);
        addPackaging(<minecraft:netherrack>, <extrautils2:compressednetherrack>, 5);
        addPackaging(<minecraft:dirt>, <extrautils2:compresseddirt>, 3);
        addPackaging(<minecraft:sand>, <extrautils2:compressedsand>, 1);
        addPackaging(<minecraft:gravel>, <extrautils2:compressedgravel>, 1);

        addInscriberPress(13, <ore:craftingLensCyan>);
        addInscriberPress(14, <ore:craftingLensGreen>);
        addInscriberPress(15, <ore:craftingLensPurple>);
        addInscriberPress(19, <ore:craftingLensRed>);

        addAlloySmelterAlloy(252, 69, <gregtech:meta_ingot:274>, 400, 32);
        addAlloySmelterAlloy(25, 69, <gregtech:meta_ingot:274>, 400, 32);

        addBlockToPlatesRecipe(<actuallyadditions:block_crystal:5>, <gregtech:meta_plate:32003> * 9, 410, 120);
        addBlockToPlatesRecipe(<actuallyadditions:block_crystal:2>, <gregtech:meta_plate:32004> * 9, 410, 420);
        addBlockToPlatesRecipe(<actuallyadditions:block_crystal:4>, <gregtech:meta_plate:32005> * 9, 410, 420);
        addBlockToPlatesRecipe(<actuallyadditions:block_crystal:1>, <gregtech:meta_plate:32006> * 9, 410, 420);
        addBlockToPlatesRecipe(<actuallyadditions:block_crystal>, <gregtech:meta_plate:32007> * 9, 410, 420);
        addBlockToPlatesRecipe(<actuallyadditions:block_crystal:3>, <gregtech:meta_plate:32008> * 9, 410, 420);
        addBlockToPlatesRecipe(<gagtweaks:peccorite_crystal_block>, <gregtech:meta_plate:32018> * 9, 410, 420);
        addBlockToPlatesRecipe(<gagtweaks:nitanite_crystal_block>, <gregtech:meta_plate:32019> * 9, 410, 420);
        addBlockToPlatesRecipe(<minecraft:stone_slab>, <projectred-core:resource_item> * 2, 40, 2);
        addBlockToPlatesRecipe(<minecraft:ender_pearl>, <extrautils2:endershard> * 8, 40, 2);

        addDoughRecipe(<actuallyadditions:item_misc:9>, 32021);
        addDoughRecipe(<primal:corn_ground>, 32009);
}