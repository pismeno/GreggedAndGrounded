/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.WeightedItemStack;

static addSeeds as WeightedItemStack[] = [
<minecraft:wheat_seeds> % 20,
<minecraft:pumpkin_seeds> % 10,
<minecraft:melon_seeds> % 10,
<minecraft:beetroot_seeds> % 10,
<betterwithmods:hemp> % 15,
<plants2:okra_seeds> % 10,
<plants2:amaranthus_h_seeds> % 10,
<plants2:pineapple_seeds> % 10,
<primal:yew_seed> % 10,
<primal:tall_grass_seeds> % 10,
<minecraft:carrot> % 5,
<minecraft:potato> % 5
];

function init() as void {
    vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);
    vanilla.seeds.removeSeed(<betterwithmods:hemp>);

    for seed in addSeeds {
        vanilla.seeds.addSeed(seed);
    }
}