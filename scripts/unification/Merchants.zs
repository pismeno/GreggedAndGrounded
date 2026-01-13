/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.rockytweaks.Merchant;

function init() as void {
    Merchant.addTrade("minecraft:farmer", "farmer", <minecraft:dirt> * 10, <forestry:humus>, 1);
    Merchant.addTrade("minecraft:librarian", "cartographer", <primal:plant_papyrus> * 3, <antiqueatlas:empty_antique_atlas>, 1);
}