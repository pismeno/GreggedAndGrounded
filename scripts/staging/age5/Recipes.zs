/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_FIVE;

static recipesShaped as IIngredient[][][][IItemStack] = {
<gregtech:machine:1008> : [
        [
            [<gregtech:meta_item_1:176>,<ore:circuitIv>,<gregtech:meta_item_1:176>],
            [<gregtech:meta_item_1:131>,<gregtech:machine:990>,<gregtech:meta_item_1:131>],
            [<gregtech:meta_gear:2013>,<ore:cableGtSingleHssg>,<gregtech:meta_gear:2013>]
        ]
    ],

    <extraplanets:tier4_items:1> : [
        [
            [<galacticraftplanets:item_basic_mars:3>,<gregtech:meta_item_1:146>,<galacticraftplanets:item_basic_mars:3>],
            [<extraplanets:tier4_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier4_items:3>],
            [<extraplanets:tier4_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier4_items:3>]
        ]
    ],

    <extraplanets:tier5_items:1> : [
        [
            [<extraplanets:tier4_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier4_items:3>],
            [<extraplanets:tier5_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier5_items:3>],
            [<extraplanets:tier5_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier5_items:3>]
        ]
    ],

    <extraplanets:tier6_items:1> : [
        [
            [<extraplanets:tier5_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier5_items:3>],
            [<extraplanets:tier6_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier6_items:3>],
            [<extraplanets:tier6_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier6_items:3>]
        ]
    ],

    <extraplanets:tier7_items:1> : [
        [
            [<extraplanets:tier6_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier6_items:3>],
            [<extraplanets:tier7_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier7_items:3>],
            [<extraplanets:tier7_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier7_items:3>]
        ]
    ],

    <extraplanets:tier8_items:1> : [
        [
            [<extraplanets:tier7_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier7_items:3>],
            [<extraplanets:tier8_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier8_items:3>],
            [<extraplanets:tier8_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier8_items:3>]
        ]
    ],

    <extraplanets:tier9_items:1> : [
        [
            [<extraplanets:tier8_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier8_items:3>],
            [<extraplanets:tier9_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier9_items:3>],
            [<extraplanets:tier9_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier9_items:3>]
        ]
    ],

    <extraplanets:tier10_items:1> : [
        [
            [<extraplanets:tier9_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier9_items:3>],
            [<extraplanets:tier10_items:3>,<gregtech:meta_item_1:146>,<extraplanets:tier10_items:3>],
            [<extraplanets:tier10_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier10_items:3>]
        ]
    ],

    <extraplanets:tier4_items> : [
        [
            [<gregtech:meta_item_1:146>,<gregtech:meta_item_1:221>,<gregtech:meta_item_1:251>],
            [<extraplanets:tier4_items:3>,<ore:craftingToolWrench>,<extraplanets:tier4_items:3>],
            [<extraplanets:tier4_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier4_items:3>]
        ]
    ],

    <extraplanets:tier5_items> : [
        [
            [<gregtech:meta_item_1:146>,<gregtech:meta_item_1:221>,<gregtech:meta_item_1:251>],
            [<extraplanets:tier5_items:3>,<ore:craftingToolWrench>,<extraplanets:tier5_items:3>],
            [<extraplanets:tier5_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier5_items:3>]
        ]
    ],

    <extraplanets:tier6_items> : [
        [
            [<gregtech:meta_item_1:147>,<gregtech:meta_item_1:222>,<gregtech:meta_item_1:252>],
            [<extraplanets:tier6_items:3>,<ore:craftingToolWrench>,<extraplanets:tier6_items:3>],
            [<extraplanets:tier6_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier6_items:3>]
        ]
    ],

    <extraplanets:tier7_items> : [
        [
            [<gregtech:meta_item_1:147>,<gregtech:meta_item_1:222>,<gregtech:meta_item_1:252>],
            [<extraplanets:tier7_items:3>,<ore:craftingToolWrench>,<extraplanets:tier7_items:3>],
            [<extraplanets:tier7_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier7_items:3>]
        ]
    ],

    <extraplanets:tier8_items> : [
        [
            [<gregtech:meta_item_1:147>,<gregtech:meta_item_1:222>,<gregtech:meta_item_1:252>],
            [<extraplanets:tier8_items:3>,<ore:craftingToolWrench>,<extraplanets:tier8_items:3>],
            [<extraplanets:tier8_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier8_items:3>]
        ]
    ],

    <extraplanets:tier9_items> : [
        [
            [<gregtech:meta_item_1:147>,<gregtech:meta_item_1:222>,<gregtech:meta_item_1:252>],
            [<extraplanets:tier9_items:3>,<ore:craftingToolWrench>,<extraplanets:tier9_items:3>],
            [<extraplanets:tier9_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier9_items:3>]
        ]
    ],

    <extraplanets:tier10_items> : [
        [
            [<gregtech:meta_item_1:147>,<gregtech:meta_item_1:222>,<gregtech:meta_item_1:252>],
            [<extraplanets:tier10_items:3>,<ore:craftingToolWrench>,<extraplanets:tier10_items:3>],
            [<extraplanets:tier10_items:3>,<galacticraftcore:air_vent>,<extraplanets:tier10_items:3>]
        ]
    ]
};


function init() as void {
    ProcessUtils.processRecipesShaped(recipesShaped, STAGE_FIVE);
}