/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_TWO;

static recipesShaped as IIngredient[][][][IItemStack] = {
    <minecraft:golden_apple> : [
        [
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<minecraft:apple>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>]
        ]
    ],

    <gregtech:meta_item_1:516> : [
        [
            [null,<gagtweaks:blaze_chunk>,null],
            [<gregtech:meta_bolt:324>,<gregtech:meta_item_1:517>,<gregtech:meta_bolt:324>],
            [<gregtech:wire_single:25>,<gregtech:wire_single:25>,<gregtech:wire_single:25>]
        ]
    ],

    <gregtech:meta_item_1:519> * 2 : [
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:wire_single:25>,<gregtech:meta_dust:271>,<gregtech:wire_single:25>],
            [null,<minecraft:paper>,null]
        ],
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:wire_single:25>,<gregtech:meta_dust:266>,<gregtech:wire_single:25>],
            [null,<minecraft:paper>,null]
        ],
        [
            [<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
            [<gregtech:wire_single:25>,<gregtech:meta_dust:18>,<gregtech:wire_single:25>],
            [null,<minecraft:paper>,null]
        ]
    ],

    <gregtech:machine:1625> : [
        [
            [<gregtech:meta_screw:324>,<ore:plateWood>,<gregtech:meta_screw:324>],
            [<ore:plateWood>,<ore:craftingToolSaw>,<ore:plateWood>],
            [<gregtech:meta_screw:324>,<ore:plateWood>,<gregtech:meta_screw:324>]
        ]
    ],

    <gregtech:machine:11000> : [
        [
            [<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>],
            [<minecraft:hopper>,<gregtech:steam_casing>,<gregtech:meta_tool_head_buzz_saw:260>],
            [<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>]
        ]
    ],

    <gregtech:machine:11001> : [
        [
            [<gregtech:meta_plate:335>,<gregtech:meta_tool_head_buzz_saw:324>,<gregtech:meta_plate:335>],
            [<gregtech:fluid_pipe_small:328>,<gregtech:machine:11000>,<gregtech:fluid_pipe_small:328>],
            [<gregtech:meta_plate:335>,<gregtech:meta_plate:324>,<gregtech:meta_plate:335>]
        ]
    ],

    <gregtech:machine:1> : [
        [
            [<gregtech:fluid_pipe_small:260>,<minecraft:furnace>,<gregtech:fluid_pipe_small:260>],
            [<gregtech:fluid_pipe_small:260>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_small:260>],
            [<gregtech:fluid_pipe_small:260>,<gregtech:steam_casing:1>,<gregtech:fluid_pipe_small:260>]
        ]
    ],

    <gregtech:machine:2> : [
        [
            [<gregtech:fluid_pipe_small:324>,<minecraft:furnace>,<gregtech:fluid_pipe_small:324>],
            [<gregtech:fluid_pipe_small:324>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_small:324>],
            [<gregtech:fluid_pipe_small:324>,<gregtech:steam_casing:3>,<gregtech:fluid_pipe_small:324>]
        ]
    ],

    <gregtech:meta_item_1:381> * 3 : [
        [
            [<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>],
            [<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>],
            [<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>]
        ],
        [
            [<betterwithmods:material:12>,<betterwithmods:material:12>,<betterwithmods:material:12>],
            [<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>],
            [<betterwithmods:material:12>,<betterwithmods:material:12>,<betterwithmods:material:12>]
        ]
    ],

    <forestry:bog_earth> : [
        [
            [<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>],
            [<ore:pileSand>,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),<ore:pileSand>],
            [<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>]
        ]
    ],

    <minecraft:piston> : [
        [
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
            [<ore:cobblestone>,<gregtech:meta_plate:335>,<ore:cobblestone>],
            [<ore:cobblestone>,<gregtech:meta_plate:2517>,<ore:cobblestone>]
        ]
    ],

    <gregtech:machine:1024> : [
        [
            [<gregtech:metal_casing>,<gregtech:meta_gear:2037>,<gregtech:metal_casing>],
            [<gregtech:boiler_firebox_casing>,<gregtech:machine:15>,<gregtech:boiler_firebox_casing>],
            [<gregtech:metal_casing>,<gregtech:meta_gear:2037>,<gregtech:metal_casing>]
        ]
    ],

    <ironchest:iron_chest:3> : [
        [
            [<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>],
            [<gregtech:meta_plate_double:25>,<minecraft:chest>,<gregtech:meta_plate_double:25>],
            [<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>]
        ]
    ],

    <ironchest:iron_chest> : [
        [
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:335>,<minecraft:chest>,<gregtech:meta_plate:335>],
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>]
        ]
    ],

    <ironchest:iron_chest:4> : [
        [
            [<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>],
            [<gregtech:meta_plate_double:100>,<minecraft:chest>,<gregtech:meta_plate_double:100>],
            [<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>]
        ]
    ],

    <ironchest:iron_chest:1> : [
        [
            [<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate_double:41>,<minecraft:chest>,<gregtech:meta_plate_double:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>]
        ]
    ],

    <extrautils2:largishchest> : [
        [
            [<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>],
            [<gregtech:meta_screw:1617>,<minecraft:chest>,<gregtech:meta_screw:1617>],
            [<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>]
        ]
    ],

    <ironchest:copper_silver_chest_upgrade> : [
        [
            [<gregtech:meta_plate:100>,<gregtech:meta_plate:100>,<gregtech:meta_plate:100>],
            [<gregtech:meta_plate:100>,<gregtech:meta_plate:25>,<gregtech:meta_plate:100>],
            [<gregtech:meta_plate:100>,<gregtech:meta_plate:100>,<gregtech:meta_plate:100>]
        ]
    ],

    <ironchest:silver_gold_chest_upgrade> : [
        [
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:100>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>]
        ]
    ],

    <ironchest:iron_gold_chest_upgrade> : [
        [
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:51>,<gregtech:meta_plate:41>],
            [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>]
        ]
    ],

    <ironchest:wood_copper_chest_upgrade> : [
        [
            [<gregtech:meta_plate:25>,<gregtech:meta_plate:25>,<gregtech:meta_plate:25>],
            [<gregtech:meta_plate:25>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:25>],
            [<gregtech:meta_plate:25>,<gregtech:meta_plate:25>,<gregtech:meta_plate:25>]
        ]
    ],

    <ironchest:wood_iron_chest_upgrade> : [
        [
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:51>],
            [<gregtech:meta_plate:51>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>]
        ]
    ],

    <extrautils2:decorativesolidwood:1> : [
        [
            [<gregtech:meta_screw:41>,<totemic:cedar_plank>,<gregtech:meta_screw:41>],
            [<totemic:cedar_plank>,<minecraft:bookshelf>,<totemic:cedar_plank>],
            [<totemic:eagle_drops:1>,<totemic:cedar_plank>,<totemic:eagle_drops:1>]
        ]
    ],

    <galacticraftcore:steel_pole> : [
        [
            [<gregtech:meta_stick_long:324>],
            [<ore:craftingToolHardHammer>],
            [<gregtech:meta_stick_long:324>]
        ]
    ],

    <chunkloaders:single_chunk_loader> : [
        [
            [<gregtech:meta_screw:335>,<gregtech:meta_plate:335>,<gregtech:meta_screw:335>],
            [<gregtech:meta_plate:335>,<ore:craftingToolFile>,<gregtech:meta_plate:335>],
            [<gregtech:meta_screw:335>,<gregtech:meta_plate:335>,<gregtech:meta_screw:335>]
        ]
    ],

    <forestry:oak_stick> * 8 : [
        [
            [<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>],
            [<gregtech:meta_stick:1648>,<minecraft:nether_wart>,<gregtech:meta_stick:1648>],
            [<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>]
        ]
    ],

    <openglider:hang_glider_part:2> : [
        [
            [<gregtech:meta_screw:324>,<gregtech:meta_stick:324>,<gregtech:meta_screw:324>],
            [<gregtech:meta_stick:324>,<ore:craftingToolHardHammer>,<gregtech:meta_stick:324>],
            [<gregtech:meta_stick:324>,<gregtech:meta_stick_long:324>,<gregtech:meta_stick:324>]
        ]
    ],

    <openglider:hang_glider_part:0> : [
        [
            [<ore:craftingToolHardHammer>,<gregtech:meta_stick:324>,<ore:leather>],
            [<gregtech:meta_stick:324>,<ore:leather>,<ore:leather>],
            [<ore:leather>,<ore:leather>,<ore:leather>]
        ]
    ],

    <openglider:hang_glider_part:1> : [
        [
            [<ore:leather>,<gregtech:meta_stick:324>,<ore:craftingToolHardHammer>],
            [<ore:leather>,<ore:leather>,<gregtech:meta_stick:324>],
            [<ore:leather>,<ore:leather>,<ore:leather>]
        ]
    ],

    <openglider:hang_glider_basic> : [
        [
            [<gregtech:meta_screw:324>,<ore:craftingToolHardHammer>,<gregtech:meta_screw:324>],
            [<openglider:hang_glider_part:0>,<openglider:hang_glider_part:2>,<openglider:hang_glider_part:1>],
            [<gregtech:meta_screw:324>,<ore:craftingToolScrewdriver>,<gregtech:meta_screw:324>]
        ]
    ]
};


static recipesShapedMirrored as IIngredient[][][][IItemStack] = {
    <extrautils2:wateringcan:1000> : [
        [
            [<gregtech:meta_ring:51>,<gregtech:meta_stick:51>,<gregtech:meta_stick:51>],
            [<gregtech:meta_plate:51>,<ore:craftingToolHardHammer>,<gregtech:meta_plate:51>],
            [null,<gregtech:meta_plate:51>,null]
        ]
    ],

    <gregtech:metal_casing:1> : [
        [
            [null,<gregtech:meta_item_1:352>,<ore:craftingToolHardHammer>],
            [<gregtech:meta_item_1:352>,<gregtech:meta_plate:1648>,<gregtech:meta_item_1:352>],
            [null,<gregtech:meta_item_1:352>,null]
        ],
        [
            [null,<gregtech:meta_item_1:352>,null],
            [<gregtech:meta_item_1:352>,<gregtech:meta_plate:1648>,<gregtech:meta_item_1:352>],
            [null,<gregtech:meta_item_1:352>,<ore:craftingToolHardHammer>]
        ]
    ],

    <prospectors:prospector_high> : [
        [
            [null,<gregtech:meta_stick:260>,<gregtech:meta_screw:260>],
            [<ore:craftingToolHardHammer>,<gregtech:meta_stick:260>,<gregtech:meta_stick:260>],
            [<gregtech:meta_stick:1648>,<ore:craftingToolFile>,null]
        ]
    ],

    <gregtech:meta_item_1:381> : [
        [
            [<gregtech:meta_plate:1617>,<gregtech:meta_item_1:438>],
            [<gregtech:meta_item_1:438>,null]
        ],
        [
            [<gregtech:meta_plate:1617>,<betterwithmods:material:12>],
            [<betterwithmods:material:12>,null]
        ]
    ],

    <tconstruct:soil:3> : [
        [
            [<netherex:fiery_netherrack>,<minecraft:soul_sand>],
            [<minecraft:soul_sand>,<netherex:fiery_netherrack>]
        ]
    ],

    <usefulbackpacks:backpack:1> : [
        [
            [<forestry:bee_combs:2>,<ore:peltBear>,<tconstruct:materials:17>],
            [<ore:peltBear>,<usefulbackpacks:backpack>,<tconstruct:soil:4>],
            [<forestry:bee_combs:2>,<ore:peltBear>,<tconstruct:materials:17>]
        ]
    ]
};


static recipesShapeless as IIngredient[][][IItemStack] = {
    <gregtech:meta_dust:2525> * 2 : [
            [<gregtech:meta_dust:2524>,<gregtech:meta_dust:2063>,<gagtweaks:peat_dust>, <betterwithmods:material:12>]
    ],
    <gagtweaks:muddy_dust> * 4 : [
            [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:gravel>, <minecraft:gravel>, <betterwithmods:material:12>]
    ],
    <gagtweaks:muddy_dust> * 8 : [
            [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:gravel>, <minecraft:gravel>, <betterwithmods:material:12>]
    ],
    <gagtweaks:muddy_dust> * 8 : [
            [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:gravel>, <minecraft:gravel>, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <betterwithmods:material:12>]
    ],
    <gagtweaks:muddy_dust> * 16 : [
            [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:gravel>, <minecraft:gravel>, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <betterwithmods:material:12>]
    ]
};

static hammerIngredients as IItemStack[][] = [
  [<gregtech:meta_ingot:260>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float
        }
    })],

    [<gregtech:meta_ingot:324>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, 
            Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float
        }
    })],

    [<gregtech:meta_ingot:335>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float
        }
    })],

            [<gregtech:meta_ingot:23>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 930, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, 
            Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float
        }
    })],

    [<minecraft:iron_ingot>, <gregtech:hammer>.withTag({
        DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.8 as float
        }
    })],

    [<minecraft:diamond>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 768, ToolSpeed: 10.0 as float, AttackDamage: 8.0 as float, 
            Durability: 0, Material: "gregtech:diamond", HarvestLevel: 3, AttackSpeed: -2.7 as float
        }
    })]
];


function init() as void {
    ProcessUtils.addAllToolsRecipes(STAGE_TWO, 260, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
                <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
                <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 5.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
                <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -1.0 as float}}),
                <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.6 as float}}),
                <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
                <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: -2.4 as float}}),
                <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: 3.0 as float}}),
                <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: 3.0 as float}}),
                <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.4 as float}}));

    ProcessUtils.addAllToolsRecipes(STAGE_TWO, 324, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float}}),
                <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.5 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -3.0 as float}}),
                <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 7.0 as float, AttackDamage: 8.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -3.2 as float}}),
                <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -1.0 as float}}),
                <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -2.6 as float}}),
                <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float}}),
                <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -2.4 as float}}),
                <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: 3.0 as float}}),
                <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: 3.0 as float}}),
                <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.4 as float}}));

    ProcessUtils.addAllToolsRecipes(STAGE_TWO, 335, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
                <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
                <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 4.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.4 as float}}),
                <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: -1.2 as float}}),
                <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
                <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
                <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: -2.6000001 as float}}),
                <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: 2.8 as float}}),
                <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: 2.8 as float}}),
                <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -2.6000001 as float}}));

    ProcessUtils.addAllToolsRecipes(STAGE_TWO, 23, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
                <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
                <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 8.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.4 as float}}),
                <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: -1.2 as float}}),
                <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
                <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
                <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: -2.6000001 as float}}),
                <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: 2.8 as float}}),
                <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: 2.8 as float}}),
                <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -2.6000001 as float}}));

    ProcessUtils.addHoeRecipe(STAGE_TWO, <minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:hoe>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: -1.0 as float}}));
    ProcessUtils.addSawRecipe(STAGE_TWO, <minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:saw>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: -2.6 as float}}));
    ProcessUtils.addWrenchRecipe(STAGE_TWO, <minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:wrench>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.8 as float}}));
    ProcessUtils.addScrewdriverRecipe(STAGE_TWO, <gregtech:meta_stick:51>, <gregtech:screwdriver>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: 3.0 as float}}));
    ProcessUtils.addKnifeRecipe(STAGE_TWO, <minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: 3.0 as float}}));
    ProcessUtils.addWirecutterRecipe(STAGE_TWO, <gregtech:meta_stick:51>, <gregtech:meta_plate:51>, <gregtech:meta_screw:51>, <gregtech:wire_cutter>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.4 as float}}));

    ProcessUtils.processRecipesShaped(recipesShaped, STAGE_TWO);
    ProcessUtils.processRecipesMirrored(recipesShapedMirrored, STAGE_TWO);
    ProcessUtils.processRecipesShapeless(recipesShapeless, STAGE_TWO);

    for i in hammerIngredients {
        Recipes.addShapedMirrored(STAGE_TWO.stage, i[1],[
            [i[0],i[0],null],
            [i[0],i[0],<ore:stickWood>],
            [i[0],i[0],null]]
        );
    }
}