/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.jmapstages.JMapStages;

import scripts.Stages.STAGE_MAP;

function init() as void {
    JMapStages.setMinimapStage(STAGE_MAP.stage);
    JMapStages.setFullscreenStage(STAGE_MAP.stage);
    JMapStages.setDeathpointStage(STAGE_MAP.stage);
    JMapStages.setWaypointStage(STAGE_MAP.stage);
}