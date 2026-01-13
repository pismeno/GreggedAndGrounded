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
        [<ore:cordageGeneral>,null,<ore:cordageGeneral>],
      ]
    ],

  <primalboat:primal_boat> : [
      [
        [<ore:cordageGeneral>,<ore:logWood>,<ore:cordageGeneral>],
        [<ore:logWood>,<ore:cordageGeneral>,<ore:logWood>],
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
      [<ore:stickWood>,<ore:cordageGeneral>],
      [<ore:cordageGeneral>,<ore:stickWood>]
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
      [null,<ore:cordageGeneral>,<ore:cordageGeneral>],
      [null,<ore:cordageGeneral>,<ore:cordageGeneral>],
      [<ore:cordageGeneral>,null,null],
    ]
  ],

  <waterstrainer:garden_trowel> : [
    [
      [null,null,<ore:cordageGeneral>],
      [null,<primal:bone_knapp>,null],
      [<ore:stickWood>,null,null],
    ]
  ],

  <totemic:totem_whittling_knife> : [
    [
      [null,null,<primal:bone_point>],
      [null,<ore:stickWood>,<ore:cordageGeneral>],
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
      [<ore:cordageGeneral>,<betterwithmods:material:4>,null],
      [<betterwithmods:material:4>,null,<betterwithmods:material:4>],
      [null,<betterwithmods:material:4>,null],
    ],
    [
      [<ore:cordageGeneral>,<ore:leather>,null],
      [<ore:leather>,null,<ore:leather>],
      [null,<ore:leather>,null],
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