/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.orestages.OreStages;

import scripts.Stages.STAGE_ONE;

static BlockOreMap as IIngredient[][IItemStack] = {
    <minecraft:stone> : [
        <gregtech:ore_malachite_0>,
        <gregtech:ore_chalcopyrite_0>,
        <gregtech:ore_copper_0>,
        <gregtech:ore_tin_0>,
        <gregtech:ore_cassiterite_sand_0>,
        <gregtech:ore_cassiterite_0>,
        <gregtech:ore_tetrahedrite_0>,
        <gregtech:ore_chalcocite_0>
    ],

    <minecraft:stone:3> : [
        <gregtech:ore_malachite_0:3>,
        <gregtech:ore_chalcopyrite_0:3>,
        <gregtech:ore_copper_0:3>,
        <gregtech:ore_tin_0:3>,
        <gregtech:ore_cassiterite_sand_0:3>,
        <gregtech:ore_cassiterite_0:3>,
        <gregtech:ore_tetrahedrite_0:3>,
        <gregtech:ore_chalcocite_0:3>
    ],

    <minecraft:stone:1> : [
        <gregtech:ore_malachite_0:4>,
        <gregtech:ore_chalcopyrite_0:4>,
        <gregtech:ore_copper_0:4>,
        <gregtech:ore_tin_0:4>,
        <gregtech:ore_cassiterite_sand_0:4>,
        <gregtech:ore_cassiterite_0:4>,
        <gregtech:ore_tetrahedrite_0:4>,
        <gregtech:ore_chalcocite_0:4>
    ],

    <minecraft:stone:5> : [
        <gregtech:ore_malachite_0:5>,
        <gregtech:ore_chalcopyrite_0:5>,
        <gregtech:ore_copper_0:5>,
        <gregtech:ore_tin_0:5>,
        <gregtech:ore_cassiterite_sand_0:5>,
        <gregtech:ore_cassiterite_0:5>,
        <gregtech:ore_tetrahedrite_0:5>,
        <gregtech:ore_chalcocite_0:5>
    ],

    <minecraft:sandstone> : [
        <gregtech:ore_malachite_0:6>,
        <gregtech:ore_chalcopyrite_0:6>,
        <gregtech:ore_copper_0:6>,
        <gregtech:ore_tin_0:6>,
        <gregtech:ore_cassiterite_sand_0:6>,
        <gregtech:ore_cassiterite_0:6>,
        <gregtech:ore_tetrahedrite_0:6>,
        <gregtech:ore_chalcocite_0:6>
    ],

    <minecraft:red_sandstone> : [
        <gregtech:ore_malachite_0:9>,
        <gregtech:ore_chalcopyrite_0:7>,
        <gregtech:ore_copper_0:7>,
        <gregtech:ore_tin_0:7>,
        <gregtech:ore_cassiterite_sand_0:7>,
        <gregtech:ore_cassiterite_0:7>,
        <gregtech:ore_tetrahedrite_0:7>,
        <gregtech:ore_chalcocite_0:7>
    ],

    <gregtech:stone_smooth:1> : [
        <gregtech:ore_malachite_0:8>,
        <gregtech:ore_chalcopyrite_0:8>,
        <gregtech:ore_copper_0:8>,
        <gregtech:ore_tin_0:8>,
        <gregtech:ore_cassiterite_sand_0:8>,
        <gregtech:ore_cassiterite_0:8>,
        <gregtech:ore_tetrahedrite_0:8>,
        <gregtech:ore_chalcocite_0:8>
    ],

    <gregtech:stone_smooth> : [
        <gregtech:ore_malachite_0:9>,
        <gregtech:ore_chalcopyrite_0:9>,
        <gregtech:ore_copper_0:9>,
        <gregtech:ore_tin_0:9>,
        <gregtech:ore_cassiterite_sand_0:9>,
        <gregtech:ore_cassiterite_0:9>,
        <gregtech:ore_tetrahedrite_0:9>,
        <gregtech:ore_chalcocite_0:9>
    ],

    <gregtech:stone_smooth:2> : [
        <gregtech:ore_malachite_0:10>,
        <gregtech:ore_chalcopyrite_0:10>,
        <gregtech:ore_copper_0:10>,
        <gregtech:ore_tin_0:10>,
        <gregtech:ore_cassiterite_sand_0:10>,
        <gregtech:ore_cassiterite_0:10>,
        <gregtech:ore_tetrahedrite_0:10>,
        <gregtech:ore_chalcocite_0:10>
    ],

    <gregtech:stone_smooth:3> : [
        <gregtech:ore_malachite_0:11>,
        <gregtech:ore_chalcopyrite_0:11>,
        <gregtech:ore_copper_0:11>,
        <gregtech:ore_tin_0:11>,
        <gregtech:ore_cassiterite_sand_0:11>,
        <gregtech:ore_cassiterite_0:11>,
        <gregtech:ore_tetrahedrite_0:11>,
        <gregtech:ore_chalcocite_0:11>
    ]
};

function init() as void {
    for block, ores in BlockOreMap {
        for ore in ores {
            OreStages.addReplacement(STAGE_ONE.stage, ore, block);
        }
    }

    OreStages.addReplacement(STAGE_ONE.stage, <minecraft:redstone_torch>, <minecraft:torch>);
    OreStages.addReplacement(STAGE_ONE.stage, <minecraft:tnt>, <minecraft:cobblestone>);
}