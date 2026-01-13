#priority 0

/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

val stage = "two";

function addHoe(ingot as IItemStack, plate as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[plate,ingot,<ore:craftingToolHardHammer>],
[<ore:craftingToolFile>,<ore:stickWood>,null],
[null,<ore:stickWood>,null]]);
}

function addSaw(ingot as IItemStack, plate as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[plate,plate,<ore:stickWood>],
[<ore:craftingToolFile>,<ore:craftingToolHardHammer>,<ore:stickWood>]]);
}

function addWrench(ingot as IItemStack, plate as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[plate,<ore:craftingToolHardHammer>,plate],
[null,plate,null],
[null,plate,null]]);
}

function addFile(ingot as IItemStack, plate as IItemStack, result as IItemStack){
Recipes.addShaped("two", result,[
[plate],
[plate],
[<ore:stickWood>]]);
}

function addKnife(ingot as IItemStack, plate as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[<ore:craftingToolFile>,plate,<ore:craftingToolHardHammer>],
[null,<ore:stickWood>,null]]);
}

function addScrewdriver(rod as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[null,<ore:craftingToolFile>,rod],
[null,rod,<ore:craftingToolHardHammer>],
[<ore:stickWood>,null,null]]);
}

function addWirecutter(rod as IItemStack, plate as IItemStack, screw as IItemStack, result as IItemStack){
Recipes.addShapedMirrored("two", result,[
[plate,<ore:craftingToolFile>,plate],
[<ore:craftingToolHardHammer>,plate,<ore:craftingToolScrewdriver>],
[rod,screw,rod]]);
}

function addAll(metaNumber as int, pickaxe as IItemStack, shovel as IItemStack, axe as IItemStack, 
              hoe as IItemStack, saw as IItemStack, wrench as IItemStack, file as IItemStack, screwdriver as IItemStack, knife as IItemStack, wirecutter as IItemStack){
  var ingot = <gregtech:meta_ingot>.definition.makeStack(metaNumber);
  var stick = <gregtech:meta_stick>.definition.makeStack(metaNumber);
  var plate = <gregtech:meta_plate>.definition.makeStack(metaNumber);
  var screw = <gregtech:meta_screw>.definition.makeStack(metaNumber);

  addHoe(ingot, plate, hoe);
  addSaw(ingot, plate, saw);
  addWrench(ingot, plate, wrench);
  addScrewdriver(stick, screwdriver);
  addKnife(ingot, plate, knife);
  addFile(ingot, plate, file);
  addWirecutter(stick, plate, screw, wirecutter);
}

val hammerIngredients = [
  [<gregtech:meta_ingot:260>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float
        }
    })],

    [<gregtech:meta_ingot:324>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, 
            Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float
        }
    })],

    [<gregtech:meta_ingot:335>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float
        }
    })],

        [<gregtech:meta_ingot:23>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 930, ToolSpeed: 12.0 as float, AttackDamage: 4.1 as float, 
            Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float
        }
    })],

    [<minecraft:iron_ingot>, <gregtech:hammer>.withTag({
        DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, 
            Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.8 as float
        }
    })],

    [<minecraft:diamond>, <gregtech:hammer>.withTag({
        "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {
            MaxDurability: 768, ToolSpeed: 10.0 as float, AttackDamage: 8.0 as float, 
            Durability: 0, Material: "gregtech:diamond", HarvestLevel: 3, AttackSpeed: -2.7 as float
        }
    })]
] as IItemStack[][];

for i in hammerIngredients {
    Recipes.addShapedMirrored(stage, i[1],[
      [i[0],i[0],null],
      [i[0],i[0],<ore:stickWood>],
      [i[0],i[0],null]]);
}

addAll(260, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
            <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
            <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 5.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
            <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -1.0 as float}}),
            <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.6 as float}}),
            <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
            <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: -2.4 as float}}),
            <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: 3.0 as float}}),
            <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:bronze", AttackSpeed: 3.0 as float}}),
            <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 192, ToolSpeed: 7.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:bronze", HarvestLevel: 2, AttackSpeed: -2.4 as float}}));

addAll(324, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float}}),
            <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.5 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -3.0 as float}}),
            <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 7.0 as float, AttackDamage: 8.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -3.2 as float}}),
            <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -1.0 as float}}),
            <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -2.6 as float}}),
            <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 4.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.8 as float}}),
            <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: -2.4 as float}}),
            <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: 3.0 as float}}),
            <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:steel", AttackSpeed: 3.0 as float}}),
            <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 512, ToolSpeed: 9.0 as float, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:steel", HarvestLevel: 3, AttackSpeed: -2.4 as float}}));

addAll(335, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
            <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
            <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 4.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.4 as float}}),
            <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: -1.2 as float}}),
            <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
            <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
            <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: -2.6000001 as float}}),
            <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: 2.8 as float}}),
            <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:wrought_iron", AttackSpeed: 2.8 as float}}),
            <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 384, ToolSpeed: 6.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:wrought_iron", HarvestLevel: 2, AttackSpeed: -2.6000001 as float}}));

addAll(23, <gregtech:pickaxe>.withTag({"GT.Behaviours": {TorchPlacing: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
            <gregtech:shovel>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.5 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.2 as float}}),
            <gregtech:axe>.withTag({"GT.Behaviours": {DisableShields: 1 as byte, TreeFelling: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 8.0 as float, AttackDamage: 7.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.4 as float}}),
            <gregtech:hoe>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: -1.2 as float}}),
            <gregtech:saw>.withTag({"GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -2.8 as float}}),
            <gregtech:wrench>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -3.0 as float}}),
            <gregtech:file>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: -2.6000001 as float}}),
            <gregtech:screwdriver>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: 2.8 as float}}),
            <gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:cobalt", AttackSpeed: 2.8 as float}}),
            <gregtech:wire_cutter>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 1200, ToolSpeed: 12.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:cobalt", HarvestLevel: 2, AttackSpeed: -2.6000001 as float}}));

addHoe(<minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:hoe>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 0.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: -1.0 as float}}));
addSaw(<minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:saw>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {HarvestIce: 1 as byte}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: -2.6 as float}}));
addWrench(<minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:wrench>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 3.0 as float, Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.8 as float}}));
addScrewdriver(<gregtech:meta_stick:51>, <gregtech:screwdriver>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: 3.0 as float}}));
addKnife(<minecraft:iron_ingot>, <gregtech:meta_plate:51>, <gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, AttackDamage: 2.0 as float, Durability: 0, Material: "gregtech:iron", AttackSpeed: 3.0 as float}}));
addWirecutter(<gregtech:meta_stick:51>, <gregtech:meta_plate:51>, <gregtech:meta_screw:51>, <gregtech:wire_cutter>.withTag({DisallowContainerItem: 0 as byte, "GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {MaxDurability: 255, ToolSpeed: 6.0 as float, AttackDamage: 1.0 as float, Durability: 0, Material: "gregtech:iron", HarvestLevel: 2, AttackSpeed: -2.4 as float}}));

Recipes.addShaped("Gapple", stage, <minecraft:golden_apple>,
 [[<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
  [<gregtech:meta_plate:41>,<minecraft:apple>,<gregtech:meta_plate:41>],
  [<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
  ]);

Recipes.addShaped("VacuumTube", stage, <gregtech:meta_item_1:516>,[
[null,<gagtweaks:blaze_chunk>,null],
[<gregtech:meta_bolt:324>,<gregtech:meta_item_1:517>,<gregtech:meta_bolt:324>],
[<gregtech:wire_single:25>,<gregtech:wire_single:25>,<gregtech:wire_single:25>]]);

Recipes.addShaped("Resistor", stage, <gregtech:meta_item_1:519> * 2,[
[<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
[<gregtech:wire_single:25>,<gregtech:meta_dust:271>,<gregtech:wire_single:25>],
[null,<minecraft:paper>,null]]);

Recipes.addShaped("Resistor2", stage, <gregtech:meta_item_1:519> * 2,[
[<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
[<gregtech:wire_single:25>,<gregtech:meta_dust:266>,<gregtech:wire_single:25>],
[null,<minecraft:paper>,null]]);

Recipes.addShaped("Resistor3", stage, <gregtech:meta_item_1:519> * 2,[
[<betterwithmods:material:12>,<minecraft:paper>,<betterwithmods:material:12>],
[<gregtech:wire_single:25>,<gregtech:meta_dust:18>,<gregtech:wire_single:25>],
[null,<minecraft:paper>,null]]);

Recipes.addShaped("Crate", stage, <gregtech:machine:1625>,[
[<gregtech:meta_screw:324>,<ore:plateWood>,<gregtech:meta_screw:324>],
[<ore:plateWood>,<ore:craftingToolSaw>,<ore:plateWood>],
[<gregtech:meta_screw:324>,<ore:plateWood>,<gregtech:meta_screw:324>]]);

Recipes.addShaped("BronzeSaw", stage, <gregtech:machine:11000>,[
[<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>],
[<minecraft:hopper>,<gregtech:steam_casing>,<gregtech:meta_tool_head_buzz_saw:260>],
[<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>,<gregtech:fluid_pipe_small:260>]]);

Recipes.addShaped("SteelSaw", stage, <gregtech:machine:11001>,[
[<gregtech:meta_plate:335>,<gregtech:meta_tool_head_buzz_saw:324>,<gregtech:meta_plate:335>],
[<gregtech:fluid_pipe_small:328>,<gregtech:machine:11000>,<gregtech:fluid_pipe_small:328>],
[<gregtech:meta_plate:335>,<gregtech:meta_plate:324>,<gregtech:meta_plate:335>]]);

Recipes.addShaped("BronzeBoiler", stage, <gregtech:machine:1>,[
[<gregtech:fluid_pipe_small:260>,<minecraft:furnace>,<gregtech:fluid_pipe_small:260>],
[<gregtech:fluid_pipe_small:260>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_small:260>],
[<gregtech:fluid_pipe_small:260>,<gregtech:steam_casing:1>,<gregtech:fluid_pipe_small:260>]]);

Recipes.addShaped("SteelBoiler", stage, <gregtech:machine:2>,[
[<gregtech:fluid_pipe_small:324>,<minecraft:furnace>,<gregtech:fluid_pipe_small:324>],
[<gregtech:fluid_pipe_small:324>,<ore:craftingToolWrench>,<gregtech:fluid_pipe_small:324>],
[<gregtech:fluid_pipe_small:324>,<gregtech:steam_casing:3>,<gregtech:fluid_pipe_small:324>]]);

Recipes.addShaped("CircuitBoard3", stage, <gregtech:meta_item_1:381> * 3,
 [[<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>],
  [<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>],
  [<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>,<gregtech:meta_item_1:438>]]);

  Recipes.addShaped("CircuitBoard3Glue", stage, <gregtech:meta_item_1:381> * 3,
 [[<betterwithmods:material:12>,<betterwithmods:material:12>,<betterwithmods:material:12>],
  [<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:1617>],
  [<betterwithmods:material:12>,<betterwithmods:material:12>,<betterwithmods:material:12>]]);

Recipes.addShapedMirrored("WateringCan", stage, <extrautils2:wateringcan:1000>,[
[<gregtech:meta_ring:51>,<gregtech:meta_stick:51>,<gregtech:meta_stick:51>],
[<gregtech:meta_plate:51>,<ore:craftingToolHardHammer>,<gregtech:meta_plate:51>],
[null,<gregtech:meta_plate:51>,null]]);

Recipes.addShapedMirrored("Firebricks", stage, <gregtech:metal_casing:1>,[
[null,<gregtech:meta_item_1:352>,<ore:craftingToolHardHammer>],
[<gregtech:meta_item_1:352>,<gregtech:meta_plate:1648>,<gregtech:meta_item_1:352>],
[null,<gregtech:meta_item_1:352>,null]]);


Recipes.addShapedMirrored("Firebricks2", stage, <gregtech:metal_casing:1>,[
[null,<gregtech:meta_item_1:352>,null],
[<gregtech:meta_item_1:352>,<gregtech:meta_plate:1648>,<gregtech:meta_item_1:352>],
[null,<gregtech:meta_item_1:352>,<ore:craftingToolHardHammer>]]);

Recipes.addShapedMirrored("AdvancedProspector", stage, <prospectors:prospector_high>,
 [[null,<gregtech:meta_stick:260>,<gregtech:meta_screw:260>],
  [<ore:craftingToolHardHammer>,<gregtech:meta_stick:260>,<gregtech:meta_stick:260>],
  [<gregtech:meta_stick:1648>,<ore:craftingToolFile>,null]]);

Recipes.addShapedMirrored("CircuitBoard", stage, <gregtech:meta_item_1:381>,
 [[<gregtech:meta_plate:1617>,<gregtech:meta_item_1:438>],
  [<gregtech:meta_item_1:438>,null]]);

Recipes.addShapedMirrored("CircuitBoardGlue", stage, <gregtech:meta_item_1:381>,
 [[<gregtech:meta_plate:1617>,<betterwithmods:material:12>],
  [<betterwithmods:material:12>,null]]);

Recipes.addShaped("BogEarthBucket", stage, <forestry:bog_earth>,[
[<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>],
[<ore:pileSand>,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),<ore:pileSand>],
[<ore:pileDirt>,<ore:pileSand>,<ore:pileDirt>]]);

Recipes.addShaped("Piston", stage, <minecraft:piston>,
 [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:cobblestone>,<gregtech:meta_plate:335>,<ore:cobblestone>],
  [<ore:cobblestone>,<gregtech:meta_plate:2517>,<ore:cobblestone>]]);

Recipes.addShaped("OvenSteam", stage, <gregtech:machine:1024>,
 [[<gregtech:metal_casing>,<gregtech:meta_gear:2037>,<gregtech:metal_casing>],
  [<gregtech:boiler_firebox_casing>,<gregtech:machine:15>,<gregtech:boiler_firebox_casing>],
  [<gregtech:metal_casing>,<gregtech:meta_gear:2037>,<gregtech:metal_casing>]]);

Recipes.addShaped("CopperChest", stage, <ironchest:iron_chest:3>,[
[<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>],
[<gregtech:meta_plate_double:25>,<minecraft:chest>,<gregtech:meta_plate_double:25>],
[<gregtech:meta_plate:25>,<gregtech:meta_plate_double:25>,<gregtech:meta_plate:25>]]);

Recipes.addShaped("IronChest", stage, <ironchest:iron_chest>,[
[<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>],
[<gregtech:meta_plate:335>,<minecraft:chest>,<gregtech:meta_plate:335>],
[<gregtech:meta_plate:51>,<gregtech:meta_plate:335>,<gregtech:meta_plate:51>]]);

Recipes.addShaped("SilverChest", stage, <ironchest:iron_chest:4>,[
[<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>],
[<gregtech:meta_plate_double:100>,<minecraft:chest>,<gregtech:meta_plate_double:100>],
[<gregtech:meta_plate:100>,<gregtech:meta_plate_double:100>,<gregtech:meta_plate:100>]]);

Recipes.addShaped("GoldenChest", stage, <ironchest:iron_chest:1>,[
[<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>],
[<gregtech:meta_plate_double:41>,<minecraft:chest>,<gregtech:meta_plate_double:41>],
[<gregtech:meta_plate:41>,<gregtech:meta_plate_double:41>,<gregtech:meta_plate:41>]]);

Recipes.addShaped("LargishChest", stage, <extrautils2:largishchest>,[
[<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>],
[<gregtech:meta_screw:1617>,<minecraft:chest>,<gregtech:meta_screw:1617>],
[<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>,<gregtech:meta_screw:1617>]]);

Recipes.addShaped("Upg1", stage, <ironchest:copper_silver_chest_upgrade>,[
[<gregtech:meta_plate:100>,<gregtech:meta_plate:100>,<gregtech:meta_plate:100>],
[<gregtech:meta_plate:100>,<gregtech:meta_plate:25>,<gregtech:meta_plate:100>],
[<gregtech:meta_plate:100>,<gregtech:meta_plate:100>,<gregtech:meta_plate:100>]]);

Recipes.addShaped("Upg2", stage, <ironchest:silver_gold_chest_upgrade>,[
[<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
[<gregtech:meta_plate:41>,<gregtech:meta_plate:100>,<gregtech:meta_plate:41>],
[<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>]]);

Recipes.addShaped("Upg3", stage, <ironchest:iron_gold_chest_upgrade>,[
[<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>],
[<gregtech:meta_plate:41>,<gregtech:meta_plate:51>,<gregtech:meta_plate:41>],
[<gregtech:meta_plate:41>,<gregtech:meta_plate:41>,<gregtech:meta_plate:41>]]);

Recipes.addShaped("Upg4", stage, <ironchest:wood_copper_chest_upgrade>,[
[<gregtech:meta_plate:25>,<gregtech:meta_plate:25>,<gregtech:meta_plate:25>],
[<gregtech:meta_plate:25>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:25>],
[<gregtech:meta_plate:25>,<gregtech:meta_plate:25>,<gregtech:meta_plate:25>]]);

Recipes.addShaped("Upg5", stage, <ironchest:wood_iron_chest_upgrade>,[
[<gregtech:meta_plate:51>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
[<gregtech:meta_plate:51>,<gregtech:meta_plate:1617>,<gregtech:meta_plate:51>],
[<gregtech:meta_plate:51>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>]]);

Recipes.addShaped("MagicalWood", stage, <extrautils2:decorativesolidwood:1>,[
[<gregtech:meta_screw:41>,<totemic:cedar_plank>,<gregtech:meta_screw:41>],
[<totemic:cedar_plank>,<minecraft:bookshelf>,<totemic:cedar_plank>],
[<totemic:eagle_drops:1>,<totemic:cedar_plank>,<totemic:eagle_drops:1>]]);

Recipes.addShaped("FlagPole", stage, <galacticraftcore:steel_pole>,[
[<gregtech:meta_stick_long:324>],
[<ore:craftingToolHardHammer>],
[<gregtech:meta_stick_long:324>]]);

Recipes.addShaped("ChunkLoader1", stage, <chunkloaders:single_chunk_loader>,[
[<gregtech:meta_screw:335>,<gregtech:meta_plate:335>,<gregtech:meta_screw:335>],
[<gregtech:meta_plate:335>,<ore:craftingToolFile>,<gregtech:meta_plate:335>],
[<gregtech:meta_screw:335>,<gregtech:meta_plate:335>,<gregtech:meta_screw:335>]]);

Recipes.addShapedMirrored("Soil", stage, <tconstruct:soil:3>,[
[<netherex:fiery_netherrack>,<minecraft:soul_sand>],
[<minecraft:soul_sand>,<netherex:fiery_netherrack>]]);

Recipes.addShapedMirrored("MediumBackpack", stage, <usefulbackpacks:backpack:1>,[
[<forestry:bee_combs:2>,<ore:peltBear>,<tconstruct:materials:17>],
[<ore:peltBear>,<usefulbackpacks:backpack>,<tconstruct:soil:4>],
[<forestry:bee_combs:2>,<ore:peltBear>,<tconstruct:materials:17>]]);

Recipes.addShaped("ImpregnatedSticks", stage, <forestry:oak_stick> * 8,[
[<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>],
[<gregtech:meta_stick:1648>,<minecraft:nether_wart>,<gregtech:meta_stick:1648>],
[<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>,<gregtech:meta_stick:1648>]]);

Recipes.addShaped("GliderScaffolding", stage, <openglider:hang_glider_part:2>,[
[<gregtech:meta_screw:324>,<gregtech:meta_stick:324>,<gregtech:meta_screw:324>],
[<gregtech:meta_stick:324>,<ore:craftingToolHardHammer>,<gregtech:meta_stick:324>],
[<gregtech:meta_stick:324>,<gregtech:meta_stick_long:324>,<gregtech:meta_stick:324>]]);

Recipes.addShaped("GliderWing", stage, <openglider:hang_glider_part:0>,[
[<ore:craftingToolHardHammer>,<gregtech:meta_stick:324>,<ore:leather>],
[<gregtech:meta_stick:324>,<ore:leather>,<ore:leather>],
[<ore:leather>,<ore:leather>,<ore:leather>]]);

Recipes.addShaped("GliderWing2", stage, <openglider:hang_glider_part:1>,[
[<ore:leather>,<gregtech:meta_stick:324>,<ore:craftingToolHardHammer>],
[<ore:leather>,<ore:leather>,<gregtech:meta_stick:324>],
[<ore:leather>,<ore:leather>,<ore:leather>]]);

Recipes.addShaped("Glider", stage, <openglider:hang_glider_basic>,[
[<gregtech:meta_screw:324>,<ore:craftingToolHardHammer>,<gregtech:meta_screw:324>],
[<openglider:hang_glider_part:0>,<openglider:hang_glider_part:2>,<openglider:hang_glider_part:1>],
[<gregtech:meta_screw:324>,<ore:craftingToolScrewdriver>,<gregtech:meta_screw:324>]]);

furnace.addRecipe(<minecraft:brick>, <gagtweaks:compressed_clay>);
furnace.addRecipe(<tconstruct:soil:3>, <minecraft:soul_sand>);

Recipes.addShapeless("Fireclay", stage, <gregtech:meta_dust:2525> * 2, [<gregtech:meta_dust:2524>,<gregtech:meta_dust:2063>,<gagtweaks:peat_dust>, <betterwithmods:material:12>]);
Recipes.addShapeless("MudDust1", stage, <gagtweaks:muddy_dust> * 4, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:gravel>, <minecraft:gravel>, <betterwithmods:material:12>]);
Recipes.addShapeless("MudDust2", stage, <gagtweaks:muddy_dust> * 8, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:gravel>, <minecraft:gravel>, <betterwithmods:material:12>]);
Recipes.addShapeless("MudDust3", stage, <gagtweaks:muddy_dust> * 8, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:gravel>, <minecraft:gravel>, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <betterwithmods:material:12>]);
Recipes.addShapeless("MudDust4", stage, <gagtweaks:muddy_dust> * 16, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <minecraft:gravel>, <minecraft:gravel>, <gregtech:meta_dust:392>, <gregtech:meta_dust:2026>, <betterwithmods:material:12>]);