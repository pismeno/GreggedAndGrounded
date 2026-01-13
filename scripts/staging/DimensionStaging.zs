/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import scripts.Stages.STAGE_NETHER;
import scripts.Stages.STAGE_END;

function init() as void {
    STAGE_NETHER.addDimension(-1);
    STAGE_END.addDimension(1);
}