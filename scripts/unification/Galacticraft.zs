/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.GalacticraftTweaker;

function init() as void {
    GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:heavy_plating> * 2);
    GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:*>);

    GalacticraftTweaker.modifySpaceStationRecipe(-26, <xtones:base> * 64, <gregtech:meta_plate:324> * 64, <gregtech:meta_plate:1012> * 32, <tconstruct:clear_glass> * 16, null);
    GalacticraftTweaker.modifySpaceStationRecipe(-27, <xtones:base> * 64, <gregtech:meta_plate:324> * 64, <gregtech:meta_plate:1012> * 32, <tconstruct:clear_glass> * 16, null);
}