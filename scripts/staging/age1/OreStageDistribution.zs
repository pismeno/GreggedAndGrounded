#priority 10

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;

val SetStageTwo = [
<gregtech:ore_malachite_0>,
<gregtech:ore_chalcopyrite_0>,
<gregtech:ore_copper_0>,
<gregtech:ore_tin_0>,
<gregtech:ore_cassiterite_sand_0>,
<gregtech:ore_cassiterite_0>,
<gregtech:ore_tetrahedrite_0>,
<gregtech:ore_chalcocite_0>
] as IIngredient[];

val SetStageTwoSand = [
<gregtech:ore_malachite_0:3>,
<gregtech:ore_chalcopyrite_0:3>,
<gregtech:ore_copper_0:3>,
<gregtech:ore_tin_0:3>,
<gregtech:ore_cassiterite_sand_0:3>,
<gregtech:ore_cassiterite_0:3>,
<gregtech:ore_tetrahedrite_0:3>,
<gregtech:ore_chalcocite_0:3>
] as IIngredient[];

val SetStageTwoRedSand = [
<gregtech:ore_malachite_0:4>,
<gregtech:ore_chalcopyrite_0:4>,
<gregtech:ore_copper_0:4>,
<gregtech:ore_tin_0:4>,
<gregtech:ore_cassiterite_sand_0:4>,
<gregtech:ore_cassiterite_0:4>,
<gregtech:ore_tetrahedrite_0:4>,
<gregtech:ore_chalcocite_0:4>
] as IIngredient[];

val SetStageTwoGranite = [
<gregtech:ore_malachite_0:5>,
<gregtech:ore_chalcopyrite_0:5>,
<gregtech:ore_copper_0:5>,
<gregtech:ore_tin_0:5>,
<gregtech:ore_cassiterite_sand_0:5>,
<gregtech:ore_cassiterite_0:5>,
<gregtech:ore_tetrahedrite_0:5>,
<gregtech:ore_chalcocite_0:5>
] as IIngredient[];


val SetStageTwoDiorite = [
<gregtech:ore_malachite_0:6>,
<gregtech:ore_chalcopyrite_0:6>,
<gregtech:ore_copper_0:6>,
<gregtech:ore_tin_0:6>,
<gregtech:ore_cassiterite_sand_0:6>,
<gregtech:ore_cassiterite_0:6>,
<gregtech:ore_tetrahedrite_0:6>,
<gregtech:ore_chalcocite_0:6>
] as IIngredient[];

val SetStageTwoAndesite = [
<gregtech:ore_malachite_0:9>,
<gregtech:ore_chalcopyrite_0:7>,
<gregtech:ore_copper_0:7>,
<gregtech:ore_tin_0:7>,
<gregtech:ore_cassiterite_sand_0:7>,
<gregtech:ore_cassiterite_0:7>,
<gregtech:ore_tetrahedrite_0:7>,
<gregtech:ore_chalcocite_0:7>
] as IIngredient[];

val SetStageTwoBlackGranite = [
<gregtech:ore_malachite_0:8>,
<gregtech:ore_chalcopyrite_0:8>,
<gregtech:ore_copper_0:8>,
<gregtech:ore_tin_0:8>,
<gregtech:ore_cassiterite_sand_0:8>,
<gregtech:ore_cassiterite_0:8>,
<gregtech:ore_tetrahedrite_0:8>,
<gregtech:ore_chalcocite_0:8>
] as IIngredient[];

val SetStageTwoRedGranite = [
<gregtech:ore_malachite_0:9>,
<gregtech:ore_chalcopyrite_0:9>,
<gregtech:ore_copper_0:9>,
<gregtech:ore_tin_0:9>,
<gregtech:ore_cassiterite_sand_0:9>,
<gregtech:ore_cassiterite_0:9>,
<gregtech:ore_tetrahedrite_0:9>,
<gregtech:ore_chalcocite_0:9>
] as IIngredient[];

val SetStageTwoMarble = [
<gregtech:ore_malachite_0:10>,
<gregtech:ore_chalcopyrite_0:10>,
<gregtech:ore_copper_0:10>,
<gregtech:ore_tin_0:10>,
<gregtech:ore_cassiterite_sand_0:10>,
<gregtech:ore_cassiterite_0:10>,
<gregtech:ore_tetrahedrite_0:10>,
<gregtech:ore_chalcocite_0:10>
] as IIngredient[];

val SetStageTwoBasalt = [
<gregtech:ore_malachite_0:11>,
<gregtech:ore_chalcopyrite_0:11>,
<gregtech:ore_copper_0:11>,
<gregtech:ore_tin_0:11>,
<gregtech:ore_cassiterite_sand_0:11>,
<gregtech:ore_cassiterite_0:11>,
<gregtech:ore_tetrahedrite_0:11>,
<gregtech:ore_chalcocite_0:11>
] as IIngredient[];


for block in SetStageTwo{
    mods.orestages.OreStages.addReplacement("one", block);
}

for block in SetStageTwoDiorite{
    mods.orestages.OreStages.addReplacement("one", block, <minecraft:stone:3>);
}

for block in SetStageTwoGranite{
    mods.orestages.OreStages.addReplacement("one", block, <minecraft:stone:1>);
}

for block in SetStageTwoAndesite{
    mods.orestages.OreStages.addReplacement("one", block, <minecraft:stone:5>);
}

for block in SetStageTwoSand{
    mods.orestages.OreStages.addReplacement("one", block, <minecraft:sandstone>);
}

for block in SetStageTwoRedSand{
    mods.orestages.OreStages.addReplacement("one", block, <minecraft:red_sandstone>);
}

for block in SetStageTwoRedGranite{
    mods.orestages.OreStages.addReplacement("one", block, <gregtech:stone_smooth:1>);
}

for block in SetStageTwoBlackGranite{
    mods.orestages.OreStages.addReplacement("one", block, <gregtech:stone_smooth>);
}

for block in SetStageTwoMarble{
    mods.orestages.OreStages.addReplacement("one", block, <gregtech:stone_smooth:2>);
}

for block in SetStageTwoBasalt{
    mods.orestages.OreStages.addReplacement("one", block, <gregtech:stone_smooth:3>);
}

mods.orestages.OreStages.addReplacement("one", <minecraft:redstone_torch>, <minecraft:torch>);
mods.orestages.OreStages.addReplacement("one", <minecraft:tnt>, <minecraft:cobblestone>);