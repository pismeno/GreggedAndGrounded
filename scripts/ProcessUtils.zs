#priority 100000000000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.zenstages.Stage;
import mods.recipestages.Recipes;
import mods.ItemStages;

static unnamedRecipesCount as int = 0;

function processRecipesShaped(recipes as IIngredient[][][][IItemStack], stage as Stage) as void {
	var number = 0;
	for output, recipeSet in recipes {
		for recipe in recipeSet {
			Recipes.addShaped(generateRecipeName(stage, output, number), stage.stage, output, recipe);
			number = number + 1;
		}
	number = 0;
	}
}

function processRecipesMirrored(recipes as IIngredient[][][][IItemStack], stage as Stage) as void {
	var number = 0;
	for output, recipeSet in recipes {
		for recipe in recipeSet {
			Recipes.addShapedMirrored(generateRecipeName(stage, output, number), stage.stage, output, recipe);
			number = number + 1;
		}
	number = 0;
	}
}

function processRecipesShapeless(recipes as IIngredient[][][IItemStack], stage as Stage) as void {
	var number = 0;
	for output, recipeSet in recipes {
		for recipe in recipeSet {
			Recipes.addShapeless(generateRecipeName(stage, output, number), stage.stage, output, recipe);
			number = number + 1;
		}
	number = 0;
	}
}

function processIngredientStaging(ingredients as IIngredient[], stage as Stage) as void {
	for ingredient in ingredients {
		ItemStages.removeItemStage(ingredient);
	}
	stage.addIngredients(ingredients, true);
}

function addHoeRecipe(stage as Stage, ingot as IItemStack, plate as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
		[plate,ingot,<ore:craftingToolHardHammer>],
		[<ore:craftingToolFile>,<ore:stickWood>,null],
		[null,<ore:stickWood>,null]
	]);
}

function addSawRecipe(stage as Stage, ingot as IItemStack, plate as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
		[plate,plate,<ore:stickWood>],
		[<ore:craftingToolFile>,<ore:craftingToolHardHammer>,<ore:stickWood>]
	]);
}

function addWrenchRecipe(stage as Stage, ingot as IItemStack, plate as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
		[plate,<ore:craftingToolHardHammer>,plate],
		[null,plate,null],
		[null,plate,null]
	]);
}

function addFileRecipe(stage as Stage, ingot as IItemStack, plate as IItemStack, output as IItemStack) as void {
	Recipes.addShaped(stage.stage, output,[
		[plate],
		[plate],
		[<ore:stickWood>]
	]);
}

function addKnifeRecipe(stage as Stage, ingot as IItemStack, plate as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
		[<ore:craftingToolFile>,plate,<ore:craftingToolHardHammer>],
		[null,<ore:stickWood>,null]
	]);
}

function addScrewdriverRecipe(stage as Stage, rod as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
		[null,<ore:craftingToolFile>,rod],
		[null,rod,<ore:craftingToolHardHammer>],
		[<ore:stickWood>,null,null]
	]);
}

function addWirecutterRecipe(stage as Stage, rod as IItemStack, plate as IItemStack, screw as IItemStack, output as IItemStack) as void {
	Recipes.addShapedMirrored(stage.stage, output, [
			[plate,<ore:craftingToolFile>,plate],
			[<ore:craftingToolHardHammer>,plate,<ore:craftingToolScrewdriver>],
			[rod,screw,rod]
		]);
}

function addAllToolsRecipes(stage as Stage, metaNumber as int, pickaxe as IItemStack, shovel as IItemStack, axe as IItemStack, 
              hoe as IItemStack, saw as IItemStack, wrench as IItemStack, file as IItemStack, screwdriver as IItemStack, knife as IItemStack, wirecutter as IItemStack) as void {
  var ingot = <gregtech:meta_ingot>.definition.makeStack(metaNumber);
  var stick = <gregtech:meta_stick>.definition.makeStack(metaNumber);
  var plate = <gregtech:meta_plate>.definition.makeStack(metaNumber);
  var screw = <gregtech:meta_screw>.definition.makeStack(metaNumber);

  addHoeRecipe(stage, ingot, plate, hoe);
  addSawRecipe(stage, ingot, plate, saw);
  addWrenchRecipe(stage, ingot, plate, wrench);
  addScrewdriverRecipe(stage, stick, screwdriver);
  addKnifeRecipe(stage, ingot, plate, knife);
  addFileRecipe(stage, ingot, plate, file);
  addWirecutterRecipe(stage, stick, plate, screw, wirecutter);
}

function generateRecipeName(stage as Stage, output as IItemStack, number as int) as string {
	var name = "";
	if (output.name == "unnamed") {
		name = "unnamed_" + unnamedRecipesCount;
		unnamedRecipesCount = unnamedRecipesCount + 1;
	} else {
		name = output.name + "_" + output.amount + "_stage_" + stage.stage as string + "_" + number;
		name = name.replace(":", "_");
	}

	return name;
}