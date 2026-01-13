/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_FOUR;

static recipesShaped as IIngredient[][][][IItemStack] = {
<gregtech:machine:11002> : [
        [
            [<gregtech:cable_single:112>,<minecraft:glass>,<ore:circuitLv>],
            [<gregtech:meta_item_1:157>,<gregtech:machine:986>,<gregtech:meta_tool_head_buzz_saw:324>],
            [<ore:circuitLv>,<gregtech:cable_single:112>,<gregtech:meta_item_1:127>]
        ]
    ],

<gregtech:machine:11003> : [
        [
            [<gregtech:cable_single:25>,<minecraft:glass>,<ore:circuitMv>],
            [<gregtech:meta_item_1:158>,<gregtech:machine:987>,<gregtech:meta_tool_head_buzz_saw:2>],
            [<ore:circuitMv>,<gregtech:cable_single:25>,<gregtech:meta_item_1:128>]
        ]
    ],

<gregtech:mining_hammer>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {AoELayer: 0, MaxAoELayer: 0, TorchPlacing: 1 as byte, AoERow: 1, AoEColumn: 1, MaxAoERow: 1, MaxAoEColumn: 1}, HideFlags: 2, "GT.Tool": {MaxDurability: 3600, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 4, AttackSpeed: -3.2 as float}}) : [
        [
            [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:craftingToolFile>],
            [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:stickWood>],
            [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:craftingToolHardHammer>]
        ]
    ],

<gregtech:spade>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {AoELayer: 0, MaxAoELayer: 0, AoERow: 1, AoEColumn: 1, MaxAoERow: 1, MaxAoEColumn: 1}, HideFlags: 2, "GT.Tool": {MaxDurability: 3600, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 4, AttackSpeed: -3.2 as float}}) : [
        [
            [<ore:craftingToolFile>,<gregtech:meta_plate:23>,<ore:craftingToolHardHammer>],
            [<gregtech:meta_plate:23>,<ore:stickWood>,<gregtech:meta_plate:23>],
            [null,<ore:stickWood>,null]
        ]
    ],

<gregtech:meta_item_1:519> * 2 : [
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:271>,<gregtech:meta_wire_fine:25>],
            [null,<minecraft:paper>,null]
        ],
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:266>,<gregtech:meta_wire_fine:25>],
            [null,<minecraft:paper>,null]
        ],
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:18>,<gregtech:meta_wire_fine:25>],
            [null,<minecraft:paper>,null]
        ]
    ],

    <extrautils2:ineffableglass> * 4 : [
            [
            [<extrautils2:ineffableglass:2>,<extrautils2:ineffableglass:2>],
            [<extrautils2:ineffableglass:2>,<extrautils2:ineffableglass:2>]
        ]
    ],

<tconstruct:materials:15> : [
        [
            [null,<forestry:crafting_material:2>,null],
            [<forestry:crafting_material:2>,<gregtech:meta_foil:41>,<forestry:crafting_material:2>],
            [null,<forestry:crafting_material:2>,null]
        ]
    ],

<gregtech:machine:95> : [
        [
            [<ore:cableGtQuadrupleTin>,<gregtech:meta_item_1:187>,<ore:cableGtQuadrupleTin>],
            [<ore:circuitLv>,<gregtech:machine:986>,<ore:circuitLv>],
            [<gregtech:meta_plate:324>,<gregtech:meta_plate:324>,<gregtech:meta_plate:324>]
        ]
    ],

<gregtech:machine:96> : [
        [
            [<ore:cableGtQuadrupleCopper>,<gregtech:meta_item_1:188>,<ore:cableGtQuadrupleCopper>],
            [<ore:circuitMv>,<gregtech:machine:987>,<ore:circuitMv>],
            [<gregtech:meta_plate:2>,<gregtech:meta_plate:2>,<gregtech:meta_plate:2>]
        ]
    ],

<gregtech:machine:185> : [
        [
            [<ore:circuitLv>,<gregtech:meta_dust:341>,<ore:circuitLv>],
            [<ore:cableGtSingleTin>,<gregtech:machine:986>,<ore:cableGtSingleTin>],
            [<ore:circuitLv>,<gregtech:meta_item_1:127>,<ore:circuitLv>]
        ]
    ],

<gregtech:machine:186> : [
        [
            [<ore:circuitMv>,<gregtech:meta_dust:341>,<ore:circuitMv>],
            [<ore:cableGtSingleCopper>,<gregtech:machine:987>,<ore:cableGtSingleCopper>],
            [<ore:circuitMv>,<gregtech:meta_item_1:128>,<ore:circuitMv>]
        ]
    ],

<gregtech:machine:245> : [
        [
            [<gregtech:cable_single:112>,<ore:circuitLv>,<minecraft:glass>],
            [<gregtech:meta_item_1:157>,<gregtech:machine:986>,<gregtech:meta_cutting_blade:2014>],
            [<ore:circuitLv>,<gregtech:cable_single:112>,<gregtech:meta_item_1:127>]
        ]
    ],

<gregtech:machine:246> : [
        [
            [<gregtech:cable_single:252>,<ore:circuitMv>,<minecraft:glass>],
            [<gregtech:meta_item_1:158>,<gregtech:machine:987>,<gregtech:meta_cutting_blade:2036>],
            [<ore:circuitMv>,<gregtech:cable_single:252>,<gregtech:meta_item_1:128>]
        ]
    ],

<buildinggadgets:constructionpastecontainer> : [
        [
            [<gregtech:meta_item_1:78>,null,<gregtech:meta_item_1:78>],
            [null,<buildinggadgets:constructionpaste>,null],
            [<gregtech:meta_item_1:78>,null,<gregtech:meta_item_1:78>]
        ]
    ],

<ironjetpacks:basic_jetpack> : [
        [
            [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
            [<ore:cableGtDoubleCopper>,<gregtech:meta_item_1:736>,<ore:cableGtDoubleCopper>],
            [<ironjetpacks:basic_thruster>,<ore:circuitMv>,<ironjetpacks:basic_thruster>]
        ]
    ],

<ironjetpacks:advanced_jetpack> : [
        [
            [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
            [<ore:cableGtDoubleAluminium>,<gregtech:meta_item_1:742>,<ore:cableGtDoubleAluminium>],
            [<ironjetpacks:advanced_thruster>,<ore:circuitEv>,<ironjetpacks:advanced_thruster>]
        ]
    ],

<ironjetpacks:elite_jetpack> : [
        [
            [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
            [<ore:cableGtDoubleHssg>,<gregtech:meta_item_1:749>,<ore:cableGtDoubleHssg>],
            [<ironjetpacks:elite_thruster>,<ore:circuitLuv>,<ironjetpacks:elite_thruster>]
        ]
    ],

<ironjetpacks:ultimate_jetpack> : [
        [
            [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
            [<ore:cableGtDoubleVanadiumGallium>,<gregtech:meta_item_1:750>,<ore:cableGtDoubleVanadiumGallium>],
            [<ironjetpacks:ultimate_thruster>,<ore:circuitZpm>,<ironjetpacks:ultimate_thruster>]
        ]
    ],

<gregtech:machine:1003> : [
        [
            [<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>],
            [<ore:circuitMv>,<gregtech:metal_casing:4>,<ore:circuitMv>],
            [<ore:cableGtSingleCopper>,<ore:circuitMv>,<ore:cableGtSingleCopper>]
        ]
    ],

<ironchest:iron_chest:2> : [
        [
            [<gregtech:meta_plate:276>,<gregtech:meta_plate_double:276>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate_double:276>,<minecraft:chest>,<gregtech:meta_plate_double:276>],
            [<gregtech:meta_plate:276>,<gregtech:meta_plate_double:276>,<gregtech:meta_plate:276>]
        ]
    ],

<ironchest:gold_diamond_chest_upgrade> : [
        [
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:41>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>]
        ]
    ],

<ironchest:diamond_obsidian_chest_upgrade> : [
        [
            [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
            [<minecraft:obsidian>,<ore:blockGlass>,<minecraft:obsidian>],
            [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]
        ]
    ],

<camera:camera> : [
        [
            [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:232>,<gregtech:meta_plate:1012>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_plate:2000>,<gregtech:meta_plate:1012>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>]
        ]
    ],

<buildinggadgets:buildingtool> : [
        [
            [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
            [<gregtech:meta_plate:276>,<ore:circuitLv>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]
        ]
    ],

<buildinggadgets:exchangertool> : [
        [
            [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
            [<gregtech:meta_plate:2005>,<ore:circuitLv>,<gregtech:meta_plate:2005>],
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]
        ]
    ],

<buildinggadgets:copypastetool> : [
        [
            [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
            [<gregtech:meta_plate:416>,<ore:circuitLv>,<gregtech:meta_plate:416>],
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]
        ]
    ],

<buildinggadgets:templatemanager> : [
        [
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>],
            [<ore:circuitUlv>,<ore:craftingToolHardHammer>,<ore:circuitUlv>],
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]
        ]
    ],

<extraplanets:apple_diamond> : [
        [
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,<minecraft:apple>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>]
        ]
    ],
<actuallyadditions:block_xp_solidifier> : [
        [  
            [<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],
            [<gregtech:meta_item_1:142>,<gregtech:machine_casing>,<gregtech:meta_item_1:142>],
            [<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>]
        ]
    ]
};

static recipesShapeless as IIngredient[][][IItemStack] = {
    <actuallyadditions:item_food:13> : [
        [<gregtechfoodoption:gtfo_meta_item:84>, <actuallyadditions:item_food>, <minecraft:cooked_beef>]
    ],

    <tconstruct:soil:5> : [
        [<tconstruct:edible:4>, <minecraft:magma_cream>, <tconstruct:edible:4>, <minecraft:magma_cream>, <ore:sand>, <ore:dirt>]
    ],

    <forestry:crafting_material:6> : [
        [<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<ore:craftingToolHardHammer>]
    ]
};

static IronShulkers as IItemStack[IItemDefinition] = {
    <ironchest:iron_shulker_box_white>.definition : <minecraft:white_shulker_box>,
    <ironchest:iron_shulker_box_orange>.definition : <minecraft:orange_shulker_box>,
    <ironchest:iron_shulker_box_magenta>.definition : <minecraft:magenta_shulker_box>,
    <ironchest:iron_shulker_box_light_blue>.definition : <minecraft:light_blue_shulker_box>,
    <ironchest:iron_shulker_box_yellow>.definition : <minecraft:yellow_shulker_box>,
    <ironchest:iron_shulker_box_lime>.definition : <minecraft:lime_shulker_box>,
    <ironchest:iron_shulker_box_pink>.definition : <minecraft:pink_shulker_box>,
    <ironchest:iron_shulker_box_gray>.definition : <minecraft:gray_shulker_box>,
    <ironchest:iron_shulker_box_silver>.definition : <minecraft:silver_shulker_box>,
    <ironchest:iron_shulker_box_cyan>.definition : <minecraft:cyan_shulker_box>,
    <ironchest:iron_shulker_box_purple>.definition : <minecraft:purple_shulker_box>,
    <ironchest:iron_shulker_box_blue>.definition : <minecraft:blue_shulker_box>,
    <ironchest:iron_shulker_box_brown>.definition : <minecraft:brown_shulker_box>,
    <ironchest:iron_shulker_box_green>.definition : <minecraft:green_shulker_box>,
    <ironchest:iron_shulker_box_red>.definition : <minecraft:red_shulker_box>,
    <ironchest:iron_shulker_box_black>.definition : <minecraft:black_shulker_box>
};

function init() as void {
    for key, value in IronShulkers {
        Recipes.addShaped(STAGE_FOUR.stage, key.makeStack(0),[
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:335>,value,<gregtech:meta_plate:335>],
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>]]);

        Recipes.addShaped(STAGE_FOUR.stage, key.makeStack(1),[
            [<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate_double:41>,value,<gregtech:meta_plate_double:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>]]);

        Recipes.addShaped(STAGE_FOUR.stage, key.makeStack(2),[
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,value,<gregtech:meta_plate:276>],
            [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>]]);

        Recipes.addShaped(STAGE_FOUR.stage, key.makeStack(3),[
            [<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>],
            [<gregtech:meta_plate_double:25>,value,<gregtech:meta_plate_double:25>],
            [<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>]]);

        Recipes.addShaped(STAGE_FOUR.stage, key.makeStack(4),[
            [<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>],
            [<gregtech:meta_plate_double:100>,value,<gregtech:meta_plate_double:100>],
            [<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>]]);
    }

    ProcessUtils.processRecipesShaped(recipesShaped, STAGE_FOUR);
    ProcessUtils.processRecipesShapeless(recipesShapeless, STAGE_FOUR);
}

/*
Recipes.addShaped("Saw1", stage, <gregtech:machine:11002>,[
    [<gregtech:cable_single:112>,<minecraft:glass>,<ore:circuitLv>],
    [<gregtech:meta_item_1:157>,<gregtech:machine:986>,<gregtech:meta_tool_head_buzz_saw:324>],
    [<ore:circuitLv>,<gregtech:cable_single:112>,<gregtech:meta_item_1:127>]]);

Recipes.addShaped("Saw2", stage, <gregtech:machine:11003>,[
    [<gregtech:cable_single:25>,<minecraft:glass>,<ore:circuitMv>],
    [<gregtech:meta_item_1:158>,<gregtech:machine:987>,<gregtech:meta_tool_head_buzz_saw:2>],
    [<ore:circuitMv>,<gregtech:cable_single:25>,<gregtech:meta_item_1:128>]]);

Recipes.addShaped("CobaltMiningHammer", stage, <gregtech:mining_hammer>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {AoELayer: 0, MaxAoELayer: 0, TorchPlacing: 1 as byte, AoERow: 1, AoEColumn: 1, MaxAoERow: 1, MaxAoEColumn: 1}, HideFlags: 2, "GT.Tool": {MaxDurability: 3600, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 4, AttackSpeed: -3.2 as float}}),[
    [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:craftingToolFile>],
    [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:stickWood>],
    [<gregtech:meta_plate:23>,<gregtech:meta_plate:23>,<ore:craftingToolHardHammer>]]);

Recipes.addShaped("CobaltSpade", stage, <gregtech:spade>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {AoELayer: 0, MaxAoELayer: 0, AoERow: 1, AoEColumn: 1, MaxAoERow: 1, MaxAoEColumn: 1}, HideFlags: 2, "GT.Tool": {MaxDurability: 3600, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 4, AttackSpeed: -3.2 as float}}),[
    [<ore:craftingToolFile>,<gregtech:meta_plate:23>,<ore:craftingToolHardHammer>],
    [<gregtech:meta_plate:23>,<ore:stickWood>,<gregtech:meta_plate:23>],
    [null,<ore:stickWood>,null]]);

Recipes.addShaped("ResistorFineWire", stage, <gregtech:meta_item_1:519> * 2,[
    [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
    [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:271>,<gregtech:meta_wire_fine:25>],
    [null,<minecraft:paper>,null]]);

Recipes.addShaped("ResistorFineWire2", stage, <gregtech:meta_item_1:519> * 2,[
    [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
    [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:266>,<gregtech:meta_wire_fine:25>],
    [null,<minecraft:paper>,null]]);

Recipes.addShaped("ResistorFineWire3", stage, <gregtech:meta_item_1:519> * 2,[
    [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
    [<gregtech:meta_wire_fine:25>,<gregtech:meta_dust:18>,<gregtech:meta_wire_fine:25>],
    [null,<minecraft:paper>,null]]);

Recipes.addShaped("IneffableGlassTransform", stage, <extrautils2:ineffableglass> * 4,[
    [<extrautils2:ineffableglass:2>,<extrautils2:ineffableglass:2>],
    [<extrautils2:ineffableglass:2>,<extrautils2:ineffableglass:2>]]);

Recipes.addShaped("SilkyJewelComponent", stage, <tconstruct:materials:15>,[
    [null,<forestry:crafting_material:2>,null],
    [<forestry:crafting_material:2>,<gregtech:meta_foil:41>,<forestry:crafting_material:2>],
    [null,<forestry:crafting_material:2>,null]]);

Recipes.addShaped("ArcFurnace1", stage, <gregtech:machine:95>,[
    [<ore:cableGtQuadrupleTin>,<gregtech:meta_item_1:187>,<ore:cableGtQuadrupleTin>],
    [<ore:circuitLv>,<gregtech:machine:986>,<ore:circuitLv>],
    [<gregtech:meta_plate:324>,<gregtech:meta_plate:324>,<gregtech:meta_plate:324>]]);

Recipes.addShaped("ArcFurnace2", stage, <gregtech:machine:96>,[
    [<ore:cableGtQuadrupleCopper>,<gregtech:meta_item_1:188>,<ore:cableGtQuadrupleCopper>],
    [<ore:circuitMv>,<gregtech:machine:987>,<ore:circuitMv>],
    [<gregtech:meta_plate:2>,<gregtech:meta_plate:2>,<gregtech:meta_plate:2>]]);

Recipes.addShaped("Centrifuge1", stage, <gregtech:machine:185>,[
    [<ore:circuitLv>,<gregtech:meta_dust:341>,<ore:circuitLv>],
    [<ore:cableGtSingleTin>,<gregtech:machine:986>,<ore:cableGtSingleTin>],
    [<ore:circuitLv>,<gregtech:meta_item_1:127>,<ore:circuitLv>]]);

Recipes.addShaped("Centrifuge2", stage, <gregtech:machine:186>,[
    [<ore:circuitMv>,<gregtech:meta_dust:341>,<ore:circuitMv>],
    [<ore:cableGtSingleCopper>,<gregtech:machine:987>,<ore:cableGtSingleCopper>],
    [<ore:circuitMv>,<gregtech:meta_item_1:128>,<ore:circuitMv>]]);

Recipes.addShaped("CuttingMachine1", stage, <gregtech:machine:245>,[
    [<gregtech:cable_single:112>,<ore:circuitLv>,<minecraft:glass>],
    [<gregtech:meta_item_1:157>,<gregtech:machine:986>,<gregtech:meta_cutting_blade:2014>],
    [<ore:circuitLv>,<gregtech:cable_single:112>,<gregtech:meta_item_1:127>]]);

Recipes.addShaped("CuttingMachine2", stage, <gregtech:machine:246>,[
    [<gregtech:cable_single:252>,<ore:circuitMv>,<minecraft:glass>],
    [<gregtech:meta_item_1:158>,<gregtech:machine:987>,<gregtech:meta_cutting_blade:2036>],
    [<ore:circuitMv>,<gregtech:cable_single:252>,<gregtech:meta_item_1:128>]]);

Recipes.addShaped("PasteContainer", stage, <buildinggadgets:constructionpastecontainer>,[
    [<gregtech:meta_item_1:78>,null,<gregtech:meta_item_1:78>],
    [null,<buildinggadgets:constructionpaste>,null],
    [<gregtech:meta_item_1:78>,null,<gregtech:meta_item_1:78>]]);

Recipes.addShaped("BasicJetpack", stage, <ironjetpacks:basic_jetpack>,[
    [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
    [<ore:cableGtDoubleCopper>,<gregtech:meta_item_1:736>,<ore:cableGtDoubleCopper>],
    [<ironjetpacks:basic_thruster>,<ore:circuitMv>,<ironjetpacks:basic_thruster>]]);

Recipes.addShaped("AdvancedJetpack", stage, <ironjetpacks:advanced_jetpack>,[
    [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
    [<ore:cableGtDoubleAluminium>,<gregtech:meta_item_1:742>,<ore:cableGtDoubleAluminium>],
    [<ironjetpacks:advanced_thruster>,<ore:circuitEv>,<ironjetpacks:advanced_thruster>]]);

Recipes.addShaped("EliteJetpack", stage, <ironjetpacks:elite_jetpack>,[
    [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
    [<ore:cableGtDoubleHssg>,<gregtech:meta_item_1:749>,<ore:cableGtDoubleHssg>],
    [<ironjetpacks:elite_thruster>,<ore:circuitLuv>,<ironjetpacks:elite_thruster>]]);

Recipes.addShaped("UltimateJetpack", stage, <ironjetpacks:ultimate_jetpack>,[
    [<ore:craftingToolWireCutter>,<minecraft:elytra>,<ore:craftingToolScrewdriver>],
    [<ore:cableGtDoubleVanadiumGallium>,<gregtech:meta_item_1:750>,<ore:cableGtDoubleVanadiumGallium>],
    [<ironjetpacks:ultimate_thruster>,<ore:circuitZpm>,<ironjetpacks:ultimate_thruster>]]);

Recipes.addShaped("ImplosionReactor", stage, <gregtech:machine:1003>,[
    [<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>],
    [<ore:circuitMv>,<gregtech:metal_casing:4>,<ore:circuitMv>],
    [<ore:cableGtSingleCopper>,<ore:circuitMv>,<ore:cableGtSingleCopper>]]);

Recipes.addShaped("DiaChest", stage, <ironchest:iron_chest:2>,[
    [<gregtech:meta_plate:276>,<gregtech:meta_plate_double:276>,<gregtech:meta_plate:276>],
    [<gregtech:meta_plate_double:276>,<minecraft:chest>,<gregtech:meta_plate_double:276>],
    [<gregtech:meta_plate:276>,<gregtech:meta_plate_double:276>,<gregtech:meta_plate:276>]]);

Recipes.addShaped("Upg6", stage, <ironchest:gold_diamond_chest_upgrade>,[
    [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
    [<gregtech:meta_plate:276>,<gregtech:meta_plate:41>,<gregtech:meta_plate:276>],
    [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>]]);

Recipes.addShaped("UpgChestObs", stage, <ironchest:diamond_obsidian_chest_upgrade>,[
    [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
    [<minecraft:obsidian>,<ore:blockGlass>,<minecraft:obsidian>],
    [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);

Recipes.addShaped("Camera", stage, <camera:camera>,[
    [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:232>,<gregtech:meta_plate:1012>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_plate:2000>,<gregtech:meta_plate:1012>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("BuildingGadget", stage, <buildinggadgets:buildingtool>,[
    [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
    [<gregtech:meta_plate:276>,<ore:circuitLv>,<gregtech:meta_plate:276>],
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]]);

Recipes.addShaped("ExchangingGadget", stage, <buildinggadgets:exchangertool>,[
    [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
    [<gregtech:meta_plate:2005>,<ore:circuitLv>,<gregtech:meta_plate:2005>],
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]]);

Recipes.addShaped("CopypasteGadget", stage, <buildinggadgets:copypastetool>,[
    [<gregtech:meta_plate:328>,<gregtech:meta_item_1:187>,<gregtech:meta_plate:328>],
    [<gregtech:meta_plate:416>,<ore:circuitLv>,<gregtech:meta_plate:416>],
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]]);

Recipes.addShaped("TemplateManager", stage, <buildinggadgets:templatemanager>,[
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>],
    [<ore:circuitUlv>,<ore:craftingToolHardHammer>,<ore:circuitUlv>],
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]]);

Recipes.addShaped("Dapple", stage, <extraplanets:apple_diamond>,
 [[<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
  [<gregtech:meta_plate:276>,<minecraft:apple>,<gregtech:meta_plate:276>],
  [<gregtech:meta_plate:276>,<gregtech:meta_plate:276>,<gregtech:meta_plate:276>],
  ]);

Recipes.addShaped("XPSolidifier", stage, <actuallyadditions:block_xp_solidifier>,
 [[<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],
  [<gregtech:meta_item_1:142>,<gregtech:machine_casing>,<gregtech:meta_item_1:142>],
  [<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],
  ]);

Recipes.addShapeless("Burger", stage, <actuallyadditions:item_food:13>,[<gregtechfoodoption:gtfo_meta_item:84>, <actuallyadditions:item_food>, <minecraft:cooked_beef>]);
Recipes.addShapeless("SlimyMud3", stage, <tconstruct:soil:5>, [<tconstruct:edible:4>, <minecraft:magma_cream>, <tconstruct:edible:4>, <minecraft:magma_cream>, <ore:sand>, <ore:dirt>]);
Recipes.addShapeless("Paneling", stage, <forestry:crafting_material:6>, [<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<gregtech:meta_stick_long:1617>,<ore:craftingToolHardHammer>]);
*/