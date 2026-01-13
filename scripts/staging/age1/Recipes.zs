#priority 0

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.recipestages.Recipes;

val stage = "one";

furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}), 6400);

Recipes.addShaped("MillStone", stage, <betterwithmods:single_machine>,[
[<minecraft:stone>,<gregtech:meta_gear:1617>,<minecraft:stone>],
[<minecraft:stone>,<horsepower:hand_grindstone>,<minecraft:stone>],
[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]]);

Recipes.addShapedMirrored("FlintHoe", stage, <gregtech:hoe>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 63, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:flint", AttackSpeed: -1.0 as float}}),
 [[<minecraft:flint>,<minecraft:flint>,null],
  [null,<ore:stickWood>,null],
  [null,<ore:stickWood>,null]]);

Recipes.addShapedMirrored("Prospector", stage, <prospectors:prospector_med>,
 [[null,<gregtech:meta_stick:1648>,<betterwithmods:material:12>],
  [<ore:craftingToolSoftHammer>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>],
  [<gregtech:meta_stick:1648>,<ore:craftingToolKnife>,null]]);

Recipes.addShaped("CokeOven", stage, <gregtech:machine:1017>,[
[<gregtech:metal_casing:8>,<gregtech:meta_item_1:353>,<gregtech:metal_casing:8>],
[<gregtech:meta_item_1:353>,<minecraft:furnace>,<gregtech:meta_item_1:353>],
[<gregtech:metal_casing:8>,<gregtech:meta_item_1:353>,<gregtech:metal_casing:8>]]);

Recipes.addShaped("WetThatch", stage, <primal:thatch_wet>,[
[<primal:thatching_wet>,<primal:thatching_wet>,<primal:thatching_wet>],
[<primal:thatching_wet>,<betterwithmods:rope>,<primal:thatching_wet>],
[<primal:thatching_wet>,<primal:thatching_wet>,<primal:thatching_wet>]]);

Recipes.addShaped("DryThatch", stage, <primal:thatch>,[
[<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
[<primal:thatching_dry>,<betterwithmods:rope>,<primal:thatching_dry>],
[<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>]]);

Recipes.addShaped("Bellows", stage, <betterwithmods:bellows>,[
[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
[<ore:leather>,<ore:leather>,<ore:leather>],
[<ore:slabWood>,<gregtech:meta_gear:1617>,<ore:slabWood>]]);

Recipes.addShaped("ThatchBed", stage, <primal_tech:leaf_bed>,[
[<primal:thatch>,<primal:thatch>,<primal:thatch>],
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);

Recipes.addShaped("Cauldron", stage, <betterwithmods:cooking_pot:1>,[
[<minecraft:stone>,null,<minecraft:stone>],
[<minecraft:stone>,null,<minecraft:stone>],
[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]]);

Recipes.addShaped("Hibachi", stage, <betterwithmods:hibachi>,[
[<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
[<minecraft:stone>,<primal:plant_cloth>,<minecraft:stone>],
[<minecraft:stone>,<primal_tech:fire_sticks>,<minecraft:stone>]]);

Recipes.addShaped("WindSail", stage, <betterwithmods:material:11>,[
[<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
[<primal:thatching_dry>,<primal:thatching_dry>,<primal:thatching_dry>],
[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]]);

Recipes.addShaped("WindMill", stage, <betterwithmods:axle_generator>,[
[null,<betterwithmods:material:11>,null],
[<betterwithmods:material:11>,<gregtech:meta_gear:1617>,<betterwithmods:material:11>],
[null,<betterwithmods:material:11>,null]]);

Recipes.addShapedMirrored("Axle", stage, <betterwithmods:wooden_axle>,[
[null,<ore:plankWood>,<ore:craftingToolSoftHammer>],
[<betterwithmods:rope>,<gregtech:meta_gear:1617>,<betterwithmods:rope>],
[null,<ore:plankWood>,null]]);

Recipes.addShapedMirrored("Axle2", stage, <betterwithmods:wooden_axle>,[
[null,<ore:plankWood>,null],
[<betterwithmods:rope>,<gregtech:meta_gear:1617>,<betterwithmods:rope>],
[null,<ore:plankWood>,<ore:craftingToolSoftHammer>]]);

Recipes.addShaped("TreatedWood", stage, <gregtech:planks:1> * 8,[
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
[<ore:plankWood>,<ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>),<ore:plankWood>],
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);

Recipes.addShaped("BogEarth", stage, <forestry:bog_earth>,[
[<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>],
[<ore:pileSand>,<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>),<ore:pileSand>],
[<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>]]);

Recipes.addShapedMirrored("WoodBlade", stage, <betterwithmods:material:10>,[
[<gregtech:planks:1>,<ore:craftingToolSoftHammer>,null],
[<gregtech:planks:1>,<betterwithmods:material:12>,<gregtech:planks:1>],
[<gregtech:planks:1>,null,null]]);

Recipes.addShaped("WaterMill", stage, <betterwithmods:axle_generator:1>,[
[<betterwithmods:material:10>,<betterwithmods:material:10>,<betterwithmods:material:10>],
[<betterwithmods:material:10>,<gregtech:meta_gear:1617>,<betterwithmods:material:10>],
[<betterwithmods:material:10>,<betterwithmods:material:10>,<betterwithmods:material:10>]]);

Recipes.addShaped("WoodenGearAgeOne", stage, <gregtech:meta_gear:1617>,[
[<gregtech:meta_stick:1648>,<gregtech:planks:1>,<gregtech:meta_stick:1648>],
[<gregtech:planks:1>,<ore:craftingToolSoftHammer>,<gregtech:planks:1>],
[<gregtech:meta_stick:1648>,<gregtech:planks:1>,<gregtech:meta_stick:1648>]]);

Recipes.addShaped("WoodenHopperAgeOne", stage, <primal_tech:wooden_hopper>,[
[<primal:bark_oak>,<ore:craftingToolSoftHammer>,<primal:bark_oak>],
[<primal:bark_oak>,<ore:chestWood>,<primal:bark_oak>],
[null,<primal:bark_oak>,null]]);

Recipes.addShaped("WoodenHopperAgeOneTreated", stage, <primal_tech:wooden_hopper> * 2,[
[<gregtech:planks:1>,<ore:craftingToolSoftHammer>,<gregtech:planks:1>],
[<gregtech:planks:1>,<ore:chestWood>,<gregtech:planks:1>],
[null,<gregtech:planks:1>,null]]);

Recipes.addShaped("Gearbox", stage, <betterwithmods:wooden_gearbox>,[
[<gregtech:meta_gear:1617>,<ore:plankWood>,<gregtech:meta_gear:1617>],
[<ore:plankWood>,<betterwithmods:wooden_axle>,<ore:plankWood>],
[<gregtech:meta_gear:1617>,<ore:plankWood>,<gregtech:meta_gear:1617>]]);

Recipes.addShaped("RedstoneChime", stage, <betterwithmods:bamboo_chime>,[
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
[<betterwithmods:rope>,<minecraft:lever>,<betterwithmods:rope>],
[<minecraft:reeds>,<betterwithmods:rope>,<minecraft:reeds>]]);

Recipes.addShaped("LeatherBelt", stage, <betterwithmods:material:9>,[
[<betterwithmods:material:12>,<ore:leather>,<betterwithmods:material:12>],
[<ore:leather>,null,<ore:leather>],
[<betterwithmods:material:12>,<ore:leather>,<betterwithmods:material:12>]]);

Recipes.addShaped("Grout", stage, <tconstruct:soil> * 4,[
[<minecraft:gravel>,<minecraft:clay_ball>,<minecraft:gravel>],
[<minecraft:clay_ball>,<gregtech:meta_dust:266>,<minecraft:clay_ball>],
[<minecraft:gravel>,<minecraft:clay_ball>,<minecraft:gravel>]]);

Recipes.addShaped("FilterHopper", stage, <betterwithmods:single_machine:2>,[
[<gregtech:planks:1>,null,<gregtech:planks:1>],
[<gregtech:meta_gear:1617>,<primal_tech:wooden_hopper>,<gregtech:meta_gear:1617>],
[<gregtech:planks:1>,<gregtech:planks:1>,<gregtech:planks:1>]]);

Recipes.addShaped("Wicker", stage, <betterwithmods:wicker>,[
[null,<ore:craftingToolKnife>,null],
[<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
[<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>]]);

Recipes.addShaped("Saw", stage, <betterwithmods:saw>,[
[<primal:flint_point>,<primal:flint_point>,<primal:flint_point>],
[<gregtech:meta_gear:1617>,<betterwithmods:material:9>,<gregtech:meta_gear:1617>],
[<ore:plankWood>,<gregtech:meta_gear:1617>,<ore:plankWood>]]);

Recipes.addShaped("SearedTank", stage, <tconstruct:seared_tank>,[
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
[<tconstruct:materials>,null,<tconstruct:materials>],
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]]);

Recipes.addShaped("SearedSmelteryController", stage, <tconstruct:smeltery_controller>,[
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
[<tconstruct:materials>,<ore:craftingToolSoftHammer>,<tconstruct:materials>],
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]]);

Recipes.addShapedMirrored("Canvas", stage, <galacticraftcore:canvas>,[
[<betterwithmods:material:4>,<betterwithmods:material:4>,<ore:stickWood>],
[<betterwithmods:material:4>,<betterwithmods:material:4>,<betterwithmods:material:4>],
[<ore:stickWood>,<betterwithmods:material:4>,<betterwithmods:material:4>]]);

Recipes.addShaped("Apiary", stage, <forestry:apiary>,[
[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
[<ore:plankWood>,<ore:craftingToolSoftHammer>,<ore:plankWood>],
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);

Recipes.addShaped("BeeChest", stage, <forestry:bee_chest>,[
[<ore:beeComb>,<minecraft:chest>,<ore:beeComb>],
[<ore:beeComb>,<ore:beeComb>,<ore:beeComb>]]);

Recipes.addShaped("TreeChest", stage, <forestry:tree_chest>,[
[<ore:treeSapling>,<minecraft:chest>,<ore:treeSapling>],
[<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>]]);

Recipes.addShaped("ButterflyChest", stage, <forestry:butterfly_chest>,[
[<forestry:butterfly_ge>,<minecraft:chest>,<forestry:butterfly_ge>],
[<forestry:butterfly_ge>,<forestry:butterfly_ge>,<forestry:butterfly_ge>]]);

Recipes.addShapedMirrored("Scoop", stage, <forestry:scoop>,[
[<ore:stickWood>,<extraplanets:cloth>,<ore:stickWood>],
[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
[null,<ore:stickWood>,null]]);

Recipes.addShaped("WoolCloth", stage, <extraplanets:cloth>,[
[<ore:wool>,<ore:wool>],
[<ore:wool>,<ore:wool>],
[<ore:wool>,<ore:wool>]]);

Recipes.addShapedMirrored("WovenSilk", stage, <forestry:crafting_material:3>,[
[<forestry:crafting_material:2>,<forestry:crafting_material:2>,<forestry:crafting_material:2>],
[<forestry:crafting_material:2>,<forestry:crafting_material:2>,<forestry:crafting_material:2>]]);

Recipes.addShapedMirrored("PatternBlank", stage, <tconstruct:pattern>,[
[<ore:plankWood>,<ore:stickWood>],
[<ore:stickWood>,<ore:plankWood>]]);

Recipes.addShapeless("GuideTC", stage, <tconstruct:book>, [<primal:plant_papyrus>, <ore:leather>, <tconstruct:pattern>]);
Recipes.addShapeless("GuideFor", stage, <forestry:book_forester>, [<primal:plant_papyrus>, <ore:leather>, <ore:beeComb>]);
Recipes.addShapeless("SlimyMud1", stage, <tconstruct:soil:1>, [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <ore:sand>, <ore:dirt>]);
Recipes.addShapeless("SlimyMud2", stage, <tconstruct:soil:2>, [<tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>, <ore:sand>, <ore:dirt>]);

furnace.addRecipe(<tconstruct:materials>, <gagtweaks:compressed_grout>);