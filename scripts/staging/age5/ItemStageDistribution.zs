/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_FIVE;

static setStageFive as IIngredient[] = [
<extrautils2:compressedcobblestone:*>,
<avaritiaddons:avaritiaddons_chest>,
<extrautils2:compresseddirt:*>,
<extrautils2:compressedsand:*>,
<extrautils2:compressedgravel:*>,
<extrautils2:compressednetherrack:*>,
<gregtech:machine:1020>,
<gregtech:machine:1021>,
<gregtech:machine:1022>
];

function init() as void {
    ProcessUtils.processIngredientStaging(setStageFive, STAGE_FIVE);
}