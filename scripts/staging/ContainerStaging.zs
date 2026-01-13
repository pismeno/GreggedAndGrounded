/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.recipestages.Recipes;

import scripts.Stages.STAGE_ZERO;
import scripts.Stages.STAGE_ONE;
import scripts.Stages.STAGE_TWO;
import scripts.Stages.STAGE_THREE;
import scripts.Stages.STAGE_FOUR;
import scripts.Stages.STAGE_FIVE;
import scripts.Stages.STAGE_SIX;
import scripts.Stages.STAGE_SEVEN;

function init() as void {
    Recipes.setContainerStage("primal_tech.inventory.ContainerWorkStump", [STAGE_ZERO.stage]);
    Recipes.setPackageStage("mrtjp", [STAGE_ZERO.stage, STAGE_ONE.stage, STAGE_TWO.stage, STAGE_THREE.stage, STAGE_FOUR.stage, STAGE_FIVE.stage, STAGE_SIX.stage, STAGE_SEVEN.stage]);
    Recipes.setPackageStage("gregtech", [STAGE_ZERO.stage, STAGE_ONE.stage, STAGE_TWO.stage, STAGE_THREE.stage, STAGE_FOUR.stage, STAGE_FIVE.stage, STAGE_SIX.stage, STAGE_SEVEN.stage]);
}