/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IItemStack;

static Renames as string[IItemStack] = {
	<primal_tech:wooden_hopper> : "Wooden Hopper",
	<primal_tech:charcoal_hopper> : "Heating Wooden Hopper",
	<primal_tech:work_stump> : "Crafting Stump",
	<primal_tech:work_stump_upgraded> : "Advanced Crafting Stump",
	<primal:salt_netjry_block> : "Salt Flat",
	<primalboat:primal_boat> : "Raft",
	<totemic:buffalo_items> : "Buffalo Pelt",
	<primal:bark_oak> : "Bark",
	<primal:barrel> : "Barrel",
	<primal:corn_ground> : "Corn Dough",
	<totemic:sub_items:1> : "Bells",
	<waterstrainer:strainer_survivalist_dense> : "Dense Survivalist's Strainer",
	<totemic:totem_torch> : "Primal Torch",
	<minecraft:dye:2> : "Green Dye",
	<minecraft:dye:1> : "Red Dye",
	<minecraft:dye:11> : "Yellow Dye",
	<projectred-transmission:wire> : "Red Alloy Redstone Wire",
	<projectred-transmission:framed_wire> : "Red Alloy Framed Redstone Wire",
	<primal_tech:work_stump_upgraded> : "Advanced Crafting Stump",
	<primal_tech:leaf_bed> : "Bed of Thatch",
	<betterwithmods:material:12> : "Poor Quality Glue",
	<betterwithmods:bamboo_chime> : "Redstone Wind Chime",
	<betterwithmods:saw> : "Mechanical Saw",
	<prospectors:prospector_high> : "Advanced Ore Prospector",
	<gregtech:meta_stick:32002> : "Wyrmwood Stick",
	<gregtech:meta_plate:32002> : "Wyrmwood Plank",
	<primal:flint_shovel> : "Primal Flint Shovel",
	<primal:flint_pickaxe> : "Primal Flint Pickaxe",
	<primal:flint_axe> : "Primal Flint Axe",
	<gregtech:machine:1647> : "Work Table",
	<forestry:scoop> : "Primitive Scoop",
	<galacticraftcore:item_basic_moon:2> : "Lunarite",
	<gregtech:meta_item_1:504> : "Terminal Camera",
	<galacticraftcore:item_basic_moon:2> : "Lunarite",
	<actuallyadditions:item_food:15> : "Thin Baguette",
	<avaritia:resource:2> : "Tiny Pile of Neutronite",
	<avaritia:resource:3> : "Neutronite Nugget",
	<avaritia:resource:4> : "Neutronite Ingot",
	<avaritia:block_resource> : "Block of Neutronite",
	<extrautils2:ingredients:17> : "Evil Infused Metal Ingot",
	<extrautils2:simpledecorative:2> : "Block of Evil Infused Metal"
};

function init() as void {
	for key, value in Renames {
		key.displayName = value;
	}

	<gagtweaks:filtered_grout>.addTooltip("I am mini Grout!");
	<gagtweaks:compressed_grout>.addTooltip("I am compressed Grout!");
	<minecraft:furnace>.addTooltip("For smelting ores, use either Tinker's Smeltery or electric Arc Furnace");
	<forestry:peat>.addTooltip("To get this, place bog earth close to water, wait some time and break it.");
	<usefulbackpacks:backpack:1>.addTooltip("! REMOVE ALL ITEMS FROM SMALL BACKPACK BEFORE CRAFTING MEDIUM FROM IT !");
	<usefulbackpacks:backpack:2>.addTooltip("! REMOVE ALL ITEMS FROM SMALL BACKPACK BEFORE CRAFTING LARGE FROM IT !");
}