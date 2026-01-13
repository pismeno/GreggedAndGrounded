/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.ItemStages;
import mods.zenstages.Stage;
import mods.recipestages.Recipes;

import scripts.Stages.STAGE_REMOVED;
import scripts.Stages.STAGE_ZERO;
import scripts.Stages.STAGE_ONE;
import scripts.Stages.STAGE_TWO;
import scripts.Stages.STAGE_THREE;
import scripts.Stages.STAGE_FOUR;
import scripts.Stages.STAGE_FIVE;
import scripts.Stages.STAGE_SIX;

static modStagingMap as string[][string] = {
    STAGE_ZERO.stage : [
        "minecraft",
        "primalboat",
        "primalchests",
        "primal",
        "primal_tech",
        "death_compass",
        "gravestone",
        "plants2"
    ],

    STAGE_ONE.stage : [
        "tconstruct",
        "betterwithmods",
        "storagedrawers",
        "gregtechdrawers",
        "prospectors",
        "ceramics",
        "testdummy",
        "forestry"
    ],

    STAGE_TWO.stage : [
        "ironchest",
        "netherex",
        "witherskelefix",
        "openglider"
    ],

    STAGE_THREE.stage : [
        "gregtech",
        "jabcm",
        "projectred-core",
        "projectred-illumination",
        "projectred-integration",
        "projectred-transmission",
        "projectred-relocation",
        "stygian",
        "gregtechfoodoption",
        "buildinggadgets",
        "elevatorid",
        "gregstinkering",
        "ironjetpacks",
        "xtones",
        "camera"
    ],

    STAGE_FOUR.stage : [
        "appliedenergistics2",
        "ae2fc",
        "actuallyadditions",
        "galacticraftcore",
        "galacticraftplanets",
        "galacticrafttweaker",
        "projectred-transportation",
        "projectred-expansion",
        "extrautils2",
        "integrateddynamics",
        "integratedtunnels",
        "extraplanets"
    ],

    STAGE_FIVE.stage : [
        "soulshardsrespawn"
    ],

    STAGE_SIX.stage : [
        "projecte",
        "avaritiaddons",
        "avaritia"
    ],

    STAGE_REMOVED.stage : [
        "microblockcbe"
    ]
};

function init() as void {
    for stage, mods in modStagingMap{
        for mod in mods {
            ItemStages.stageModItems(stage, mod);
            if (mod != "gregtech"){
                Recipes.setRecipeStageByMod(stage, mod);
            }
        }
    }
}