/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_ONE;

static recipesShaped as IIngredient[][][][IItemStack] = {
    <betterwithmods:single_machine> : [
        [
            [<minecraft:stone>,<gregtech:meta_gear:1617>,<minecraft:stone>],
            [<minecraft:stone>,<horsepower:hand_grindstone>,<minecraft:stone>],
            [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
        ]
    ],

    <gregtech:machine:1017> : [
        [
            [<gregtech:metal_casing:8>,<gregtech:meta_item_1:353>,<gregtech:metal_casing:8>],
            [<gregtech:meta_item_1:353>,<minecraft:furnace>,<gregtech:meta_item_1:353>],
            [<gregtech:metal_casing:8>,<gregtech:meta_item_1:353>,<gregtech:metal_casing:8>]
        ]
    ],

    <primal:thatch_wet> : [
        [
            [<primal:thatching_wet>,<primal:thatching_wet>,<primal:thatching_wet>],
            [<primal:thatching_wet>,<betterwithmods:rope>,<primal:thatching_wet>],
            [<primal:thatching_wet>,<primal:thatching_wet>,<primal:thatching_wet>]
        ]
    ],

    <primal:thatch> : [
        [
            [<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
            [<primal:thatching_dry>,<betterwithmods:rope>,<primal:thatching_dry>],
            [<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>]
        ]
    ],

    <betterwithmods:bellows> : [
        [
            [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
            [<ore:leather>,<ore:leather>,<ore:leather>],
            [<ore:slabWood>,<gregtech:meta_gear:1617>,<ore:slabWood>]
        ]
    ],

    <primal_tech:leaf_bed> : [
        [
            [<primal:thatch>,<primal:thatch>,<primal:thatch>],
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
            ]
        ],
    <betterwithmods:cooking_pot:1> : [
        [
            [<minecraft:stone>,null,<minecraft:stone>],
            [<minecraft:stone>,null,<minecraft:stone>],
            [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
        ]
    ],

    <betterwithmods:hibachi> : [
        [
            [<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
            [<minecraft:stone>,<primal:plant_cloth>,<minecraft:stone>],
            [<minecraft:stone>,<primal_tech:fire_sticks>,<minecraft:stone>]
        ]
    ],

    <betterwithmods:material:11> : [
        [
            [<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
            [<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
            [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
        ]
    ],

    <betterwithmods:axle_generator> : [
        [
            [null,<betterwithmods:material:11>,null],
            [<betterwithmods:material:11>,<gregtech:meta_gear:1617>,<betterwithmods:material:11>],
            [null,<betterwithmods:material:11>,null]
        ]
    ],

    <gregtech:planks:1> * 8 : [
        [
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
            [<ore:plankWood>,<ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>),<ore:plankWood>],
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
        ]
    ],

    <forestry:bog_earth> : [
        [
            [<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>],
            [<ore:pileSand>,<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>),<ore:pileSand>],
            [<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>]
        ]
    ],

    <betterwithmods:axle_generator:1> : [
        [
            [<betterwithmods:material:10>,<betterwithmods:material:10>,<betterwithmods:material:10>],
            [<betterwithmods:material:10>,<gregtech:meta_gear:1617>,<betterwithmods:material:10>],
            [<betterwithmods:material:10>,<betterwithmods:material:10>,<betterwithmods:material:10>]
        ]
    ],

    <gregtech:meta_gear:1617> : [
        [
            [<gregtech:meta_stick:1648>,<gregtech:planks:1>,<gregtech:meta_stick:1648>],
            [<gregtech:planks:1>,<ore:craftingToolSoftHammer>,<gregtech:planks:1>],
            [<gregtech:meta_stick:1648>,<gregtech:planks:1>,<gregtech:meta_stick:1648>]
        ]
    ],

    <primal_tech:wooden_hopper> : [
        [
            [<primal:bark_oak>,<ore:craftingToolSoftHammer>,<primal:bark_oak>],
            [<primal:bark_oak>,<ore:chestWood>,<primal:bark_oak>],
            [null,<primal:bark_oak>,null]
        ]
    ],

    <primal_tech:wooden_hopper> * 2 : [
        [
            [<gregtech:planks:1>,<ore:craftingToolSoftHammer>,<gregtech:planks:1>],
            [<gregtech:planks:1>,<ore:chestWood>,<gregtech:planks:1>],
            [null,<gregtech:planks:1>,null]
        ]
    ],

    <betterwithmods:wooden_gearbox> : [
        [
            [<gregtech:meta_gear:1617>,<ore:plankWood>,<gregtech:meta_gear:1617>],
            [<ore:plankWood>,<betterwithmods:wooden_axle>,<ore:plankWood>],
            [<gregtech:meta_gear:1617>,<ore:plankWood>,<gregtech:meta_gear:1617>]
        ]
    ],

    <betterwithmods:bamboo_chime> : [
        [
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
            [<betterwithmods:rope>,<minecraft:lever>,<betterwithmods:rope>],
            [<minecraft:reeds>,<betterwithmods:rope>,<minecraft:reeds>]
        ]
    ],

    <betterwithmods:material:9> : [
        [
            [<betterwithmods:material:12>,<ore:leather>,<betterwithmods:material:12>],
            [<ore:leather>,null,<ore:leather>],
            [<betterwithmods:material:12>,<ore:leather>,<betterwithmods:material:12>]
        ]
    ],

    <tconstruct:soil> * 4 : [
        [
            [<minecraft:gravel>,<minecraft:clay_ball>,<minecraft:gravel>],
            [<minecraft:clay_ball>,<gregtech:meta_dust:266>,<minecraft:clay_ball>],
            [<minecraft:gravel>,<minecraft:clay_ball>,<minecraft:gravel>]
        ]
    ],

    <betterwithmods:single_machine:2> : [
        [
            [<gregtech:planks:1>,null,<gregtech:planks:1>],
            [<gregtech:meta_gear:1617>,<primal_tech:wooden_hopper>,<gregtech:meta_gear:1617>],
            [<gregtech:planks:1>,<gregtech:planks:1>,<gregtech:planks:1>]
        ]
    ],

    <betterwithmods:wicker> : [
        [
            [null,<ore:craftingToolKnife>,null],
            [<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
            [<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>]
        ]
    ],

    <betterwithmods:saw> : [
        [
            [<primal:flint_point>,<primal:flint_point>,<primal:flint_point>],
            [<gregtech:meta_gear:1617>,<betterwithmods:material:9>,<gregtech:meta_gear:1617>],
            [<ore:plankWood>,<gregtech:meta_gear:1617>,<ore:plankWood>]
        ]
    ],

    <tconstruct:seared_tank> : [
        [
            [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
            [<tconstruct:materials>,null,<tconstruct:materials>],
            [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
        ]
    ],

    <tconstruct:smeltery_controller> : [
        [
            [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
            [<tconstruct:materials>,<ore:craftingToolSoftHammer>,<tconstruct:materials>],
            [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
        ]
    ],

    <forestry:apiary> : [
        [
            [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
            [<ore:plankWood>,<ore:craftingToolSoftHammer>,<ore:plankWood>],
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
        ]
    ],

    <forestry:bee_chest> : [
        [
            [<ore:beeComb>,<minecraft:chest>,<ore:beeComb>],
            [<ore:beeComb>,<ore:beeComb>,<ore:beeComb>]
        ]
    ],

    <forestry:tree_chest> : [
        [
            [<ore:treeSapling>,<minecraft:chest>,<ore:treeSapling>],
            [<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>]
        ]
    ],

    <forestry:butterfly_chest> : [
        [
            [<forestry:butterfly_ge>,<minecraft:chest>,<forestry:butterfly_ge>],
            [<forestry:butterfly_ge>,<forestry:butterfly_ge>,<forestry:butterfly_ge>]
        ]
    ],

    <extraplanets:cloth> : [
        [
            [<ore:wool>,<ore:wool>],
            [<ore:wool>,<ore:wool>],
            [<ore:wool>,<ore:wool>]
        ]
    ]
};


static recipesShapedMirrored as IIngredient[][][][IItemStack] = {
    <gregtech:hoe>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 63, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:flint", AttackSpeed: -1.0 as float}}) : [
        [
            [<minecraft:flint>,<minecraft:flint>,null],
            [null,<ore:stickWood>,null],
            [null,<ore:stickWood>,null]
        ]
    ],

    <prospectors:prospector_med> : [
        [
            [null,<gregtech:meta_stick:1648>,<betterwithmods:material:12>],
            [<ore:craftingToolSoftHammer>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>],
            [<gregtech:meta_stick:1648>,<ore:craftingToolKnife>,null]
        ]
    ],

    <betterwithmods:wooden_axle> : [
        [
            [null,<ore:plankWood>,<ore:craftingToolSoftHammer>],
            [<betterwithmods:rope>,<gregtech:meta_gear:1617>,<betterwithmods:rope>],
            [null,<ore:plankWood>,null]
        ],
        [
            [null,<ore:plankWood>,null],
            [<betterwithmods:rope>,<gregtech:meta_gear:1617>,<betterwithmods:rope>],
            [null,<ore:plankWood>,<ore:craftingToolSoftHammer>]
        ]
    ],

    <betterwithmods:material:10> : [
        [
            [<gregtech:planks:1>,<ore:craftingToolSoftHammer>,null],
            [<gregtech:planks:1>,<betterwithmods:material:12>,<gregtech:planks:1>],
            [<gregtech:planks:1>,null,null]
        ]
    ],

    <galacticraftcore:canvas> : [
        [
            [<betterwithmods:material:4>,<betterwithmods:material:4>,<ore:stickWood>],
            [<betterwithmods:material:4>,<betterwithmods:material:4>,<betterwithmods:material:4>],
            [<ore:stickWood>,<betterwithmods:material:4>,<betterwithmods:material:4>]
        ]
    ],

    <forestry:scoop> : [
        [
            [<ore:stickWood>,<extraplanets:cloth>,<ore:stickWood>],
            [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
            [null,<ore:stickWood>,null]
        ]
    ],

    <forestry:crafting_material:3> : [
        [
            [<forestry:crafting_material:2>,<forestry:crafting_material:2>,<forestry:crafting_material:2>],
            [<forestry:crafting_material:2>,<forestry:crafting_material:2>,<forestry:crafting_material:2>]
        ]
    ],

    <tconstruct:pattern> : [
        [
            [<ore:plankWood>,<ore:stickWood>],
            [<ore:stickWood>,<ore:plankWood>]
        ]
    ]
};


static recipesShapeless as IIngredient[][][IItemStack] = {
    <tconstruct:book> : [
        [<primal:plant_papyrus>, <ore:leather>, <tconstruct:pattern>]
    ],
    <forestry:book_forester> : [
        [<primal:plant_papyrus>, <ore:leather>, <ore:beeComb>]
    ],
    <tconstruct:soil:1> : [
        [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <ore:sand>, <ore:dirt>]
    ],
    <tconstruct:soil:2> : [
        [<tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>, <ore:sand>, <ore:dirt>]
    ]
};


function init() as void {
  ProcessUtils.processRecipesShaped(recipesShaped, STAGE_ONE);
  ProcessUtils.processRecipesMirrored(recipesShapedMirrored, STAGE_ONE);
  ProcessUtils.processRecipesShapeless(recipesShapeless, STAGE_ONE);
}