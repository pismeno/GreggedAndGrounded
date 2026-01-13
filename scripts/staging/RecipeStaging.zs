/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;
import mods.zenstages.Stage;
import mods.zenstages.ZenStager;

import scripts.Stages.STAGE_ZERO;
import scripts.Stages.STAGE_ONE;
import scripts.Stages.STAGE_TWO;
import scripts.Stages.STAGE_THREE;
import scripts.Stages.STAGE_FOUR;
import scripts.Stages.STAGE_FIVE;
import scripts.Stages.STAGE_SIX;

static recipeStagingMap as string[][string] = {
    STAGE_ONE.stage : [
    "gregtech:soft_mallet_wood",
    "gregtech:hoe_flint"
    ],

    STAGE_TWO.stage : [
        "gregtech:gear_wood"
    ]
};

function init() as void {
    for stage, recipes in recipeStagingMap {
        for recipe in recipes {
            ZenStager.getStage(stage).addRecipeName(recipe);
        }
    }
}