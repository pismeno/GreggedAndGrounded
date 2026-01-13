#priority -1

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.zenstages.ZenStager;

initOreDict();
initStaging();
initRecipes();
initLootTables();
initCosmetics();
ZenStager.buildAll();

function initOreDict() as void {
    scripts.unification.OreDict.init();
    scripts.unification.FlowerColorsOreDict.init();
    scripts.unification.OreDict.init();
}

function initStaging() as void {
    scripts.staging.ModStaging.init();
    scripts.unification.RemoveItems.init();

    scripts.staging.age6.ItemStageDistribution.init();
    scripts.staging.age5.ItemStageDistribution.init();
    scripts.staging.age4.ItemStageDistribution.init();
    scripts.staging.age3.ItemStageDistribution.init();
    scripts.staging.age2.ItemStageDistribution.init();
    scripts.staging.age1.ItemStageDistribution.init();
    scripts.staging.age0.ItemStageDistribution.init();

    scripts.staging.age2.OreStageDistribution.init();
    scripts.staging.age1.OreStageDistribution.init();
    scripts.staging.BlockHidings.init();

    scripts.staging.RecipeStaging.init();
    scripts.staging.DimensionStaging.init();
    scripts.staging.ContainerStaging.init();
    scripts.staging.JourneyMapStaging.init();
    scripts.staging.WailaStaging.init();
}

function initRecipes() as void {
    scripts.unification.RemoveRecipes.init();

    scripts.unification.PrimalCore.init();
    scripts.unification.Gregtech.init();
    scripts.unification.ActuallyAdditions.init();
    scripts.unification.BetterWithMods.init();
    scripts.unification.Galacticraft.init();
    scripts.unification.TinkersConstruct.init();
    scripts.unification.Avaritia.init();

    scripts.unification.Furnace.init();
    scripts.unification.Merchants.init();
    scripts.unification.LeatherProcessing.init();
    scripts.unification.Wood.init();
    scripts.unification.SeedDrops.init();

    scripts.staging.age0.Recipes.init();
    scripts.staging.age1.Recipes.init();
    scripts.staging.age2.Recipes.init();
    scripts.staging.age3.Recipes.init();
    scripts.staging.age4.Recipes.init();
    scripts.staging.age5.Recipes.init();
    scripts.staging.age6.Recipes.init();
}

function initCosmetics() as void {
    scripts.unification.JEIAdditions.init();
    scripts.unification.Renames.init();
}

function initLootTables() as void {
    scripts.loottables.overworld.Blacksmith.init();
    scripts.loottables.overworld.DesertPyramid.init();
    scripts.loottables.overworld.Igloo.init();
    scripts.loottables.overworld.JungleTemple.init();
    scripts.loottables.overworld.Mineshaft.init();
    scripts.loottables.overworld.SimpleDungeon.init();
    scripts.loottables.overworld.StrongholdCorridor.init();
    scripts.loottables.overworld.StrongholdCrossing.init();
    scripts.loottables.overworld.StrongholdLibrary.init();
    scripts.loottables.overworld.WoodlandMansion.init();

    scripts.loottables.nether.BaseArcticAbyss.init();
    scripts.loottables.nether.BaseRuthlessSand.init();
    scripts.loottables.nether.BaseTemple.init();
    scripts.loottables.nether.BaseVillage.init();
    scripts.loottables.nether.Fortress.init();

    scripts.loottables.end.EndCity.init();

    scripts.loottables.space.Jupiter.init();
    scripts.loottables.space.Mars.init();
    scripts.loottables.space.Mercury.init();
    scripts.loottables.space.Moon.init();
    scripts.loottables.space.Venus.init();
}