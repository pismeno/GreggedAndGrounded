/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
import scripts.ProcessUtils;

import scripts.Stages.STAGE_ZERO;

static recipesShaped as IIngredient[][][][IItemStack] = {
  <gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, ench: [{lvl: 2 as short, id: 20 as short}], "GT.Behaviours": {}, HideFlags: 2,"GT.Tool": {MaxDurability: 63, AttackDamage: -1.0 as float, Durability: 0, Material: "gregtech:flint", AttackSpeed: -2.0 as float}}) : [
      [
        [<primal:flint_point>],
        [<ore:stickWood>]
      ]
    ],

  <minecraft:clay> * 2 : [
      [
        [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>],
        [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>],
        [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>]
      ]
    ],
  <horsepower:chopping_block>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}) : [
      [
        [<ore:logWood>,<ore:logWood>]
      ]
    ],

  <minecraft:dirt:1> : [
      [
        [<betterwithmods:gravel_pile>,<betterwithmods:dirt_pile>],
        [<betterwithmods:dirt_pile>,<betterwithmods:gravel_pile>]
      ]
    ],

  <totemic:totem_torch> * 2 : [
      [
        [<ore:stickWood>,<primal_tech:charcoal_block>,<ore:stickWood>],
        [null,<ore:stickWood>,null],
        [null,<ore:stickWood>,null],
      ]
    ],
  <primal_tech:wooden_basin> : [
      [
        [<primal:bark_oak>,<ore:stickWood>,<primal:bark_oak>],
        [<primal:bark_oak>,<primal:bark_oak>,<primal:bark_oak>],
        [<minecraft:stone>,null,<minecraft:stone>],
      ]
    ],
  <primal:barrel> : [
      [
        [<ore:plankWood>,<ore:craftingToolKnife>,<ore:plankWood>],
        [<ore:plankWood>,null,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
      ]
    ],
  <primalchests:primal_chest> : [
      [
        [<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
        [<minecraft:stone>,null,<minecraft:stone>],
        [<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
      ]
    ],
  <primalchests:primal_chest_advanced> : [
      [
        [null,<ore:leather>,null],
        [<ore:leather>,<primalchests:primal_chest>,<ore:leather>],
        [null,<ore:leather>,null],
      ]
    ],
  <primal_tech:work_stump_upgraded> : [
      [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<primalchests:primal_chest_advanced>,<primal_tech:work_stump>,<primalchests:primal_chest_advanced>],
        [<ore:plankWood>,<primal_tech:wooden_hopper>,<ore:plankWood>],
      ]
    ],
  <totemic:drum> : [
      [
        [<ore:leather>,<ore:leather>],
        [<ore:logWood>,<ore:logWood>],
        [<ore:logWood>,<ore:logWood>],
      ]
    ],
  <totemic:sub_items:1> *2 : [
      [
        [<primal:leather_strip>,<primal:shark_tooth>,<primal:leather_strip>],
        [<primal:shark_tooth>,<primal:leather_strip>,<primal:shark_tooth>],
      ]
    ],

  <totemic:tipi> : [
      [
        [null,<ore:stickWood>,null],
        [<ore:stickWood>,<ore:leather>,<ore:stickWood>],
        [<ore:leather>,null,<ore:leather>],
      ]
    ],
  <primal_tech:wooden_hopper> : [
      [
        [<primal:bark_oak>,<primal:tannin_ground>,<primal:bark_oak>],
        [<primal:bark_oak>,<primalchests:primal_chest_advanced>,<primal:bark_oak>],
        [null,<primal:bark_oak>,null],
      ]
    ],
  <primal_tech:charcoal_hopper> : [
      [
        [<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
        [<primal_tech:charcoal_block>,<primal_tech:wooden_hopper>,<primal_tech:charcoal_block>],
        [<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
      ]
    ],
  <horsepower:grindstone> : [
      [
        [<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
        [<minecraft:stone>,<gregtech:meta_dust:1599>,<minecraft:stone>],
        [<gregtech:meta_dust:1599>,<minecraft:stone>,<gregtech:meta_dust:1599>],
      ]
    ],
  <gregtech:meta_gear:1617> : [
      [
        [<totemic:buffalo_items:1>,<totemic:cedar_plank>,<totemic:buffalo_items:1>],
        [<totemic:cedar_plank>,null,<totemic:cedar_plank>],
        [<totemic:buffalo_items:1>,<totemic:cedar_plank>,<totemic:buffalo_items:1>],
      ]
    ],
  <horsepower:press> : [
      [
        [<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
        [<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
      ]
    ],
  <horsepower:chopper> : [
      [
        [<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
        [<ore:stickWood>,null,<ore:stickWood>],
        [<ore:stickWood>,<horsepower:chopping_block>,<ore:stickWood>],
      ]
    ],
  <primal_tech:stone_grill> : [
      [
        [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
        [<ore:rock>,<ore:rock>,<ore:rock>],
      ]
    ],

  <tconstruct:rack:1> : [
      [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<primal:plant_cordage>,null,<primal:plant_cordage>],
      ]
    ],

  <primalboat:primal_boat> : [
      [
        [<primal:plant_cordage>,<ore:logWood>,<primal:plant_cordage>],
        [<ore:logWood>,<primal:plant_cordage>,<ore:logWood>],
      ]
    ],

  <minecraft:saddle> : [
      [
        [<ore:leather>,<ore:leather>,<ore:leather>],
        [<ore:leather>,<betterwithmods:rope>,<ore:leather>],
      ]
    ],

  <waterstrainer:net> : [
      [
        [<betterwithmods:rope>,<betterwithmods:rope>],
        [<betterwithmods:rope>,<betterwithmods:rope>]
      ]
    ],

  <waterstrainer:net:1> : [
      [
        [<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
        [<betterwithmods:rope>,null,<betterwithmods:rope>],
        [<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
      ]
    ],
  <waterstrainer:strainer_base> : [
      [
        [<ore:stickWood>,null,<ore:stickWood>],
        [<ore:plankWood>,<primal_tech:wooden_hopper>,<ore:plankWood>],
        [<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
      ]
    ],
  <astikorcarts:mobcart> : [
      [
        [<ore:plankWood>,null,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>],
      ]
    ],
  <astikorcarts:cargocart> : [
      [
        [<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
        [<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
        [<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>],
      ]
    ],
  <forestry:fertilizer_bio> * 3 : [
      [
        [<betterwithmods:dirt_pile>,<minecraft:dye:15>,<betterwithmods:dirt_pile>],
        [<minecraft:dye:15>,<betterwithmods:dirt_pile>,<minecraft:dye:15>],
        [<betterwithmods:dirt_pile>,<minecraft:dye:15>,<betterwithmods:dirt_pile>],
      ],
      [
        [<betterwithmods:dirt_pile>,<minecraft:wheat>,<betterwithmods:dirt_pile>],
        [<minecraft:wheat>,<betterwithmods:dirt_pile>,<minecraft:wheat>],
        [<betterwithmods:dirt_pile>,<minecraft:wheat>,<betterwithmods:dirt_pile>],
      ]
    ],
  <forestry:fertilizer_bio> : [
      [
        [<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>],
        [<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>],
        [<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>],
      ]
    ],
  <forestry:humus> * 8 : [
      [
        [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
        [<minecraft:dirt>,<forestry:fertilizer_bio>,<minecraft:dirt>],
        [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
      ]
    ],
  <minecraft:dirt> : [
      [
        [<betterwithmods:dirt_pile>,<betterwithmods:dirt_pile>],
        [<betterwithmods:dirt_pile>,<betterwithmods:dirt_pile>]
      ]
    ],

  <minecraft:gravel> : [
      [
        [<betterwithmods:gravel_pile>,<betterwithmods:gravel_pile>],
        [<betterwithmods:gravel_pile>,<betterwithmods:gravel_pile>]
      ]
    ],

  <minecraft:sand> : [
      [
        [<betterwithmods:sand_pile>,<betterwithmods:sand_pile>],
        [<betterwithmods:sand_pile>,<betterwithmods:sand_pile>]
      ]
    ],

  <minecraft:sand:1> : [
      [
        [<betterwithmods:red_sand_pile>,<betterwithmods:red_sand_pile>],
        [<betterwithmods:red_sand_pile>,<betterwithmods:red_sand_pile>]
      ]
    ],

  <actuallyadditions:item_food:11> : [
      [
        [<ore:craftingToolKnife>,<actuallyadditions:item_food>],
        [<minecraft:cooked_beef>,<actuallyadditions:item_food:15>],
        [null,<actuallyadditions:item_food>]
      ]
    ],
  <actuallyadditions:item_food:14> : [
      [
        [<actuallyadditions:item_food>,<ore:craftingToolKnife>,<actuallyadditions:item_food>],
        [<ore:cropMushroomBrown>,<minecraft:carrot>,<ore:meatFish>],
        [null,<actuallyadditions:item_misc:4>,null]
      ]
    ],
  <gregtechfoodoption:gtfo_meta_item:45> : [
      [
        [<ore:craftingToolKnife>,null,null],
        [<ore:plankWood>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>]
      ]
    ],
  <gregtechfoodoption:gtfo_meta_item:46> : [
      [
        [null,<ore:craftingToolKnife>,null],
        [<ore:plankWood>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>]
      ]
    ],
  <gregtechfoodoption:gtfo_meta_item:82> : [
      [
        [null,null,<ore:craftingToolKnife>],
        [<ore:plankWood>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>]
      ]
    ],
  <gagtweaks:unbaked_rice_bread> : [
      [
        [<actuallyadditions:item_misc:9>,null,<actuallyadditions:item_misc:9>],
        [null,<gregtechfoodoption:gtfo_meta_item:45>.reuse(),null]
      ]
    ],

  <gagtweaks:unbaked_corn_bread> : [
      [
        [<primal:corn_ground>,null,<primal:corn_ground>],
        [null,<gregtechfoodoption:gtfo_meta_item:45>.reuse(),null]
      ]
    ],

  <gagtweaks:unbaked_baguette> : [
      [
        [null,<gregtechfoodoption:gtfo_meta_item:50>,null],
        [<gregtechfoodoption:gtfo_meta_item:50>,<gregtechfoodoption:gtfo_meta_item:46>.reuse(),<gregtechfoodoption:gtfo_meta_item:50>]
      ]
    ]
};


static recipesShapedMirrored as IIngredient[][][][IItemStack] = {
  <gagtweaks:gravel_strainer> : [
    [
      [<ore:stickWood>,<primal:plant_cordage>],
      [<primal:plant_cordage>,<ore:stickWood>]
    ]
  ],

  <primal:bone_shears> : [
    [
      [<ore:craftingToolKnife>,<primal:bone_point>],
      [<primal:bone_point>,<primal:leather_cordage>]
    ]
  ],

  <totemic:eagle_bone_whistle> : [
    [
      [<totemic:eagle_drops:1>,<totemic:eagle_drops>],
      [<totemic:eagle_drops>,<ore:craftingToolKnife>]
    ]
  ],

  <primal_tech:work_stump> : [
    [
      [<horsepower:chopping_block>],
      [<ore:logWood>]
    ]
  ],

  <primal_tech:fire_sticks> : [
    [
      [<ore:stickWood>,<ore:craftingToolKnife>],
      [<ore:stickWood>]
    ]
  ],

  <minecraft:lead> : [
    [
      [null,<primal:plant_cordage>,<primal:plant_cordage>],
      [null,<primal:plant_cordage>,<primal:plant_cordage>],
      [<primal:plant_cordage>,null,null],
    ]
  ],

  <waterstrainer:garden_trowel> : [
    [
      [null,null,<primal:plant_cordage>],
      [null,<primal:bone_knapp>,null],
      [<ore:stickWood>,null,null],
    ]
  ],

  <totemic:totem_whittling_knife> : [
    [
      [null,null,<primal:bone_point>],
      [null,<ore:stickWood>,<primal:plant_cordage>],
      [<ore:stickWood>,null,null],
    ]
  ],

  <usefulbackpacks:backpack> : [
    [
      [<ore:leather>,<ore:leather>,<betterwithmods:rope>],
      [<ore:leather>,<primalchests:primal_chest_advanced>,<ore:leather>],
      [<ore:leather>,<ore:leather>,<betterwithmods:rope>],
    ]
  ],

  <primal_tech:fluid_bladder> : [
    [
      [<primal:plant_cordage>,<betterwithmods:material:4>,null],
      [<betterwithmods:material:4>,null,<betterwithmods:material:4>],
      [null,<betterwithmods:material:4>,null],
    ]
  ],

  <totemic:wind_chime> : [
    [
      [<ore:logWood>,<ore:logWood>,<ore:logWood>],
      [<minecraft:reeds>,<primal:leather_cordage>,<minecraft:reeds>],
      [null,null,<minecraft:reeds>],
    ]
  ],

  <totemic:rattle> : [
    [
      [null,<ore:plankWood>,<ore:plankWood>],
      [null,<primal:shark_tooth>,<ore:plankWood>],
      [<ore:stickWood>,null,null],
    ]
  ]
};


static recipesShapeless as IIngredient[][][IItemStack] = {
  <primal:leather_strip> * 9 : [
    [<ore:craftingToolKnife>,<ore:leather>]
  ],
  <primal:plant_fiber> * 9 : [
    [<ore:craftingToolKnife>,<ore:plant>]
  ],
  <minecraft:flint> : [
    [<gagtweaks:gravel_strainer:*>.transformDamage(),<ore:blockGravel>]
  ],
  <primal:rock_stone> : [
    [<gagtweaks:gravel_strainer:*>.transformDamage(),<ore:dirt>]
  ],
  <primal:bark_oak> * 4 : [
    [<ore:craftingToolKnife>,<ore:logWood>]
  ],
  <primal_tech:rock> : [
    [<ore:rock>,<ore:rock>]
  ],
  <totemic:totempedia> : [
    [<ore:leather>,<primal:plant_cloth>]
  ],
  <primal:rock_stone> * 4 : [
    [<minecraft:cobblestone>]
  ],
  <primal:rock_andesite> * 4 : [
    [<minecraft:stone:5>]
  ],
  <primal:rock_diorite> * 4 : [
    [<minecraft:stone:3>]
  ],
  <primal:rock_granite> * 4 : [
    [<minecraft:stone:1>]
  ],
  <primal:hide_raw>  : [
    [<ore:peltSmall>, <ore:craftingToolKnife>]
  ],
  <primal:hide_raw> * 2 : [
    [<ore:peltMedium>, <ore:craftingToolKnife>]
  ],
  <primal:hide_raw> * 3 : [
    [<ore:peltLarge>, <ore:craftingToolKnife>]
  ],
  <actuallyadditions:item_food:5> : [
    [<minecraft:baked_potato>, <ore:craftingToolKnife>]
  ],
  <actuallyadditions:item_food:20> * 3 : [
    [<minecraft:cooked_porkchop>, <ore:craftingToolKnife>]
  ],
  <actuallyadditions:item_misc:4> : [
    [<gregtechfoodoption:gtfo_meta_item:50>]
  ]
};


function init() as void {
  ProcessUtils.processRecipesShaped(recipesShaped, STAGE_ZERO);
  ProcessUtils.processRecipesMirrored(recipesShapedMirrored, STAGE_ZERO);
  ProcessUtils.processRecipesShapeless(recipesShapeless, STAGE_ZERO);
}

/*

import mods.recipestages.Recipes;
import mods.rockytweaks.Merchant;

val stage = "zero";

Recipes.setContainerStage("primal_tech.inventory.ContainerWorkStump", ["zero"]);

furnace.addRecipe(<minecraft:bread>, <horsepower:dough>);

Merchant.addTrade("minecraft:farmer", "farmer", <minecraft:dirt> * 10, <forestry:humus>, 1);
Merchant.addTrade("minecraft:librarian", "cartographer", <primal:plant_cloth> * 3, <antiqueatlas:empty_antique_atlas>, 1);

Recipes.addShapedMirrored("GravelStrainer", stage, <gagtweaks:gravel_strainer>,
 [[<ore:stickWood>,<primal:plant_cordage>],
    [<primal:plant_cordage>,<ore:stickWood>]
  ]);

Recipes.addShaped("FlintKnife", stage, <gregtech:knife>.withTag({DisallowContainerItem: 0 as byte, ench: [{lvl: 2 as short, id: 20 as short}], "GT.Behaviours": {}, HideFlags: 2,"GT.Tool": {MaxDurability: 63, AttackDamage: -1.0 as float, Durability: 0, Material: "gregtech:flint", AttackSpeed: -2.0 as float}}),
 [[<primal:flint_point>],
    [<ore:stickWood>]
  ]);

Recipes.addShaped("ClayBlock", stage, <minecraft:clay> * 2,
 [[<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>],
    [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>],
    [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>]
  ]);

Recipes.addShapedMirrored("BoneShears", stage, <primal:bone_shears>,
 [[<ore:craftingToolKnife>,<primal:bone_point>],
    [<primal:bone_point>,<primal:leather_cordage>]
  ]);

Recipes.addShapedMirrored("EagleWhistle", stage, <totemic:eagle_bone_whistle>,
 [[<totemic:eagle_drops:1>,<totemic:eagle_drops>],
    [<totemic:eagle_drops>,<ore:craftingToolKnife>]
  ]);

Recipes.addShapedMirrored("CraftingStump", stage, <primal_tech:work_stump>,
 [[<horsepower:chopping_block>],
    [<ore:logWood>]
  ]);

Recipes.addShapedMirrored("FireSticks", stage, <primal_tech:fire_sticks>,
 [[<ore:stickWood>,<ore:craftingToolKnife>],
    [<ore:stickWood>]
  ]);

Recipes.addShapedMirrored("Lead", stage, <minecraft:lead>,
 [[null,<primal:plant_cordage>,<primal:plant_cordage>],
    [null,<primal:plant_cordage>,<primal:plant_cordage>],
    [<primal:plant_cordage>,null,null],
  ]);

Recipes.addShapedMirrored("Trowel", stage, <waterstrainer:garden_trowel>,
 [[null,null,<primal:plant_cordage>],
    [null,<primal:bone_knapp>,null],
    [<ore:stickWood>,null,null],
  ]);

Recipes.addShapedMirrored("WhittlingKnife", stage, <totemic:totem_whittling_knife>,
 [[null,null,<primal:bone_point>],
    [null,<ore:stickWood>,<primal:plant_cordage>],
    [<ore:stickWood>,null,null],
  ]);

Recipes.addShapedMirrored("Backpack", stage, <usefulbackpacks:backpack>,
 [[<ore:leather>,<ore:leather>,<betterwithmods:rope>],
    [<ore:leather>,<primalchests:primal_chest_advanced>,<ore:leather>],
    [<ore:leather>,<ore:leather>,<betterwithmods:rope>],
  ]);

Recipes.addShapedMirrored("Bladder", stage, <primal_tech:fluid_bladder>,
 [[<primal:plant_cordage>,<betterwithmods:material:4>,null],
    [<betterwithmods:material:4>,null,<betterwithmods:material:4>],
    [null,<betterwithmods:material:4>,null],
  ]);

Recipes.addShapedMirrored("Chime", stage, <totemic:wind_chime>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [<minecraft:reeds>,<primal:leather_cordage>,<minecraft:reeds>],
    [null,null,<minecraft:reeds>],
  ]);

Recipes.addShapedMirrored("Rattle", stage, <totemic:rattle>,
 [[null,<ore:plankWood>,<ore:plankWood>],
    [null,<primal:shark_tooth>,<ore:plankWood>],
    [<ore:stickWood>,null,null],
  ]);

Recipes.addShaped("ChoppingBlock", stage, <horsepower:chopping_block>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
 [[<ore:logWood>,<ore:logWood>]
  ]);

Recipes.addShaped("CoarseDirtPiles", stage, <minecraft:dirt:1>,
 [[<betterwithmods:gravel_pile>,<betterwithmods:dirt_pile>],
    [<betterwithmods:dirt_pile>,<betterwithmods:gravel_pile>]
  ]);

Recipes.addShaped("PrimalTorches", stage, <totemic:totem_torch> * 2,
 [ [<ore:stickWood>,<primal_tech:charcoal_block>,<ore:stickWood>],
    [null,<ore:stickWood>,null],
    [null,<ore:stickWood>,null],
  ]);

Recipes.addShaped("WoodBasin", stage, <primal_tech:wooden_basin>,
 [ [<primal:bark_oak>,<ore:stickWood>,<primal:bark_oak>],
    [<primal:bark_oak>,<primal:bark_oak>,<primal:bark_oak>],
    [<minecraft:stone>,null,<minecraft:stone>],
  ]);

Recipes.addShaped("Barrel", stage, <primal:barrel>,
 [ [<ore:plankWood>,<ore:craftingToolKnife>,<ore:plankWood>],
    [<ore:plankWood>,null,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
  ]);

Recipes.addShaped("PrimalChest", stage, <primalchests:primal_chest>,
 [[<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
    [<minecraft:stone>,null,<minecraft:stone>],
    [<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
  ]);

Recipes.addShaped("PrimalChestAdvanced", stage, <primalchests:primal_chest_advanced>,
 [[null,<ore:leather>,null],
    [<ore:leather>,<primalchests:primal_chest>,<ore:leather>],
    [null,<ore:leather>,null],
  ]);

Recipes.addShaped("CraftingStumpAdvanced", stage, <primal_tech:work_stump_upgraded>,
 [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<primalchests:primal_chest_advanced>,<primal_tech:work_stump>,<primalchests:primal_chest_advanced>],
    [<ore:plankWood>,<primal_tech:wooden_hopper>,<ore:plankWood>],
  ]);

Recipes.addShaped("Drum", stage, <totemic:drum>,
 [[<ore:leather>,<ore:leather>],
    [<ore:logWood>,<ore:logWood>],
    [<ore:logWood>,<ore:logWood>],
  ]);

Recipes.addShaped("Bells", stage, <totemic:sub_items:1> *2,[
    [<primal:leather_strip>,<primal:shark_tooth>,<primal:leather_strip>],
    [<primal:shark_tooth>,<primal:leather_strip>,<primal:shark_tooth>],
  ]);

Recipes.addShaped("Tipi", stage, <totemic:tipi>,
 [[null,<ore:stickWood>,null],
    [<ore:stickWood>,<ore:leather>,<ore:stickWood>],
    [<ore:leather>,null,<ore:leather>],
  ]);

Recipes.addShaped("WoodenHopper", stage, <primal_tech:wooden_hopper>,
 [[<primal:bark_oak>,<primal:tannin_ground>,<primal:bark_oak>],
    [<primal:bark_oak>,<primalchests:primal_chest_advanced>,<primal:bark_oak>],
    [null,<primal:bark_oak>,null],
  ]);

Recipes.addShaped("HeatingHopper", stage, <primal_tech:charcoal_hopper>,
 [[<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
    [<primal_tech:charcoal_block>,<primal_tech:wooden_hopper>,<primal_tech:charcoal_block>],
    [<primal_tech:charcoal_block>,<primal_tech:charcoal_block>,<primal_tech:charcoal_block>],
  ]);

Recipes.addShaped("HorseGrindstone", stage, <horsepower:grindstone>,
 [[<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
    [<minecraft:stone>,<gregtech:meta_dust:1599>,<minecraft:stone>],
    [<gregtech:meta_dust:1599>,<minecraft:stone>,<gregtech:meta_dust:1599>],
  ]);

Recipes.addShaped("WoodenGear", stage, <gregtech:meta_gear:1617>,
 [[<totemic:buffalo_items:1>,<totemic:cedar_plank>,<totemic:buffalo_items:1>],
    [<totemic:cedar_plank>,null,<totemic:cedar_plank>],
    [<totemic:buffalo_items:1>,<totemic:cedar_plank>,<totemic:buffalo_items:1>],
  ]);

Recipes.addShaped("HorsePress", stage, <horsepower:press>,
 [[<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
    [<ore:plankWood>,<minecraft:stone>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  ]);

Recipes.addShaped("HorseChopper", stage, <horsepower:chopper>,
 [[<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
    [<ore:stickWood>,null,<ore:stickWood>],
    [<ore:stickWood>,<horsepower:chopping_block>,<ore:stickWood>],
  ]);

Recipes.addShaped("Grill", stage, <primal_tech:stone_grill>,[
    [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
    [<ore:rock>,<ore:rock>,<ore:rock>],
  ]);

Recipes.addShaped("DryingRack", stage, <tconstruct:rack:1>,[
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<primal:plant_cordage>,null,<primal:plant_cordage>],
  ]);

Recipes.addShaped("Raft", stage, <primalboat:primal_boat>,[
    [<primal:plant_cordage>,<ore:logWood>,<primal:plant_cordage>],
    [<ore:logWood>,<primal:plant_cordage>,<ore:logWood>],
  ]);

Recipes.addShaped("Saddle", stage, <minecraft:saddle>,[
    [<ore:leather>,<ore:leather>,<ore:leather>],
    [<ore:leather>,<betterwithmods:rope>,<ore:leather>],
  ]);

Recipes.addShaped("Net", stage, <waterstrainer:net>,
 [[<betterwithmods:rope>,<betterwithmods:rope>],
    [<betterwithmods:rope>,<betterwithmods:rope>]
  ]);

Recipes.addShaped("NetDense", stage, <waterstrainer:net:1>,
 [[<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
    [<betterwithmods:rope>,null,<betterwithmods:rope>],
    [<betterwithmods:rope>,<betterwithmods:rope>,<betterwithmods:rope>],
  ]);

Recipes.addShaped("StrainerBase", stage, <waterstrainer:strainer_base>,
 [[<ore:stickWood>,null,<ore:stickWood>],
    [<ore:plankWood>,<primal_tech:wooden_hopper>,<ore:plankWood>],
    [<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
  ]);

Recipes.addShaped("MobCart", stage, <astikorcarts:mobcart>,
 [[<ore:plankWood>,null,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>],
  ]);

Recipes.addShaped("ChestCart", stage, <astikorcarts:cargocart>,
 [[<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
    [<ore:plankWood>,<primalchests:primal_chest_advanced>,<ore:plankWood>],
    [<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>],
  ]);

Recipes.addShaped("Compost", stage, <forestry:fertilizer_bio> * 3,
 [[<betterwithmods:dirt_pile>,<minecraft:dye:15>,<betterwithmods:dirt_pile>],
    [<minecraft:dye:15>,<betterwithmods:dirt_pile>,<minecraft:dye:15>],
    [<betterwithmods:dirt_pile>,<minecraft:dye:15>,<betterwithmods:dirt_pile>],
  ]);

Recipes.addShaped("Compost2", stage, <forestry:fertilizer_bio> * 3,
 [[<betterwithmods:dirt_pile>,<minecraft:wheat>,<betterwithmods:dirt_pile>],
    [<minecraft:wheat>,<betterwithmods:dirt_pile>,<minecraft:wheat>],
    [<betterwithmods:dirt_pile>,<minecraft:wheat>,<betterwithmods:dirt_pile>],
  ]);

Recipes.addShaped("Compost3", stage, <forestry:fertilizer_bio>,
 [[<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>],
    [<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>],
    [<betterwithmods:dirt_pile>,<gregtech:meta_dust:254>,<betterwithmods:dirt_pile>],
  ]);

Recipes.addShaped("Humus", stage, <forestry:humus> * 8,
 [[<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
    [<minecraft:dirt>,<forestry:fertilizer_bio>,<minecraft:dirt>],
    [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>],
  ]);

Recipes.addShaped("Piles1", stage, <minecraft:dirt>,
 [[<betterwithmods:dirt_pile>,<betterwithmods:dirt_pile>],
    [<betterwithmods:dirt_pile>,<betterwithmods:dirt_pile>]
  ]);

Recipes.addShaped("Piles2", stage, <minecraft:gravel>,
 [[<betterwithmods:gravel_pile>,<betterwithmods:gravel_pile>],
    [<betterwithmods:gravel_pile>,<betterwithmods:gravel_pile>]
  ]);

Recipes.addShaped("Piles3", stage, <minecraft:sand>,
 [[<betterwithmods:sand_pile>,<betterwithmods:sand_pile>],
    [<betterwithmods:sand_pile>,<betterwithmods:sand_pile>]
  ]);

Recipes.addShaped("Piles4", stage, <minecraft:sand:1>,
 [[<betterwithmods:red_sand_pile>,<betterwithmods:red_sand_pile>],
    [<betterwithmods:red_sand_pile>,<betterwithmods:red_sand_pile>]
  ]);

Recipes.addShaped("Baguette", stage, <actuallyadditions:item_food:11>,
 [[<ore:craftingToolKnife>,<actuallyadditions:item_food>],
    [<minecraft:cooked_beef>,<actuallyadditions:item_food:15>],
    [null,<actuallyadditions:item_food>]
  ]);

Recipes.addShaped("Pizza", stage, <actuallyadditions:item_food:14>,
 [[<actuallyadditions:item_food>,<ore:craftingToolKnife>,<actuallyadditions:item_food>],
    [<ore:cropMushroomBrown>,<minecraft:carrot>,<ore:meatFish>],
    [null,<actuallyadditions:item_misc:4>,null]
  ]);

Recipes.addShaped("BreadForm", stage, <gregtechfoodoption:gtfo_meta_item:45>,
 [[<ore:craftingToolKnife>,null,null],
    [<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>]
  ]);

Recipes.addShaped("BaguetteForm", stage, <gregtechfoodoption:gtfo_meta_item:46>,
 [[null,<ore:craftingToolKnife>,null],
    [<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>]
  ]);

Recipes.addShaped("BunForm", stage, <gregtechfoodoption:gtfo_meta_item:82>,
 [[null,null,<ore:craftingToolKnife>],
    [<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>]
  ]);

Recipes.addShaped("UnbakedBread1", stage, <gagtweaks:unbaked_rice_bread>,
 [[<actuallyadditions:item_misc:9>,null,<actuallyadditions:item_misc:9>],
    [null,<gregtechfoodoption:gtfo_meta_item:45>.reuse(),null]
  ]);

Recipes.addShaped("UnbakedBread2", stage, <gagtweaks:unbaked_corn_bread>,
 [[<primal:corn_ground>,null,<primal:corn_ground>],
    [null,<gregtechfoodoption:gtfo_meta_item:45>.reuse(),null]
  ]);

Recipes.addShaped("UnbakedBaguette", stage, <gagtweaks:unbaked_baguette>,
 [[null,<gregtechfoodoption:gtfo_meta_item:50>,null],
    [<gregtechfoodoption:gtfo_meta_item:50>,<gregtechfoodoption:gtfo_meta_item:46>.reuse(),<gregtechfoodoption:gtfo_meta_item:50>]
  ]);

Recipes.addShapeless("LeatherStrip", stage, <primal:leather_strip> * 9, [<ore:craftingToolKnife>,<ore:leather>]);
Recipes.addShapeless("PlantStrip", stage, <primal:plant_fiber> * 9, [<ore:craftingToolKnife>,<ore:plant>]);
Recipes.addShapeless("FlintFromStrainer", stage, <minecraft:flint>, [<gagtweaks:gravel_strainer:*>.transformDamage(),<ore:blockGravel>]);
Recipes.addShapeless("RockFromStrainer", stage, <primal:rock_stone>, [<gagtweaks:gravel_strainer:*>.transformDamage(),<ore:dirt>]);
Recipes.addShapeless("Bark", stage, <primal:bark_oak>*4, [<ore:craftingToolKnife>,<ore:logWood>]);
Recipes.addShapeless("CraftingRock", stage, <primal_tech:rock>, [<ore:rock>,<ore:rock>]);
Recipes.addShapeless("Totempedia", stage, <totemic:totempedia>, [<ore:leather>,<primal:plant_cloth>]);
Recipes.addShapeless("RockStone", stage, <primal:rock_stone> * 4, [<minecraft:cobblestone>]);
Recipes.addShapeless("RockAndesite", stage, <primal:rock_andesite> * 4, [<minecraft:stone:5>]);
Recipes.addShapeless("RockDiorite", stage, <primal:rock_diorite> * 4, [<minecraft:stone:3>]);
Recipes.addShapeless("RockGranite", stage, <primal:rock_granite> * 4, [<minecraft:stone:1>]);
Recipes.addShapeless("HideRawSmall", stage, <primal:hide_raw> , [<ore:peltSmall>, <ore:craftingToolKnife>]);
Recipes.addShapeless("HideRawMedium", stage, <primal:hide_raw> * 2, [<ore:peltMedium>, <ore:craftingToolKnife>]);
Recipes.addShapeless("HideRawLarge", stage, <primal:hide_raw> * 3, [<ore:peltLarge>, <ore:craftingToolKnife>]);
Recipes.addShapeless("Fries", stage, <actuallyadditions:item_food:5>,[<minecraft:baked_potato>, <ore:craftingToolKnife>]);
Recipes.addShapeless("Bacon", stage, <actuallyadditions:item_food:20> * 3,[<minecraft:cooked_porkchop>, <ore:craftingToolKnife>]);
Recipes.addShapeless("DoughConvert", stage, <actuallyadditions:item_misc:4>,[<gregtechfoodoption:gtfo_meta_item:50>]);

furnace.addRecipe(<minecraft:bread>, <gregtechfoodoption:gtfo_meta_item:47>);
furnace.addRecipe(<primal:corn_bread>, <gagtweaks:unbaked_corn_bread>);
furnace.addRecipe(<actuallyadditions:item_food:17>, <gagtweaks:unbaked_rice_bread>);
furnace.addRecipe(<actuallyadditions:item_food:15>, <gagtweaks:unbaked_baguette>);

furnace.remove(<minecraft:bread>, <horsepower:dough>);

*/
