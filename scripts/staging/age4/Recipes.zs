/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_FOUR;

static recipesShaped as IIngredient[][][][IItemStack] = {
    <gagtweaks:peccorite_crystal_block> : [
        [
            [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>],
            [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>],
            [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>]
        ]
    ],

    <gagtweaks:peccorite_crystal_block_empowered> : [
        [
            [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>],
            [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>],
            [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>]
        ]
    ],

    <gagtweaks:nitanite_crystal_block> : [
        [
            [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>],
            [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>],
            [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>]
        ]
    ],

    <gagtweaks:nitanite_crystal_block_empowered> : [
        [
            [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>],
            [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>],
            [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>]
        ]
    ],

    <extrautils2:decorativesolid:3> : [
        [
            [<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>],
            [<extrautils2:decorativesolid:2>,<gregtech:meta_plate:32008>,<extrautils2:decorativesolid:2>],
            [<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>]
        ]
    ],

    <extrautils2:passivegenerator:4> : [
        [
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],
            [<extrautils2:ingredients:1>,<gregtech:meta_rotor:323>,<extrautils2:ingredients:1>],
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]
        ]
    ],

    <extrautils2:passivegenerator:3> : [
        [
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],
            [<extrautils2:ingredients:1>,<gregtech:meta_rotor:22>,<extrautils2:ingredients:1>],
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]
        ]
    ],

    <extrautils2:ingredients:1> : [
        [
            [<extrautils2:ingredients>,<gregtech:meta_bolt:323>,<extrautils2:ingredients>],
            [<gregtech:meta_bolt:323>,<gregtech:meta_gear_small:323>,<gregtech:meta_bolt:323>],
            [<extrautils2:ingredients>,<gregtech:meta_bolt:323>,<extrautils2:ingredients>]
        ]
    ],

    <galacticraftcore:basic_block_core:3> : [
        [
            [<minecraft:stone>,<minecraft:stone>],
            [<minecraft:stone>,<minecraft:stone>,<gregtech:meta_plate:112>]
        ]
    ],

    <galacticraftcore:basic_block_core:4> : [
        [
            [<minecraft:stone>,<minecraft:stone>],
            [<minecraft:stone>,<minecraft:stone>],
            [<gregtech:meta_plate:112>]
        ]
    ],

    <gregtech:machine_casing:3> : [
        [
            [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>],
            [<gregtech:meta_plate:32003>,<ore:craftingToolWrench>,<gregtech:meta_plate:32003>],
            [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>]
        ]
    ],

    <gregtech:machine_casing:4> : [
        [
            [<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>],
            [<gregtech:meta_plate:32019>,<ore:craftingToolWrench>,<gregtech:meta_plate:32019>],
            [<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>]
        ]
    ],

    <projectred-expansion:machine1:1> : [
        [
            [<projectred-transmission:wire:34>,<minecraft:nether_brick>,<projectred-transmission:wire:34>],
            [<minecraft:nether_brick>,<ore:craftingToolWrench>,<minecraft:nether_brick>],
            [<gregtech:meta_plate:32006>,<gregtech:meta_plate:32006>,<gregtech:meta_plate:32006>]
        ]
    ],

    <projectred-expansion:machine2:5> : [
        [
            [<projectred-transmission:wire:34>,<gregtech:meta_plate:32006>,<projectred-transmission:wire:34>],
            [<projectred-transmission:wire:34>,<gregtech:machine:1315>,<projectred-transmission:wire:34>]
        ]
    ],

    <projectred-expansion:machine2:6> : [
        [
            [<gregtech:meta_plate:32006>,<gregtech:meta_item_1:96>,<gregtech:meta_plate:32006>],
            [<projectred-transmission:wire:34>,<gregtech:machine:985>,<projectred-transmission:wire:34>],
            [<minecraft:nether_brick>,<projectred-transmission:wire:34>,<minecraft:nether_brick>]
        ]
    ],

    <projectred-expansion:machine2:10> : [
        [
            [<gregtech:meta_plate:32007>,<gregtech:meta_plate:32007>,<gregtech:meta_plate:32007>],
            [<ore:craftingToolWrench>,<ore:workbench>,<ore:craftingToolHardHammer>],
            [<ore:plankWood>,<ironchest:iron_chest>,<ore:plankWood>]
        ]
    ],

    <appliedenergistics2:cell_workbench> : [
        [
            [<gregtech:meta_plate:32004>,<appliedenergistics2:material:23>,<gregtech:meta_plate:32004>],
            [<ore:craftingToolWrench>,<ore:workbench>,<ore:craftingToolHardHammer>],
            [<gregtech:meta_plate:1012>,<ironchest:iron_chest>,<gregtech:meta_plate:1012>]
        ]
    ],

    <buildinggadgets:destructiontool> : [
        [
            [<gregtech:meta_plate:328>,<gregtech:meta_item_1:217>,<gregtech:meta_plate:328>],
            [<gregtech:meta_plate:32008>,<ore:circuitLv>,<gregtech:meta_plate:32008>],
            [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]
        ]
    ],

    <actuallyadditions:gag_block_empowerer> : [
        [
            [<gregtech:meta_stick:32007>,<gregtech:meta_item_1:737>,<gregtech:meta_stick:32007>],
            [<ore:circuitHv>,<actuallyadditions:block_display_stand>,<ore:circuitHv>],
            [<gregtech:meta_plate:32003>,<actuallyadditions:block_crystal:3>,<gregtech:meta_plate:32003>]
        ]
    ],

    <gagtweaks:heavy_duty_composite> : [
        [
            [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
            [<gregtech:meta_plate_double:2>,<gregtech:meta_plate_double:2>],
            [<gregtech:meta_plate_double:32011>,<gregtech:meta_plate_double:32011>]
        ]
    ],

    <gagtweaks:heavy_duty_composite2> : [
        [
            [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
            [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
            [<gregtech:meta_plate_double:32011>,<gregtech:meta_plate_double:32011>]
        ]
    ],

    <gagtweaks:heavy_duty_composite3> : [
        [
            [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
            [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
            [<gregtech:meta_plate_double:331>,<gregtech:meta_plate_double:331>]
        ]
    ],

    <gagtweaks:heavy_duty_composite4> : [
        [
            [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
            [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
            [<gregtech:meta_plate_double:331>,<gregtech:meta_plate_double:331>]
        ]
    ],

    <gagtweaks:heavy_duty_composite5> : [
        [
            [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
            [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
            [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]
        ]
    ],

    <gagtweaks:heavy_duty_composite6> : [
        [
            [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
            [<gregtech:meta_plate_double:124>,<gregtech:meta_plate_double:124>],
            [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]
        ]
    ],

    <gagtweaks:heavy_duty_composite7> : [
        [
            [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
            [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
            [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]
        ]
    ],

    <gagtweaks:heavy_duty_composite8> : [
        [
            [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
            [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
            [<gregtech:meta_plate_double:27>,<gregtech:meta_plate_double:27>]
        ]
    ],

    <gagtweaks:heavy_duty_composite9> : [
        [
            [<gregtech:meta_plate_double:128>,<gregtech:meta_plate_double:128>],
            [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
            [<gregtech:meta_plate_double:27>,<gregtech:meta_plate_double:27>]
        ]
    ],

    <galacticraftcore:engine> : [
        [
            [<gregtech:meta_item_1:144>,<gregtech:meta_item_1:219>,<gregtech:meta_item_1:249>],
            [<galacticraftcore:heavy_plating>,<ore:craftingToolWrench>,<galacticraftcore:heavy_plating>],
            [<galacticraftcore:heavy_plating>,<galacticraftcore:air_vent>,<galacticraftcore:heavy_plating>]
        ]
    ],

    <galacticraftplanets:item_basic_asteroids:1> : [
        [
            [<gregtech:meta_item_1:145>,<gregtech:meta_item_1:220>,<gregtech:meta_item_1:250>],
            [<galacticraftplanets:item_basic_asteroids:5>,<ore:craftingToolWrench>,<galacticraftplanets:item_basic_asteroids:5>],
            [<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_asteroids:5>]
        ]
    ],

    <galacticraftcore:engine:1> : [
        [
            [<galacticraftcore:heavy_plating>,<gregtech:meta_item_1:144>,<galacticraftcore:heavy_plating>],
            [<galacticraftplanets:item_basic_mars:3>,<gregtech:meta_item_1:144>,<galacticraftplanets:item_basic_mars:3>],
            [<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>]
        ]
    ],

    <extraplanets:tier4_items:2> : [
        [
            [null,<galacticraftplanets:item_basic_mars:3>,null],
            [<extraplanets:tier4_items:3>,<galacticraftplanets:item_basic_mars:3>,<extraplanets:tier4_items:3>],
            [<extraplanets:tier4_items:3>,null,<extraplanets:tier4_items:3>]
        ]
    ],

    <galacticraftcore:parachute> : [
        [
            [<galacticraftcore:canvas>,<galacticraftcore:canvas>,<galacticraftcore:canvas>],
            [<betterwithmods:rope>,null,<betterwithmods:rope>],
            [null,<betterwithmods:rope>,null]
        ]
    ],

    <galacticraftcore:oxygen_mask> : [
        [
            [<minecraft:glass_pane>,<minecraft:glass_pane>,<minecraft:glass_pane>],
            [<minecraft:glass_pane>,null,<minecraft:glass_pane>],
            [<gregtech:meta_item_1:142>,<ore:craftingToolScrewdriver>,<gregtech:meta_item_1:247>]
        ]
    ],

    <galacticraftcore:oxygen_gear> : [
        [
            [null,<gregtech:fluid_pipe_tiny:22>,null],
            [<gregtech:fluid_pipe_tiny:22>,<galacticraftcore:oxygen_concentrator>,<gregtech:fluid_pipe_tiny:22>],
            [<gregtech:fluid_pipe_tiny:22>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_tiny:22>]
        ]
    ],

    <extraplanets:tier1_un_prepared_space_suit_helmet> : [
        [
            [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]
        ]
    ],

    <extraplanets:tier1_un_prepared_space_suit_chest> : [
        [
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>]
        ]
    ],

    <extraplanets:tier1_un_prepared_space_suit_legings> : [
        [
            [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]
        ]
    ],

    <extraplanets:tier1_un_prepared_space_suit_boots> : [
        [
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
            [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]
        ]
    ],

    <extraplanets:tier2_un_prepared_space_suit_helmet> : [
        [
            [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]
        ]
    ],

    <extraplanets:tier2_un_prepared_space_suit_chest> : [
        [
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>]
        ]
    ],

    <extraplanets:tier2_un_prepared_space_suit_legings> : [
        [
            [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]
        ]
    ],

    <extraplanets:tier2_un_prepared_space_suit_boots> : [
        [
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
            [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]
        ]
    ],

    <extraplanets:tier3_un_prepared_space_suit_helmet> : [
        [
            [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]
        ]
    ],

    <extraplanets:tier3_un_prepared_space_suit_chest> : [
        [
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>]
        ]
    ],

    <extraplanets:tier3_un_prepared_space_suit_legings> : [
        [
            [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]
        ]
    ],

    <extraplanets:tier3_un_prepared_space_suit_boots> : [
        [
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
            [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]
        ]
    ],

    <extraplanets:tier4_un_prepared_space_suit_helmet> : [
        [
            [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]
        ]
    ],

    <extraplanets:tier4_un_prepared_space_suit_chest> : [
        [
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>]
        ]
    ],

    <extraplanets:tier4_un_prepared_space_suit_legings> : [
        [
            [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]
        ]
    ],

    <extraplanets:tier4_un_prepared_space_suit_boots> : [
        [
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
            [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]
        ]
    ],

    <actuallyadditions:item_disenchanting_lens> : [
        [
            [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>],
            [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_misc:18>,<actuallyadditions:item_crystal:2>],
            [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>]
        ]
    ],

    <actuallyadditions:item_more_damage_lens> : [
        [
            [<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>],
            [<gregtech:meta_screw:2517>,<actuallyadditions:item_misc:18>,<gregtech:meta_screw:2517>],
            [<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>]
        ]
    ],

    <galacticraftcore:buggymat> : [
        [
            [<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>],
            [<gregtech:meta_plate:1068>,<galacticraftcore:basic_item:9>,<gregtech:meta_plate:1068>],
            [<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>]
        ]
    ],

    <gregtech:machine:11011> : [
        [
            [<gregtech:meta_item_1:174>,<gregtech:meta_item_1:219>,<gregtech:meta_item_1:174>],
            [<gregtech:meta_item_1:159>,<gregtech:metal_casing:5>,<gregtech:meta_item_1:159>],
            [<ore:cableGtSingleGold>,<ore:circuitHv>,<ore:cableGtSingleGold>]
        ]
    ],

    <gregtech:meta_item_1:203> : [
        [
            [<ore:wireGtQuadrupleMagnesiumDiboride>,<gregtech:meta_plate:32007>,<ore:wireGtQuadrupleMagnesiumDiboride>],
            [<ore:circuitMv>,<minecraft:ender_eye>,<ore:circuitMv>],
            [<ore:wireGtQuadrupleMagnesiumDiboride>,<gregtech:meta_plate:32007>,<ore:wireGtQuadrupleMagnesiumDiboride>]
        ],
        [
            [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<actuallyadditions:item_crystal_empowered:5>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>],
            [<ore:circuitHv>,<gregtech:meta_item_1:281>,<ore:circuitHv>],
            [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<actuallyadditions:item_crystal_empowered:5>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>]
        ]
    ],

    <galacticraftcore:fuel_loader> : [
        [
            [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:meta_item_1:144>],
            [<gregtech:cable_single:41>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:144>],
            [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>]
        ]
    ],

    <galacticraftcore:oxygen_compressor> : [
        [
            [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:cable_single:41>],
            [<gregtech:meta_item_1:144>,<gagtweaks:carbon_machine_hull>,<galacticraftcore:oxygen_concentrator>],
            [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:cable_single:41>]
        ]
    ],

    <galacticraftcore:oxygen_compressor:4> : [
        [
            [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:cable_single:41>],
            [<galacticraftcore:oxygen_concentrator>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:144>],
            [<gregtech:cable_single:41>,<gregtech:cable_single:41>,<ore:circuitHv>]
        ]
    ],

    <galacticraftcore:distributor> : [
        [
            [<gregtech:meta_rotor:323>,<galacticraftcore:air_vent>,<gregtech:meta_rotor:323>],
            [<gregtech:meta_item_1:129>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:129>],
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:sealer> : [
        [
            [<gregtech:fluid_pipe_small:323>,<galacticraftcore:oxygen_concentrator>,<gregtech:fluid_pipe_small:323>],
            [<gregtech:meta_item_1:249>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:249>],
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:collector> : [
        [
            [<gregtech:meta_rotor:323>,<galacticraftcore:air_vent>,<gregtech:meta_rotor:323>],
            [<gregtech:meta_item_1:129>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:129>],
            [<ore:cableGtSingleGold>,<galacticraftcore:oxygen_concentrator>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:oxygen_detector> : [
        [
            [<ore:cableGtSingleGold>,<galacticraftcore:air_vent>,<ore:cableGtSingleGold>],
            [<gregtech:meta_plate:32007>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_plate:32007>],
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:cargo> : [
        [
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>],
            [<gregtech:meta_item_1:159>,<gagtweaks:carbon_machine_hull>,<minecraft:chest>],
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:cargo:4> : [
        [
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>],
            [<minecraft:chest>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:159>],
            [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]
        ]
    ],

    <galacticraftcore:platform> * 4 : [
        [
            [<minecraft:piston>,<actuallyadditions:item_crystal>,<minecraft:piston>],
            [<galacticraftcore:basic_item:9>,null,<galacticraftcore:basic_item:9>],
            [<minecraft:piston>,<actuallyadditions:item_crystal>,<minecraft:piston>]
        ]
    ],

    <galacticraftcore:telemetry> : [
        [
            [<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:7>],
            [<galacticraftcore:basic_item:7>,<gagtweaks:carbon_machine_hull>,<galacticraftcore:basic_item:7>],
            [<galacticraftcore:basic_item:6>,<galacticraftcore:basic_item:6>,<galacticraftcore:basic_item:6>]
        ]
    ],

    <galacticraftcore:view_screen> : [
        [
            [<gregtech:meta_plate:324>,<ore:projredIllumar>,<gregtech:meta_plate:324>],
            [<ore:projredIllumar>,<tconstruct:clear_glass>,<ore:projredIllumar>],
            [<gregtech:meta_plate:324>,<ore:projredIllumar>,<gregtech:meta_plate:324>]
        ]
    ],

    <galacticraftcore:basic_item:20> : [
        [
            [<actuallyadditions:item_crystal>,<galacticraftcore:air_vent>,<actuallyadditions:item_crystal>],
            [<galacticraftcore:basic_item:10>,<gregtech:meta_item_1:501>,<galacticraftcore:basic_item:10>],
            [<galacticraftcore:basic_item:10>,<gregtech:meta_item_1:98>,<galacticraftcore:basic_item:10>]
        ]
    ],

    <galacticraftplanets:mars_machine:8> : [
        [
            [<ore:circuitHv>,<galacticraftcore:basic_item:19>,<ore:circuitHv>],
            [<ore:cableGtSingleGold>,<gagtweaks:carbon_machine_hull>,<ore:cableGtSingleGold>],
            [<galacticraftcore:item_basic_moon>,<ore:cableGtSingleGold>,<galacticraftcore:item_basic_moon>]
        ]
    ],

    <galacticraftcore:spin_thruster> : [
        [
            [<galacticraftcore:fuel_canister_partial:1>,<ore:craftingToolScrewdriver>,<galacticraftcore:item_basic_moon>],
            [<galacticraftcore:basic_item:9>,<galacticraftcore:engine>,<galacticraftcore:basic_item:9>]
        ]
    ],

    <galacticraftcore:dishbase> : [
        [
            [<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:8>],
            [null,<galacticraftcore:basic_item:8>,null],
            [<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>]
        ]
    ],

    <appliedenergistics2:part:16> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
            [<appliedenergistics2:part:140>,<appliedenergistics2:part:140>,<appliedenergistics2:part:140>],
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]
        ]
    ],

    <appliedenergistics2:interface> : [
        [
            [<gregtech:meta_plate:1016>,<appliedenergistics2:quartz_glass>,<gregtech:meta_plate:1016>],
            [<appliedenergistics2:part:16>,<appliedenergistics2:material:43>,<appliedenergistics2:part:16>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:quartz_glass>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:part:440> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<appliedenergistics2:interface>]
        ]
    ],

    <appliedenergistics2:part:441> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<appliedenergistics2:fluid_interface>]
        ]
    ],

    <appliedenergistics2:spatial_pylon> : [
        [
            [<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:16>,<appliedenergistics2:quartz_glass>],
            [<appliedenergistics2:material:7>,<appliedenergistics2:fluix_block>,<appliedenergistics2:material:7>],
            [<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:16>,<appliedenergistics2:quartz_glass>]
        ]
    ],

    <appliedenergistics2:biometric_card>.withTag({}) : [
        [
            [<appliedenergistics2:material:24>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:41>,<gregtech:meta_item_1:596>,<gregtech:meta_plate:41>]
        ]
    ],

    <appliedenergistics2:memory_card>.withTag({}) : [
        [
            [<appliedenergistics2:material:24>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:41>,<gregtech:meta_item_1:592>,<gregtech:meta_plate:41>]
        ]
    ],

    <appliedenergistics2:part:320> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:43>,<appliedenergistics2:material:7>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:160>,<gregtech:meta_plate:1012>]
        ]
    ],

    <appliedenergistics2:part:321> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:43>,<appliedenergistics2:material:7>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:145>,<gregtech:meta_plate:1012>]
        ]
    ],
    
    <appliedenergistics2:part:302> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:44>,<appliedenergistics2:material:7>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:160>,<gregtech:meta_plate:1012>]
        ]
    ],

    <appliedenergistics2:part:300> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:44>,<appliedenergistics2:material:7>],
            [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:145>,<gregtech:meta_plate:1012>]
        ]
    ],

    <appliedenergistics2:wireless_access_point> : [
        [
            [<gregtech:meta_item_1:503>,<appliedenergistics2:material:23>,<appliedenergistics2:part:16>]
        ]
    ],

        <appliedenergistics2:material:39> : [
        [
            [<appliedenergistics2:quartz_glass>,<ore:craftingToolScrewdriver>,<appliedenergistics2:quartz_glass>],
            [<actuallyadditions:item_crystal_empowered>,<ore:craftingToolHardHammer>,<actuallyadditions:item_crystal_empowered>],
            [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:material:52> : [
        [
            [<appliedenergistics2:quartz_glass>,<ore:craftingToolScrewdriver>,<appliedenergistics2:quartz_glass>],
            [<gregtech:meta_item_1:600>,<ore:craftingToolHardHammer>,<gregtech:meta_item_1:600>],
            [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:energy_acceptor> : [
        [
            [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<gregtech:meta_item_1:604>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>],
            [<gregtech:meta_item_1:604>,<appliedenergistics2:interface>,<gregtech:meta_item_1:604>],
            [<appliedenergistics2:part:16>,<gregtech:meta_item_1:604>,<appliedenergistics2:part:16>]
        ]
    ],

    <appliedenergistics2:security_station> : [
        [
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:36>,<gregtech:meta_plate:1016>],
            [<appliedenergistics2:part:16>,<appliedenergistics2:chest>,<appliedenergistics2:part:16>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:fluix_block> : [
        [
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]
        ]
    ],

    <appliedenergistics2:part:180> : [
        [
            [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>],
            [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>],
            [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>]
        ]
    ],

    <appliedenergistics2:part:460> : [
        [
            [<appliedenergistics2:part:16>,<gregtech:meta_plate:1016>,<appliedenergistics2:part:16>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>],
            [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]
        ]
    ],

    <ae2fc:fluid_pattern_encoder> : [
        [
            [<gregtech:meta_plate:32004>,<appliedenergistics2:material:24>,<gregtech:meta_plate:32004>],
            [<gregtech:meta_plate:1016>,<ore:workbench>,<gregtech:meta_plate:1016>],
            [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]
        ]
    ],

    <ae2fc:ingredient_buffer> : [
        [
            [<gregtech:meta_plate:32004>,<appliedenergistics2:material:35>,<gregtech:meta_plate:32004>],
            [<appliedenergistics2:material:44>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:43>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:54>,<gregtech:meta_plate:1016>]
        ]
    ],

    <ae2fc:fluid_assembler> : [
        [
            [<gregtech:meta_plate:32004>,<gregtech:meta_plate:32005>,<gregtech:meta_plate:32004>],
            [<appliedenergistics2:material:22>,<appliedenergistics2:molecular_assembler>,<appliedenergistics2:material:22>],
            [<gregtech:meta_plate:1016>,<gregtech:meta_plate:32005>,<gregtech:meta_plate:1016>]
        ]
    ],

    <ae2fc:fluid_packet_decoder> : [
        [
            [<gregtech:meta_plate:32004>,<gregtech:meta_item_1:249>,<gregtech:meta_plate:32004>],
            [<appliedenergistics2:part:16>,<ore:workbench>,<appliedenergistics2:part:16>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:23>,<gregtech:meta_plate:1016>]
        ]
    ],

    <ae2fc:burette> : [
        [
            [<gregtech:meta_plate:32004>,<gregtech:fluid_pipe_normal:1016>,<gregtech:meta_plate:32004>],
            [<appliedenergistics2:quartz_glass>,<gregtech:meta_item_1:249>,<appliedenergistics2:quartz_glass>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:23>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:io_port> : [
        [
            [<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
            [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:22>,<gregtech:meta_plate:1016>]
        ]
    ],

    <appliedenergistics2:spatial_io_port> : [
        [
            [<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
            [<appliedenergistics2:part:16>,<appliedenergistics2:io_port>,<appliedenergistics2:part:16>],
            [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>]
        ]
    ],

    <gregtech:machine:247> : [
        [
            [<gregtech:cable_single:41>,<ore:circuitHv>,<gregtech:transparent_casing>],
            [<gregtech:meta_item_1:159>,<gregtech:machine:988>,<gregtech:meta_cutting_blade:2511>],
            [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:meta_item_1:129>]
        ]
    ],

    <gregtech:machine:248> : [
        [
            [<gregtech:cable_single:2>,<ore:circuitEv>,<gregtech:transparent_casing>],
            [<gregtech:meta_item_1:160>,<gregtech:machine:989>,<gregtech:meta_cutting_blade:331>],
            [<ore:circuitEv>,<gregtech:cable_single:2>,<gregtech:meta_item_1:130>]
        ]
    ],

    <gregtech:machine:249> : [
        [
            [<gregtech:cable_single:80>,<ore:circuitIv>,<gregtech:transparent_casing:2>],
            [<gregtech:meta_item_1:161>,<gregtech:machine:990>,<gregtech:meta_cutting_blade:396>],
            [<ore:circuitIv>,<gregtech:cable_single:80>,<gregtech:meta_item_1:131>]
        ]
    ],

    <gregtech:machine:250> : [
        [
            [<gregtech:cable_single:296>,<ore:circuitLuv>,<gregtech:transparent_casing:2>],
            [<gregtech:meta_item_1:162>,<gregtech:machine:991>,<gregtech:meta_cutting_blade:2519>],
            [<ore:circuitLuv>,<gregtech:cable_single:296>,<gregtech:meta_item_1:132>]
        ]
    ],

    <gregtech:machine:251> : [
        [
            [<gregtech:cable_single:334>,<ore:circuitZpm>,<gregtech:transparent_casing:3>],
            [<gregtech:meta_item_1:163>,<gregtech:machine:992>,<gregtech:meta_cutting_blade:2042>],
            [<ore:circuitZpm>,<gregtech:cable_single:334>,<gregtech:meta_item_1:133>]
        ]
    ],

    <gregtech:machine:252> : [
        [
            [<gregtech:cable_single:338>,<ore:circuitUv>,<gregtech:transparent_casing:3>],
            [<gregtech:meta_item_1:164>,<gregtech:machine:993>,<gregtech:meta_cutting_blade:129>],
            [<ore:circuitUv>,<gregtech:cable_single:338>,<gregtech:meta_item_1:134>]
        ]
    ],

    <gregtech:machine:97> : [
        [
            [<ore:cableGtQuadrupleGold>,<gregtech:meta_item_1:189>,<ore:cableGtQuadrupleGold>],
            [<ore:circuitHv>,<gregtech:machine:988>,<ore:circuitHv>],
            [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>]
        ]
    ],

    <gregtech:machine:98> : [
        [
            [<ore:cableGtQuadrupleAluminium>,<gregtech:meta_item_1:190>,<ore:cableGtQuadrupleAluminium>],
            [<ore:circuitEv>,<gregtech:machine:989>,<ore:circuitEv>],
            [<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>]
        ]
    ],

    <gregtech:machine:99> : [
        [
            [<ore:cableGtQuadruplePlatinum>,<gregtech:meta_item_1:191>,<ore:cableGtQuadruplePlatinum>],
            [<ore:circuitIv>,<gregtech:machine:990>,<ore:circuitIv>],
            [<gregtech:meta_plate:2013>,<gregtech:meta_plate:2013>,<gregtech:meta_plate:2013>]
        ]
    ],

    <gregtech:machine:100> : [
        [
            [<ore:cableGtQuadrupleNiobiumTitanium>,<gregtech:meta_item_1:192>,<ore:cableGtQuadrupleNiobiumTitanium>],
            [<ore:circuitLuv>,<gregtech:machine:991>,<ore:circuitLuv>],
            [<gregtech:meta_plate:2062>,<gregtech:meta_plate:2062>,<gregtech:meta_plate:2062>]
        ]
    ],

    <gregtech:machine:101> : [
        [
            [<ore:cableGtQuadrupleVanadiumGallium>,<gregtech:meta_item_1:193>,<ore:cableGtQuadrupleVanadiumGallium>],
            [<ore:circuitZpm>,<gregtech:machine:992>,<ore:circuitZpm>],
            [<gregtech:meta_plate:2042>,<gregtech:meta_plate:2042>,<gregtech:meta_plate:2042>]
        ]
    ],

    <gregtech:machine:102> : [
        [
            [<ore:cableGtQuadrupleYttriumBariumCuprate>,<gregtech:meta_item_1:194>,<ore:cableGtQuadrupleYttriumBariumCuprate>],
            [<ore:circuitUv>,<gregtech:machine:993>,<ore:circuitUv>],
            [<gregtech:meta_plate:27>,<gregtech:meta_plate:27>,<gregtech:meta_plate:27>]
        ]
    ],

    <gregtech:machine:187> : [
        [
            [<ore:circuitHv>,<gregtech:meta_dust:341>,<ore:circuitHv>],
            [<ore:cableGtSingleGold>,<gregtech:machine:988>,<ore:cableGtSingleGold>],
            [<ore:circuitHv>,<gregtech:meta_item_1:129>,<ore:circuitHv>]
        ]
    ],

    <gregtech:machine:188> : [
        [
            [<ore:circuitEv>,<gregtech:meta_dust:341>,<ore:circuitEv>],
            [<ore:cableGtSingleAluminium>,<gregtech:machine:989>,<ore:cableGtSingleAluminium>],
            [<ore:circuitEv>,<gregtech:meta_item_1:130>,<ore:circuitEv>]
        ]
    ],

    <gregtech:machine:189> : [
        [
            [<ore:circuitIv>,<gregtech:meta_dust:341>,<ore:circuitIv>],
            [<ore:cableGtSinglePlatinum>,<gregtech:machine:990>,<ore:cableGtSinglePlatinum>],
            [<ore:circuitIv>,<gregtech:meta_item_1:131>,<ore:circuitIv>]
        ]
    ],

    <gregtech:machine:190> : [
        [
            [<ore:circuitLuv>,<gregtech:meta_dust:341>,<ore:circuitLuv>],
            [<ore:cableGtSingleNiobiumTitanium>,<gregtech:machine:991>,<ore:cableGtSingleNiobiumTitanium>],
            [<ore:circuitLuv>,<gregtech:meta_item_1:132>,<ore:circuitLuv>]
        ]
    ],

    <gregtech:machine:191> : [
        [
            [<ore:circuitZpm>,<gregtech:meta_dust:341>,<ore:circuitZpm>],
            [<ore:cableGtSingleVanadiumGallium>,<gregtech:machine:992>,<ore:cableGtSingleVanadiumGallium>],
            [<ore:circuitZpm>,<gregtech:meta_item_1:133>,<ore:circuitZpm>]
        ]
    ],

    <gregtech:machine:192> : [
        [
            [<ore:circuitUv>,<gregtech:meta_dust:342>,<ore:circuitUv>],
            [<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:machine:993>,<ore:cableGtSingleYttriumBariumCuprate>],
            [<ore:circuitUv>,<gregtech:meta_item_1:134>,<ore:circuitUv>]
        ]
    ],

    <gregtech:machine:11004> : [
        [
            [<ore:cableGtSingleGold>,<gregtech:transparent_casing>,<ore:circuitHv>],
            [<gregtech:meta_item_1:159>,<gregtech:machine:988>,<gregtech:meta_tool_head_buzz_saw:2511>],
            [<ore:circuitHv>,<ore:cableGtSingleGold>,<gregtech:meta_item_1:129>]
        ]
    ],

    <gregtech:machine:11005> : [
        [
            [<ore:cableGtSingleAluminium>,<gregtech:transparent_casing>,<ore:circuitEv>],
            [<gregtech:meta_item_1:160>,<gregtech:machine:989>,<gregtech:meta_tool_head_buzz_saw:331>],
            [<ore:circuitEv>,<ore:cableGtSingleAluminium>,<gregtech:meta_item_1:130>]
        ]
    ],

    <gregtech:machine:11006> : [
        [
            [<ore:cableGtSinglePlatinum>,<gregtech:transparent_casing:1>,<ore:circuitIv>],
            [<gregtech:meta_item_1:161>,<gregtech:machine:990>,<gregtech:meta_tool_head_buzz_saw:396>],
            [<ore:circuitIv>,<ore:cableGtSinglePlatinum>,<gregtech:meta_item_1:131>]
        ]
    ],

    <gregtech:machine:11007> : [
        [
            [<ore:cableGtSingleNiobiumTitanium>,<gregtech:transparent_casing:1>,<ore:circuitLuv>],
            [<gregtech:meta_item_1:162>,<gregtech:machine:991>,<gregtech:meta_tool_head_buzz_saw:2519>],
            [<ore:circuitLuv>,<ore:cableGtSingleNiobiumTitanium>,<gregtech:meta_item_1:132>]
        ]
    ],

    <gregtech:machine:11008> : [
        [
            [<ore:cableGtSingleVanadiumGallium>,<gregtech:transparent_casing:2>,<ore:circuitZpm>],
            [<gregtech:meta_item_1:163>,<gregtech:machine:992>,<gregtech:meta_tool_head_buzz_saw:2042>],
            [<ore:circuitZpm>,<ore:cableGtSingleVanadiumGallium>,<gregtech:meta_item_1:133>]
        ]
    ],

    <gregtech:machine:11009> : [
        [
            [<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:transparent_casing:2>,<ore:circuitUv>],
            [<gregtech:meta_item_1:164>,<gregtech:machine:993>,<gregtech:meta_tool_head_buzz_saw:129>],
            [<ore:circuitUv>,<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:meta_item_1:134>]
        ]
    ],

    <gregtech:machine:11012> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<gregtech:machine:11013>]
        ]
    ],

    <gregtech:machine:11013> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<gregtech:machine:11012>]
        ]
    ],

    <gregtech:machine:11014> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<gregtech:machine:11015>]
        ]
    ],

    <gregtech:machine:11015> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<gregtech:machine:11014>]
        ]
    ],

    <appliedenergistics2:part:120> : [
        [
            [<gregtech:meta_bolt:324>,<gregtech:meta_screw:324>,<ore:craftingToolScrewdriver>]
        ]
    ]
};

static recipesShapedMirrored as IIngredient[][][][IItemStack] = {
    <usefulbackpacks:backpack:2> : [
        [
            [<actuallyadditions:item_crystal_empowered:5>,<gregtech:meta_item_1:204>,<actuallyadditions:item_crystal_empowered:5>],
            [<gregtech:meta_plate_double:32020>,<usefulbackpacks:backpack:1>,<gregtech:meta_plate_double:32020>],
            [<forestry:crafting_material:3>,<gregtech:meta_plate:2012>,<forestry:crafting_material:3>]
        ]
    ],

    <appliedenergistics2:fluid_interface> : [
        [
            [<ore:craftingToolScrewdriver>],
            [<appliedenergistics2:interface>,<gregtech:meta_item_1:250>]
        ]
    ]
};

static recipesShapeless as IIngredient[][][IItemStack] = {
    <integratedtunnels:part_importer_world_block_item> : [
            [<integratedtunnels:part_importer_item_item>,<integrateddynamics:logic_director>,<minecraft:dispenser>]
    ],
    <integratedtunnels:part_exporter_world_block_item> : [
            [<integratedtunnels:part_exporter_item_item>,<integrateddynamics:logic_director>,<minecraft:dispenser>]
    ],
    <appliedenergistics2:material:60>.withTag({}) : [
            [<appliedenergistics2:material:25>,<gregtech:meta_dust:395>]
    ],
    <appliedenergistics2:material:7> * 9 : [
            [<appliedenergistics2:fluix_block>]
    ],
    <appliedenergistics2:part:463> : [
            [<appliedenergistics2:part:460>,<gregtech:meta_item_1:248>,<ore:craftingToolScrewdriver>]
    ],
    <appliedenergistics2:part:470> : [
            [<appliedenergistics2:part:460>,<gregtech:meta_item_1:604>,<ore:craftingToolScrewdriver>]
    ],
    <appliedenergistics2:part:462> : [
            [<appliedenergistics2:part:460>,<gregtech:meta_item_1:158>,<ore:craftingToolScrewdriver>]
    ],
    <appliedenergistics2:part:467> : [
            [<appliedenergistics2:part:460>,<minecraft:daylight_detector>,<ore:craftingToolScrewdriver>]
    ],
    <appliedenergistics2:part:461> : [
            [<appliedenergistics2:part:460>,<gregtech:meta_plate:32007>,<ore:craftingToolScrewdriver>]
    ],
    <gagtweaks:peccorite_crystal> : [
            [<gagtweaks:peccorite_crystal_block>]
    ],
    <gagtweaks:peccorite_crystal_empowered> : [
            [<gagtweaks:peccorite_crystal_block_empowered>]
    ],
    <gagtweaks:nitanite_crystal> : [
            [<gagtweaks:nitanite_crystal_block>]
    ],
    <gagtweaks:nitanite_crystal_empowered> : [
        [<gagtweaks:nitanite_crystal_block_empowered>]
    ]
};

function init() as void {
    ProcessUtils.processRecipesShaped(recipesShaped, STAGE_FOUR);
    ProcessUtils.processRecipesMirrored(recipesShapedMirrored, STAGE_FOUR);
    ProcessUtils.processRecipesShapeless(recipesShapeless, STAGE_FOUR);
}
/*
Recipes.addShaped("Pecco1", stage, <gagtweaks:peccorite_crystal_block>,[
    [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>],
    [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>],
    [<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>,<gagtweaks:peccorite_crystal>]]);

Recipes.addShaped("Pecco2", stage, <gagtweaks:peccorite_crystal_block_empowered>,[
    [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>],
    [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>],
    [<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>,<gagtweaks:peccorite_crystal_empowered>]]);

Recipes.addShaped("Nitan1", stage, <gagtweaks:nitanite_crystal_block>,[
    [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>],
    [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>],
    [<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>,<gagtweaks:nitanite_crystal>]]);

Recipes.addShaped("Nitan2", stage, <gagtweaks:nitanite_crystal_block_empowered>,[
    [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>],
    [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>],
    [<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>,<gagtweaks:nitanite_crystal_empowered>]]);

Recipes.addShaped("Stoneburnt", stage, <extrautils2:decorativesolid:3>,[
    [<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>],
    [<extrautils2:decorativesolid:2>,<gregtech:meta_plate:32008>,<extrautils2:decorativesolid:2>],
    [<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>,<extrautils2:decorativesolid:2>]]);

Recipes.addShaped("GPWindmill", stage, <extrautils2:passivegenerator:4>,[
    [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],
    [<extrautils2:ingredients:1>,<gregtech:meta_rotor:323>,<extrautils2:ingredients:1>],
    [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

Recipes.addShaped("GPWatermill", stage, <extrautils2:passivegenerator:3>,[
    [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],
    [<extrautils2:ingredients:1>,<gregtech:meta_rotor:22>,<extrautils2:ingredients:1>],
    [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]]);

Recipes.addShaped("RedstoneGear", stage, <extrautils2:ingredients:1>,[
    [<extrautils2:ingredients>,<gregtech:meta_bolt:323>,<extrautils2:ingredients>],
    [<gregtech:meta_bolt:323>,<gregtech:meta_gear_small:323>,<gregtech:meta_bolt:323>],
    [<extrautils2:ingredients>,<gregtech:meta_bolt:323>,<extrautils2:ingredients>]]);

Recipes.addShaped("TinWall1", stage, <galacticraftcore:basic_block_core:3>,[
    [<minecraft:stone>,<minecraft:stone>],
    [<minecraft:stone>,<minecraft:stone>,<gregtech:meta_plate:112>]]);

Recipes.addShaped("TinWall2", stage, <galacticraftcore:basic_block_core:4>,[
    [<minecraft:stone>,<minecraft:stone>],
    [<minecraft:stone>,<minecraft:stone>],
    [<gregtech:meta_plate:112>]]);

Recipes.addShaped("HVMachineCasing", stage, <gregtech:machine_casing:3>,[
    [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>],
    [<gregtech:meta_plate:32003>,<ore:craftingToolWrench>,<gregtech:meta_plate:32003>],
    [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>]]);

Recipes.addShaped("EVMachineCasing", stage, <gregtech:machine_casing:4>,[
    [<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>],
    [<gregtech:meta_plate:32019>,<ore:craftingToolWrench>,<gregtech:meta_plate:32019>],
    [<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>,<gregtech:meta_plate:32019>]]);

Recipes.addShaped("ElectrotineGenerator", stage, <projectred-expansion:machine1:1>,[
    [<projectred-transmission:wire:34>,<minecraft:nether_brick>,<projectred-transmission:wire:34>],
    [<minecraft:nether_brick>,<ore:craftingToolWrench>,<minecraft:nether_brick>],
    [<gregtech:meta_plate:32006>,<gregtech:meta_plate:32006>,<gregtech:meta_plate:32006>]]);

Recipes.addShaped("ElectrotineBattbox", stage, <projectred-expansion:machine2:5>,[
    [<projectred-transmission:wire:34>,<gregtech:meta_plate:32006>,<projectred-transmission:wire:34>],
    [<projectred-transmission:wire:34>,<gregtech:machine:1315>,<projectred-transmission:wire:34>]]);

Recipes.addShaped("ElectrotineCharger", stage, <projectred-expansion:machine2:6>,[
    [<gregtech:meta_plate:32006>,<gregtech:meta_item_1:96>,<gregtech:meta_plate:32006>],
    [<projectred-transmission:wire:34>,<gregtech:machine:985>,<projectred-transmission:wire:34>],
    [<minecraft:nether_brick>,<projectred-transmission:wire:34>,<minecraft:nether_brick>]]);

Recipes.addShaped("ProjectBench", stage, <projectred-expansion:machine2:10>,[
    [<gregtech:meta_plate:32007>,<gregtech:meta_plate:32007>,<gregtech:meta_plate:32007>],
    [<ore:craftingToolWrench>,<ore:workbench>,<ore:craftingToolHardHammer>],
    [<ore:plankWood>,<ironchest:iron_chest>,<ore:plankWood>]]);

Recipes.addShaped("CellWorkbench", stage, <appliedenergistics2:cell_workbench>,[
    [<gregtech:meta_plate:32004>,<appliedenergistics2:material:23>,<gregtech:meta_plate:32004>],
    [<ore:craftingToolWrench>,<ore:workbench>,<ore:craftingToolHardHammer>],
    [<gregtech:meta_plate:1012>,<ironchest:iron_chest>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("DestructionGadget", stage, <buildinggadgets:destructiontool>,[
    [<gregtech:meta_plate:328>,<gregtech:meta_item_1:217>,<gregtech:meta_plate:328>],
    [<gregtech:meta_plate:32008>,<ore:circuitLv>,<gregtech:meta_plate:32008>],
    [<gregtech:meta_plate:328>,<gregtech:meta_plate:328>,<gregtech:meta_plate:328>]]);

Recipes.addShaped("Empowerer", stage, <actuallyadditions:gag_block_empowerer>,[
    [<gregtech:meta_stick:32007>,<gregtech:meta_item_1:737>,<gregtech:meta_stick:32007>],
    [<ore:circuitHv>,<actuallyadditions:block_display_stand>,<ore:circuitHv>],
    [<gregtech:meta_plate:32003>,<actuallyadditions:block_crystal:3>,<gregtech:meta_plate:32003>]]);

Recipes.addShaped("HeavyDutyComposite", stage, <gagtweaks:heavy_duty_composite>,[
    [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
    [<gregtech:meta_plate_double:2>,<gregtech:meta_plate_double:2>],
    [<gregtech:meta_plate_double:32011>,<gregtech:meta_plate_double:32011>]]);

Recipes.addShaped("HeavyDutyComposite2", stage, <gagtweaks:heavy_duty_composite2>,[
    [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
    [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
    [<gregtech:meta_plate_double:32011>,<gregtech:meta_plate_double:32011>]]);

Recipes.addShaped("HeavyDutyComposite3", stage, <gagtweaks:heavy_duty_composite3>,[
    [<gregtech:meta_plate_double:323>,<gregtech:meta_plate_double:323>],
    [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
    [<gregtech:meta_plate_double:331>,<gregtech:meta_plate_double:331>]]);

Recipes.addShaped("HeavyDutyComposite4", stage, <gagtweaks:heavy_duty_composite4>,[
    [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
    [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
    [<gregtech:meta_plate_double:331>,<gregtech:meta_plate_double:331>]]);

Recipes.addShaped("HeavyDutyComposite5", stage, <gagtweaks:heavy_duty_composite5>,[
    [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
    [<gregtech:meta_plate_double:113>,<gregtech:meta_plate_double:113>],
    [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]]);

Recipes.addShaped("HeavyDutyComposite6", stage, <gagtweaks:heavy_duty_composite6>,[
    [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
    [<gregtech:meta_plate_double:124>,<gregtech:meta_plate_double:124>],
    [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]]);

Recipes.addShaped("HeavyDutyComposite7", stage, <gagtweaks:heavy_duty_composite7>,[
    [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
    [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
    [<gregtech:meta_plate_double:2062>,<gregtech:meta_plate_double:2062>]]);

Recipes.addShaped("HeavyDutyComposite8", stage, <gagtweaks:heavy_duty_composite8>,[
    [<gregtech:meta_plate_double:2519>,<gregtech:meta_plate_double:2519>],
    [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
    [<gregtech:meta_plate_double:27>,<gregtech:meta_plate_double:27>]]);

Recipes.addShaped("HeavyDutyComposite9", stage, <gagtweaks:heavy_duty_composite9>,[
    [<gregtech:meta_plate_double:128>,<gregtech:meta_plate_double:128>],
    [<gregtech:meta_plate_double:2042>,<gregtech:meta_plate_double:2042>],
    [<gregtech:meta_plate_double:27>,<gregtech:meta_plate_double:27>]]);

Recipes.addShaped("RocketEngine1", stage, <galacticraftcore:engine>,[
    [<gregtech:meta_item_1:144>,<gregtech:meta_item_1:219>,<gregtech:meta_item_1:249>],
    [<galacticraftcore:heavy_plating>,<ore:craftingToolWrench>,<galacticraftcore:heavy_plating>],
    [<galacticraftcore:heavy_plating>,<galacticraftcore:air_vent>,<galacticraftcore:heavy_plating>]]);

Recipes.addShaped("RocketEngine2", stage, <galacticraftplanets:item_basic_asteroids:1>,[
    [<gregtech:meta_item_1:145>,<gregtech:meta_item_1:220>,<gregtech:meta_item_1:250>],
    [<galacticraftplanets:item_basic_asteroids:5>,<ore:craftingToolWrench>,<galacticraftplanets:item_basic_asteroids:5>],
    [<galacticraftplanets:item_basic_asteroids:5>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_asteroids:5>]]);

Recipes.addShaped("RocketBooster2", stage, <galacticraftcore:engine:1>,[
    [<galacticraftcore:heavy_plating>,<gregtech:meta_item_1:144>,<galacticraftcore:heavy_plating>],
    [<galacticraftplanets:item_basic_mars:3>,<gregtech:meta_item_1:144>,<galacticraftplanets:item_basic_mars:3>],
    [<galacticraftplanets:item_basic_mars:3>,<galacticraftcore:air_vent>,<galacticraftplanets:item_basic_mars:3>]]);

Recipes.addShaped("RocketFins4", stage, <extraplanets:tier4_items:2>,[
    [null,<galacticraftplanets:item_basic_mars:3>,null],
    [<extraplanets:tier4_items:3>,<galacticraftplanets:item_basic_mars:3>,<extraplanets:tier4_items:3>],
    [<extraplanets:tier4_items:3>,null,<extraplanets:tier4_items:3>]]);

Recipes.addShaped("Parachute", stage, <galacticraftcore:parachute>,[
    [<galacticraftcore:canvas>,<galacticraftcore:canvas>,<galacticraftcore:canvas>],
    [<betterwithmods:rope>,null,<betterwithmods:rope>],
    [null,<betterwithmods:rope>,null]]);

Recipes.addShaped("OxyMask", stage, <galacticraftcore:oxygen_mask>,[
    [<minecraft:glass_pane>,<minecraft:glass_pane>,<minecraft:glass_pane>],
    [<minecraft:glass_pane>,null,<minecraft:glass_pane>],
    [<gregtech:meta_item_1:142>,<ore:craftingToolScrewdriver>,<gregtech:meta_item_1:247>]]);

Recipes.addShaped("OxyGear", stage, <galacticraftcore:oxygen_gear>,[
    [null,<gregtech:fluid_pipe_tiny:22>,null],
    [<gregtech:fluid_pipe_tiny:22>,<galacticraftcore:oxygen_concentrator>,<gregtech:fluid_pipe_tiny:22>],
    [<gregtech:fluid_pipe_tiny:22>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_tiny:22>]]);

Recipes.addShaped("Suit1H", stage, <extraplanets:tier1_un_prepared_space_suit_helmet>,[
    [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]]);

Recipes.addShaped("Suit1C", stage, <extraplanets:tier1_un_prepared_space_suit_chest>,[
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>]]);

Recipes.addShaped("Suit1L", stage, <extraplanets:tier1_un_prepared_space_suit_legings>,[
    [<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]]);

Recipes.addShaped("Suit1B", stage, <extraplanets:tier1_un_prepared_space_suit_boots>,[
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>],
    [<gregtech:meta_stick:32003>,null,<gregtech:meta_stick:32003>]]);

Recipes.addShaped("Suit2H", stage, <extraplanets:tier2_un_prepared_space_suit_helmet>,[
    [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]]);

Recipes.addShaped("Suit2C", stage, <extraplanets:tier2_un_prepared_space_suit_chest>,[
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>]]);

Recipes.addShaped("Suit2L", stage, <extraplanets:tier2_un_prepared_space_suit_legings>,[
    [<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]]);

Recipes.addShaped("Suit2B", stage, <extraplanets:tier2_un_prepared_space_suit_boots>,[
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>],
    [<gregtech:meta_stick:32019>,null,<gregtech:meta_stick:32019>]]);

Recipes.addShaped("Suit3H", stage, <extraplanets:tier3_un_prepared_space_suit_helmet>,[
    [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]]);

Recipes.addShaped("Suit3C", stage, <extraplanets:tier3_un_prepared_space_suit_chest>,[
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>]]);

Recipes.addShaped("Suit3L", stage, <extraplanets:tier3_un_prepared_space_suit_legings>,[
    [<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]]);

Recipes.addShaped("Suit3B", stage, <extraplanets:tier3_un_prepared_space_suit_boots>,[
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>],
    [<gregtech:meta_stick:2013>,null,<gregtech:meta_stick:2013>]]);

Recipes.addShaped("Suit4H", stage, <extraplanets:tier4_un_prepared_space_suit_helmet>,[
    [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]]);

Recipes.addShaped("Suit4C", stage, <extraplanets:tier4_un_prepared_space_suit_chest>,[
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>]]);

Recipes.addShaped("Suit4L", stage, <extraplanets:tier4_un_prepared_space_suit_legings>,[
    [<gregtech:meta_stick:124>,<gregtech:meta_stick:124>,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]]);

Recipes.addShaped("Suit4B", stage, <extraplanets:tier4_un_prepared_space_suit_boots>,[
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>],
    [<gregtech:meta_stick:124>,null,<gregtech:meta_stick:124>]]);

Recipes.addShaped("DisenchantingLens", stage, <actuallyadditions:item_disenchanting_lens>,[
    [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>],
    [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_misc:18>,<actuallyadditions:item_crystal:2>],
    [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>]]);

Recipes.addShapedMirrored("LargeBackpack", stage, <usefulbackpacks:backpack:2>,[
[<actuallyadditions:item_crystal_empowered:5>,<gregtech:meta_item_1:204>,<actuallyadditions:item_crystal_empowered:5>],
[<gregtech:meta_plate_double:32020>,<usefulbackpacks:backpack:1>,<gregtech:meta_plate_double:32020>],
[<forestry:crafting_material:3>,<gregtech:meta_plate:2012>,<forestry:crafting_material:3>]]);

Recipes.addShaped("KillerLens", stage, <actuallyadditions:item_more_damage_lens>,[
    [<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>],
    [<gregtech:meta_screw:2517>,<actuallyadditions:item_misc:18>,<gregtech:meta_screw:2517>],
    [<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>,<gregtech:meta_screw:2517>]]);

Recipes.addShaped("BuggyWheel", stage, <galacticraftcore:buggymat>,[
    [<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>],
    [<gregtech:meta_plate:1068>,<galacticraftcore:basic_item:9>,<gregtech:meta_plate:1068>],
    [<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>,<gregtech:meta_plate:1068>]]);

Recipes.addShaped("LaserFabricator", stage, <gregtech:machine:11011>,[
    [<gregtech:meta_item_1:174>,<gregtech:meta_item_1:219>,<gregtech:meta_item_1:174>],
    [<gregtech:meta_item_1:159>,<gregtech:metal_casing:5>,<gregtech:meta_item_1:159>],
    [<ore:cableGtSingleGold>,<ore:circuitHv>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("FieldGeneratorMV", stage, <gregtech:meta_item_1:203>,[
    [<ore:wireGtQuadrupleMagnesiumDiboride>,<gregtech:meta_plate:32007>,<ore:wireGtQuadrupleMagnesiumDiboride>],
    [<ore:circuitMv>,<minecraft:ender_eye>,<ore:circuitMv>],
    [<ore:wireGtQuadrupleMagnesiumDiboride>,<gregtech:meta_plate:32007>,<ore:wireGtQuadrupleMagnesiumDiboride>]]);

Recipes.addShaped("FieldGeneratorHV", stage, <gregtech:meta_item_1:203>,[
    [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<actuallyadditions:item_crystal_empowered:5>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>],
    [<ore:circuitHv>,<gregtech:meta_item_1:281>,<ore:circuitHv>],
    [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<actuallyadditions:item_crystal_empowered:5>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>]]);

Recipes.addShaped("FuelLoader", stage, <galacticraftcore:fuel_loader>,[
    [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:meta_item_1:144>],
    [<gregtech:cable_single:41>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:144>],
    [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>]]);

Recipes.addShaped("OxygenCompressor", stage, <galacticraftcore:oxygen_compressor>,[
    [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:cable_single:41>],
    [<gregtech:meta_item_1:144>,<gagtweaks:carbon_machine_hull>,<galacticraftcore:oxygen_concentrator>],
    [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:cable_single:41>]]);

Recipes.addShaped("OxygenDecompressor", stage, <galacticraftcore:oxygen_compressor:4>,[
    [<gregtech:cable_single:41>,<gregtech:fluid_pipe_normal:323>,<gregtech:cable_single:41>],
    [<galacticraftcore:oxygen_concentrator>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:144>],
    [<gregtech:cable_single:41>,<gregtech:cable_single:41>,<ore:circuitHv>]]);

Recipes.addShaped("OxygenDistributor", stage, <galacticraftcore:distributor>,[
    [<gregtech:meta_rotor:323>,<galacticraftcore:air_vent>,<gregtech:meta_rotor:323>],
    [<gregtech:meta_item_1:129>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:129>],
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("OxygenSealer", stage, <galacticraftcore:sealer>,[
    [<gregtech:fluid_pipe_small:323>,<galacticraftcore:oxygen_concentrator>,<gregtech:fluid_pipe_small:323>],
    [<gregtech:meta_item_1:249>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:249>],
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("OxygenCollector", stage, <galacticraftcore:collector>,[
    [<gregtech:meta_rotor:323>,<galacticraftcore:air_vent>,<gregtech:meta_rotor:323>],
    [<gregtech:meta_item_1:129>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:129>],
    [<ore:cableGtSingleGold>,<galacticraftcore:oxygen_concentrator>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("OxygenDetector", stage, <galacticraftcore:oxygen_detector>,[
    [<ore:cableGtSingleGold>,<galacticraftcore:air_vent>,<ore:cableGtSingleGold>],
    [<gregtech:meta_plate:32007>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_plate:32007>],
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("CargoLoader", stage, <galacticraftcore:cargo>,[
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>],
    [<gregtech:meta_item_1:159>,<gagtweaks:carbon_machine_hull>,<minecraft:chest>],
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("CargoUnloader", stage, <galacticraftcore:cargo:4>,[
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>],
    [<minecraft:chest>,<gagtweaks:carbon_machine_hull>,<gregtech:meta_item_1:159>],
    [<ore:cableGtSingleGold>,<ore:cableGtSingleGold>,<ore:cableGtSingleGold>]]);

Recipes.addShaped("Platform", stage, <galacticraftcore:platform> * 4,[
    [<minecraft:piston>,<actuallyadditions:item_crystal>,<minecraft:piston>],
    [<galacticraftcore:basic_item:9>,null,<galacticraftcore:basic_item:9>],
    [<minecraft:piston>,<actuallyadditions:item_crystal>,<minecraft:piston>]]);

Recipes.addShaped("TelemetryUnit", stage, <galacticraftcore:telemetry>,[
    [<galacticraftcore:basic_item:7>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:7>],
    [<galacticraftcore:basic_item:7>,<gagtweaks:carbon_machine_hull>,<galacticraftcore:basic_item:7>],
    [<galacticraftcore:basic_item:6>,<galacticraftcore:basic_item:6>,<galacticraftcore:basic_item:6>]]);

Recipes.addShaped("DisplayScreen", stage, <galacticraftcore:view_screen>,[
    [<gregtech:meta_plate:324>,<ore:projredIllumar>,<gregtech:meta_plate:324>],
    [<ore:projredIllumar>,<tconstruct:clear_glass>,<ore:projredIllumar>],
    [<gregtech:meta_plate:324>,<ore:projredIllumar>,<gregtech:meta_plate:324>]]);

Recipes.addShaped("ThermoRegulator", stage, <galacticraftcore:basic_item:20>,[
    [<actuallyadditions:item_crystal>,<galacticraftcore:air_vent>,<actuallyadditions:item_crystal>],
    [<galacticraftcore:basic_item:10>,<gregtech:meta_item_1:501>,<galacticraftcore:basic_item:10>],
    [<galacticraftcore:basic_item:10>,<gregtech:meta_item_1:98>,<galacticraftcore:basic_item:10>]]);

Recipes.addShaped("LaunchController", stage, <galacticraftplanets:mars_machine:8>,[
    [<ore:circuitHv>,<galacticraftcore:basic_item:19>,<ore:circuitHv>],
    [<ore:cableGtSingleGold>,<gagtweaks:carbon_machine_hull>,<ore:cableGtSingleGold>],
    [<galacticraftcore:item_basic_moon>,<ore:cableGtSingleGold>,<galacticraftcore:item_basic_moon>]]);

Recipes.addShaped("SpinThruster", stage, <galacticraftcore:spin_thruster>,[
    [<galacticraftcore:fuel_canister_partial:1>,<ore:craftingToolScrewdriver>,<galacticraftcore:item_basic_moon>],
    [<galacticraftcore:basic_item:9>,<galacticraftcore:engine>,<galacticraftcore:basic_item:9>]]);

Recipes.addShaped("Dishbase", stage, <galacticraftcore:dishbase>,[
    [<galacticraftcore:basic_item:8>,<galacticraftcore:basic_item:19>,<galacticraftcore:basic_item:8>],
    [null,<galacticraftcore:basic_item:8>,null],
    [<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>,<galacticraftcore:basic_item:11>]]);

Recipes.addShaped("FluixCable", stage, <appliedenergistics2:part:16>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
    [<appliedenergistics2:part:140>,<appliedenergistics2:part:140>,<appliedenergistics2:part:140>],
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]]);

Recipes.addShaped("MEInterface", stage, <appliedenergistics2:interface>,[
    [<gregtech:meta_plate:1016>,<appliedenergistics2:quartz_glass>,<gregtech:meta_plate:1016>],
    [<appliedenergistics2:part:16>,<appliedenergistics2:material:43>,<appliedenergistics2:part:16>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:quartz_glass>,<gregtech:meta_plate:1016>]]);

Recipes.addShapedMirrored("MEFluidInterface", stage, <appliedenergistics2:fluid_interface>,[
    [<ore:craftingToolScrewdriver>],
    [<appliedenergistics2:interface>,<gregtech:meta_item_1:250>]]);

Recipes.addShaped("MEInterfaceSmall", stage, <appliedenergistics2:part:440>,[
    [<ore:craftingToolScrewdriver>],
    [<appliedenergistics2:interface>]]);

Recipes.addShaped("MEFluidInterfaceSmall", stage, <appliedenergistics2:part:441>,[
    [<ore:craftingToolScrewdriver>],
    [<appliedenergistics2:fluid_interface>]]);

Recipes.addShaped("SpatialPylon", stage, <appliedenergistics2:spatial_pylon>,[
    [<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:16>,<appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:material:7>,<appliedenergistics2:fluix_block>,<appliedenergistics2:material:7>],
    [<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:16>,<appliedenergistics2:quartz_glass>]]);

Recipes.addShaped("MemoryCard", stage, <appliedenergistics2:biometric_card>.withTag({}),[
    [<appliedenergistics2:material:24>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
    [<gregtech:meta_plate:41>,<gregtech:meta_item_1:596>,<gregtech:meta_plate:41>]]);

Recipes.addShaped("BiometricCard", stage, <appliedenergistics2:memory_card>.withTag({}),[
    [<appliedenergistics2:material:24>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
    [<gregtech:meta_plate:41>,<gregtech:meta_item_1:592>,<gregtech:meta_plate:41>]]);

Recipes.addShaped("MEFormPlane", stage, <appliedenergistics2:part:320>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:43>,<appliedenergistics2:material:7>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:160>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("MEFluidFormPlane", stage, <appliedenergistics2:part:321>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:43>,<appliedenergistics2:material:7>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:145>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("MEAnniPlane", stage, <appliedenergistics2:part:302>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:44>,<appliedenergistics2:material:7>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:160>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("MEFluidAnniPlane", stage, <appliedenergistics2:part:300>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:44>,<appliedenergistics2:material:7>],
    [<gregtech:meta_plate:1012>,<gregtech:meta_item_1:145>,<gregtech:meta_plate:1012>]]);

Recipes.addShaped("MEWirelessAccessPoint", stage, <appliedenergistics2:wireless_access_point>,[
    [<gregtech:meta_item_1:503>,<appliedenergistics2:material:23>,<appliedenergistics2:part:16>]]);

Recipes.addShaped("StorageHousingCell", stage, <appliedenergistics2:material:39>,[
    [<appliedenergistics2:quartz_glass>,<ore:craftingToolScrewdriver>,<appliedenergistics2:quartz_glass>],
    [<actuallyadditions:item_crystal_empowered>,<ore:craftingToolHardHammer>,<actuallyadditions:item_crystal_empowered>],
    [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("EmptyPattern", stage, <appliedenergistics2:material:52>,[
    [<appliedenergistics2:quartz_glass>,<ore:craftingToolScrewdriver>,<appliedenergistics2:quartz_glass>],
    [<gregtech:meta_item_1:600>,<ore:craftingToolHardHammer>,<gregtech:meta_item_1:600>],
    [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("EnergyAcceptor", stage, <appliedenergistics2:energy_acceptor>,[
    [<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>,<gregtech:meta_item_1:604>,<ore:wireGtQuadrupleMercuryBariumCalciumCuprate>],
    [<gregtech:meta_item_1:604>,<appliedenergistics2:interface>,<gregtech:meta_item_1:604>],
    [<appliedenergistics2:part:16>,<gregtech:meta_item_1:604>,<appliedenergistics2:part:16>]]);

Recipes.addShaped("MESecurityTerminal", stage, <appliedenergistics2:security_station>,[
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:36>,<gregtech:meta_plate:1016>],
    [<appliedenergistics2:part:16>,<appliedenergistics2:chest>,<appliedenergistics2:part:16>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("FluixBlock", stage, <appliedenergistics2:fluix_block>,[
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>],
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]]);

Recipes.addShaped("IlluminatedPanel", stage, <appliedenergistics2:part:180>,[
    [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>],
    [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>],
    [<gregtech:meta_plate:1012>,<ore:projredIllumar>,<tconstruct:clear_glass>]]);

Recipes.addShaped("P2P", stage, <appliedenergistics2:part:460>,[
    [<appliedenergistics2:part:16>,<gregtech:meta_plate:1016>,<appliedenergistics2:part:16>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>],
    [<appliedenergistics2:material:7>,<appliedenergistics2:material:7>,<appliedenergistics2:material:7>]]);

Recipes.addShaped("MEFluidPatternEncoder", stage, <ae2fc:fluid_pattern_encoder>,[
    [<gregtech:meta_plate:32004>,<appliedenergistics2:material:24>,<gregtech:meta_plate:32004>],
    [<gregtech:meta_plate:1016>,<ore:workbench>,<gregtech:meta_plate:1016>],
    [<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("aeIngredientBuffer", stage, <ae2fc:ingredient_buffer>,[
    [<gregtech:meta_plate:32004>,<appliedenergistics2:material:35>,<gregtech:meta_plate:32004>],
    [<appliedenergistics2:material:44>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:43>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:54>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("aeFluidAssembler", stage, <ae2fc:fluid_assembler>,[
    [<gregtech:meta_plate:32004>,<gregtech:meta_plate:32005>,<gregtech:meta_plate:32004>],
    [<appliedenergistics2:material:22>,<appliedenergistics2:molecular_assembler>,<appliedenergistics2:material:22>],
    [<gregtech:meta_plate:1016>,<gregtech:meta_plate:32005>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("MEFluidDecoder", stage, <ae2fc:fluid_packet_decoder>,[
    [<gregtech:meta_plate:32004>,<gregtech:meta_item_1:249>,<gregtech:meta_plate:32004>],
    [<appliedenergistics2:part:16>,<ore:workbench>,<appliedenergistics2:part:16>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:23>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("PrecisionBurrete", stage, <ae2fc:burette>,[
    [<gregtech:meta_plate:32004>,<gregtech:fluid_pipe_normal:1016>,<gregtech:meta_plate:32004>],
    [<appliedenergistics2:quartz_glass>,<gregtech:meta_item_1:249>,<appliedenergistics2:quartz_glass>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:23>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("MEIOPort", stage, <appliedenergistics2:io_port>,[
    [<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:22>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("SpatialIOPort", stage, <appliedenergistics2:spatial_io_port>,[
    [<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:part:16>,<appliedenergistics2:io_port>,<appliedenergistics2:part:16>],
    [<gregtech:meta_plate:1016>,<appliedenergistics2:material:24>,<gregtech:meta_plate:1016>]]);

Recipes.addShaped("CuttingMachine3", stage, <gregtech:machine:247>,[
    [<gregtech:cable_single:41>,<ore:circuitHv>,<gregtech:transparent_casing>],
    [<gregtech:meta_item_1:159>,<gregtech:machine:988>,<gregtech:meta_cutting_blade:2511>],
    [<ore:circuitHv>,<gregtech:cable_single:41>,<gregtech:meta_item_1:129>]]);

Recipes.addShaped("CuttingMachine4", stage, <gregtech:machine:248>,[
    [<gregtech:cable_single:2>,<ore:circuitEv>,<gregtech:transparent_casing>],
    [<gregtech:meta_item_1:160>,<gregtech:machine:989>,<gregtech:meta_cutting_blade:331>],
    [<ore:circuitEv>,<gregtech:cable_single:2>,<gregtech:meta_item_1:130>]]);

Recipes.addShaped("CuttingMachine5", stage, <gregtech:machine:249>,[
    [<gregtech:cable_single:80>,<ore:circuitIv>,<gregtech:transparent_casing:2>],
    [<gregtech:meta_item_1:161>,<gregtech:machine:990>,<gregtech:meta_cutting_blade:396>],
    [<ore:circuitIv>,<gregtech:cable_single:80>,<gregtech:meta_item_1:131>]]);

Recipes.addShaped("CuttingMachine6", stage, <gregtech:machine:250>,[
    [<gregtech:cable_single:296>,<ore:circuitLuv>,<gregtech:transparent_casing:2>],
    [<gregtech:meta_item_1:162>,<gregtech:machine:991>,<gregtech:meta_cutting_blade:2519>],
    [<ore:circuitLuv>,<gregtech:cable_single:296>,<gregtech:meta_item_1:132>]]);

Recipes.addShaped("CuttingMachine7", stage, <gregtech:machine:251>,[
    [<gregtech:cable_single:334>,<ore:circuitZpm>,<gregtech:transparent_casing:3>],
    [<gregtech:meta_item_1:163>,<gregtech:machine:992>,<gregtech:meta_cutting_blade:2042>],
    [<ore:circuitZpm>,<gregtech:cable_single:334>,<gregtech:meta_item_1:133>]]);

Recipes.addShaped("CuttingMachine8", stage, <gregtech:machine:252>,[
    [<gregtech:cable_single:338>,<ore:circuitUv>,<gregtech:transparent_casing:3>],
    [<gregtech:meta_item_1:164>,<gregtech:machine:993>,<gregtech:meta_cutting_blade:129>],
    [<ore:circuitUv>,<gregtech:cable_single:338>,<gregtech:meta_item_1:134>]]);

Recipes.addShaped("ArcFurnace3", stage, <gregtech:machine:97>,[
    [<ore:cableGtQuadrupleGold>,<gregtech:meta_item_1:189>,<ore:cableGtQuadrupleGold>],
    [<ore:circuitHv>,<gregtech:machine:988>,<ore:circuitHv>],
    [<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>,<gregtech:meta_plate:32003>]]);

Recipes.addShaped("ArcFurnace4", stage, <gregtech:machine:98>,[
    [<ore:cableGtQuadrupleAluminium>,<gregtech:meta_item_1:190>,<ore:cableGtQuadrupleAluminium>],
    [<ore:circuitEv>,<gregtech:machine:989>,<ore:circuitEv>],
    [<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>]]);

Recipes.addShaped("ArcFurnace5", stage, <gregtech:machine:99>,[
    [<ore:cableGtQuadruplePlatinum>,<gregtech:meta_item_1:191>,<ore:cableGtQuadruplePlatinum>],
    [<ore:circuitIv>,<gregtech:machine:990>,<ore:circuitIv>],
    [<gregtech:meta_plate:2013>,<gregtech:meta_plate:2013>,<gregtech:meta_plate:2013>]]);

Recipes.addShaped("ArcFurnace6", stage, <gregtech:machine:100>,[
    [<ore:cableGtQuadrupleNiobiumTitanium>,<gregtech:meta_item_1:192>,<ore:cableGtQuadrupleNiobiumTitanium>],
    [<ore:circuitLuv>,<gregtech:machine:991>,<ore:circuitLuv>],
    [<gregtech:meta_plate:2062>,<gregtech:meta_plate:2062>,<gregtech:meta_plate:2062>]]);

Recipes.addShaped("ArcFurnace7", stage, <gregtech:machine:101>,[
    [<ore:cableGtQuadrupleVanadiumGallium>,<gregtech:meta_item_1:193>,<ore:cableGtQuadrupleVanadiumGallium>],
    [<ore:circuitZpm>,<gregtech:machine:992>,<ore:circuitZpm>],
    [<gregtech:meta_plate:2042>,<gregtech:meta_plate:2042>,<gregtech:meta_plate:2042>]]);

Recipes.addShaped("ArcFurnace8", stage, <gregtech:machine:102>,[
    [<ore:cableGtQuadrupleYttriumBariumCuprate>,<gregtech:meta_item_1:194>,<ore:cableGtQuadrupleYttriumBariumCuprate>],
    [<ore:circuitUv>,<gregtech:machine:993>,<ore:circuitUv>],
    [<gregtech:meta_plate:27>,<gregtech:meta_plate:27>,<gregtech:meta_plate:27>]]);

Recipes.addShaped("Centrifuge3", stage, <gregtech:machine:187>,[
    [<ore:circuitHv>,<gregtech:meta_dust:341>,<ore:circuitHv>],
    [<ore:cableGtSingleGold>,<gregtech:machine:988>,<ore:cableGtSingleGold>],
    [<ore:circuitHv>,<gregtech:meta_item_1:129>,<ore:circuitHv>]]);

Recipes.addShaped("Centrifuge4", stage, <gregtech:machine:188>,[
    [<ore:circuitEv>,<gregtech:meta_dust:341>,<ore:circuitEv>],
    [<ore:cableGtSingleAluminium>,<gregtech:machine:989>,<ore:cableGtSingleAluminium>],
    [<ore:circuitEv>,<gregtech:meta_item_1:130>,<ore:circuitEv>]]);

Recipes.addShaped("Centrifuge5", stage, <gregtech:machine:189>,[
    [<ore:circuitIv>,<gregtech:meta_dust:341>,<ore:circuitIv>],
    [<ore:cableGtSinglePlatinum>,<gregtech:machine:990>,<ore:cableGtSinglePlatinum>],
    [<ore:circuitIv>,<gregtech:meta_item_1:131>,<ore:circuitIv>]]);

Recipes.addShaped("Centrifuge6", stage, <gregtech:machine:190>,[
    [<ore:circuitLuv>,<gregtech:meta_dust:341>,<ore:circuitLuv>],
    [<ore:cableGtSingleNiobiumTitanium>,<gregtech:machine:991>,<ore:cableGtSingleNiobiumTitanium>],
    [<ore:circuitLuv>,<gregtech:meta_item_1:132>,<ore:circuitLuv>]]);

Recipes.addShaped("Centrifuge7", stage, <gregtech:machine:191>,[
    [<ore:circuitZpm>,<gregtech:meta_dust:341>,<ore:circuitZpm>],
    [<ore:cableGtSingleVanadiumGallium>,<gregtech:machine:992>,<ore:cableGtSingleVanadiumGallium>],
    [<ore:circuitZpm>,<gregtech:meta_item_1:133>,<ore:circuitZpm>]]);

Recipes.addShaped("Centrifuge8", stage, <gregtech:machine:192>,[
    [<ore:circuitUv>,<gregtech:meta_dust:342>,<ore:circuitUv>],
    [<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:machine:993>,<ore:cableGtSingleYttriumBariumCuprate>],
    [<ore:circuitUv>,<gregtech:meta_item_1:134>,<ore:circuitUv>]]);

Recipes.addShaped("Saw3", stage, <gregtech:machine:11004>,[
    [<ore:cableGtSingleGold>,<gregtech:transparent_casing>,<ore:circuitHv>],
    [<gregtech:meta_item_1:159>,<gregtech:machine:988>,<gregtech:meta_tool_head_buzz_saw:2511>],
    [<ore:circuitHv>,<ore:cableGtSingleGold>,<gregtech:meta_item_1:129>]]);

Recipes.addShaped("Saw4", stage, <gregtech:machine:11005>,[
    [<ore:cableGtSingleAluminium>,<gregtech:transparent_casing>,<ore:circuitEv>],
    [<gregtech:meta_item_1:160>,<gregtech:machine:989>,<gregtech:meta_tool_head_buzz_saw:331>],
    [<ore:circuitEv>,<ore:cableGtSingleAluminium>,<gregtech:meta_item_1:130>]]);

Recipes.addShaped("Saw5", stage, <gregtech:machine:11006>,[
    [<ore:cableGtSinglePlatinum>,<gregtech:transparent_casing:1>,<ore:circuitIv>],
    [<gregtech:meta_item_1:161>,<gregtech:machine:990>,<gregtech:meta_tool_head_buzz_saw:396>],
    [<ore:circuitIv>,<ore:cableGtSinglePlatinum>,<gregtech:meta_item_1:131>]]);

Recipes.addShaped("Saw6", stage, <gregtech:machine:11007>,[
    [<ore:cableGtSingleNiobiumTitanium>,<gregtech:transparent_casing:1>,<ore:circuitLuv>],
    [<gregtech:meta_item_1:162>,<gregtech:machine:991>,<gregtech:meta_tool_head_buzz_saw:2519>],
    [<ore:circuitLuv>,<ore:cableGtSingleNiobiumTitanium>,<gregtech:meta_item_1:132>]]);

Recipes.addShaped("Saw7", stage, <gregtech:machine:11008>,[
    [<ore:cableGtSingleVanadiumGallium>,<gregtech:transparent_casing:2>,<ore:circuitZpm>],
    [<gregtech:meta_item_1:163>,<gregtech:machine:992>,<gregtech:meta_tool_head_buzz_saw:2042>],
    [<ore:circuitZpm>,<ore:cableGtSingleVanadiumGallium>,<gregtech:meta_item_1:133>]]);

Recipes.addShaped("Saw8", stage, <gregtech:machine:11009>,[
    [<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:transparent_casing:2>,<ore:circuitUv>],
    [<gregtech:meta_item_1:164>,<gregtech:machine:993>,<gregtech:meta_tool_head_buzz_saw:129>],
    [<ore:circuitUv>,<ore:cableGtSingleYttriumBariumCuprate>,<gregtech:meta_item_1:134>]]);

Recipes.addShaped("SwapME1", stage, <gregtech:machine:11012>,[
    [<ore:craftingToolScrewdriver>],
    [<gregtech:machine:11013>]]);

Recipes.addShaped("SwapME2", stage, <gregtech:machine:11013>,[
    [<ore:craftingToolScrewdriver>],
    [<gregtech:machine:11012>]]);

Recipes.addShaped("SwapME3", stage, <gregtech:machine:11014>,[
    [<ore:craftingToolScrewdriver>],
    [<gregtech:machine:11015>]]);

Recipes.addShaped("SwapME4", stage, <gregtech:machine:11015>,[
    [<ore:craftingToolScrewdriver>],
    [<gregtech:machine:11014>]]);

Recipes.addShaped("CableAnchor", stage, <appliedenergistics2:part:120>,[
    [<gregtech:meta_bolt:324>,<gregtech:meta_screw:324>,<ore:craftingToolScrewdriver>]]);

Recipes.addShapeless("WorldBlockImporter", stage, <integratedtunnels:part_importer_world_block_item>, [<integratedtunnels:part_importer_item_item>,<integrateddynamics:logic_director>,<minecraft:dispenser>]);
Recipes.addShapeless("WorldBlockExporter", stage, <integratedtunnels:part_exporter_world_block_item>, [<integratedtunnels:part_exporter_item_item>,<integrateddynamics:logic_director>,<minecraft:dispenser>]);
Recipes.addShapeless("MagnetCard", stage, <appliedenergistics2:material:60>.withTag({}), [<appliedenergistics2:material:25>,<gregtech:meta_dust:395>]);
Recipes.addShapeless("FluixFromBlock", stage, <appliedenergistics2:material:7> * 9, [<appliedenergistics2:fluix_block>]);
Recipes.addShapeless("P2Pfluid", stage, <appliedenergistics2:part:463>, [<appliedenergistics2:part:460>,<gregtech:meta_item_1:248>,<ore:craftingToolScrewdriver>]);
Recipes.addShapeless("P2Pgteu", stage, <appliedenergistics2:part:470>, [<appliedenergistics2:part:460>,<gregtech:meta_item_1:604>,<ore:craftingToolScrewdriver>]);
Recipes.addShapeless("P2Pitem", stage, <appliedenergistics2:part:462>, [<appliedenergistics2:part:460>,<gregtech:meta_item_1:158>,<ore:craftingToolScrewdriver>]);
Recipes.addShapeless("P2Plight", stage, <appliedenergistics2:part:467>, [<appliedenergistics2:part:460>,<minecraft:daylight_detector>,<ore:craftingToolScrewdriver>]);
Recipes.addShapeless("P2Predstone", stage, <appliedenergistics2:part:461>, [<appliedenergistics2:part:460>,<gregtech:meta_plate:32007>,<ore:craftingToolScrewdriver>]);
Recipes.addShapeless("Pecco3", stage, <gagtweaks:peccorite_crystal>, [<gagtweaks:peccorite_crystal_block>]);
Recipes.addShapeless("Pecco4", stage, <gagtweaks:peccorite_crystal_empowered>, [<gagtweaks:peccorite_crystal_block_empowered>]);
Recipes.addShapeless("Nitan3", stage, <gagtweaks:nitanite_crystal>, [<gagtweaks:nitanite_crystal_block>]);
Recipes.addShapeless("Nitan4", stage, <gagtweaks:nitanite_crystal_empowered>, [<gagtweaks:nitanite_crystal_block_empowered>]);
*/