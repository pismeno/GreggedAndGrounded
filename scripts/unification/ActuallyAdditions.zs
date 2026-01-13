/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;

val tick = 20;
val minute = 60 * tick;

val VA = [7, 30, 120, 480, 1920, 7680, 30720, 122880, 491520, 1966080] as int[];

val ULV = 0;
val LV = 1;
val MV = 2;
val HV = 3;
val EV = 4;
val IV = 5;
val LuV = 6;
val ZPM = 7;
val UV = 8;
val UHV = 9;

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:*>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:*>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:*>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:*>);

AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <minecraft:redstone>, 2000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <minecraft:dye:4>, 2000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <minecraft:diamond>, 2000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <gregtech:meta_gem:319>, 2000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <minecraft:emerald>, 2000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <gregtech:meta_ingot:323>, 2000);
AtomicReconstructor.addRecipe(<gagtweaks:peccorite_crystal>, <gregtech:meta_ingot:25>, 2000);
AtomicReconstructor.addRecipe(<gagtweaks:nitanite_crystal>, <gregtech:meta_ingot:113>, 2000);

AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal>, <minecraft:redstone_block>, 16000);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:1>, <minecraft:lapis_block>, 16000);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:2>, <minecraft:diamond_block>, 16000);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:3>, <gregtech:meta_block_compressed_19:15>, 16000);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:4>, <minecraft:emerald_block>, 16000);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:5>, <gregtech:meta_block_compressed_20:3>, 16000);
AtomicReconstructor.addRecipe(<gagtweaks:peccorite_crystal_block>, <gregtech:meta_block_compressed_1:9>, 16000);
AtomicReconstructor.addRecipe(<gagtweaks:nitanite_crystal_block>, <gregtech:meta_block_compressed_7:1>, 16000);

AtomicReconstructor.addRecipe(<actuallyadditions:item_misc:18>, <gregtech:meta_lens:2000>, 2000);
AtomicReconstructor.addRecipe(<gregtech:meta_dust:1615>, <minecraft:wheat>, 80);
AtomicReconstructor.addRecipe(<gregtech:meta_dust:32009>, <primal:corn_seeds>, 80);

<extrautils2:ingredients:11>.addTooltip(format.italic("Requires 8 000 000 000 EU total. Supply with at least " + VA[ZPM] + " EU/t per stand."));
Empowerer.addRecipe(<extrautils2:ingredients:11>, <gregtech:meta_ingot:82>, <gregtech:meta_item_1:283>, <gregtech:meta_plate_dense:128>, <netherex:blazed_wither_bone>, <minecraft:dragon_breath>, 2000000000, 3816, [1.0, 0.0, 0.0]);

<extrautils2:unstableingots>.addTooltip(format.italic("Requires 8 000 000 000 EU total. Supply with at least " + VA[ZPM] + " EU/t per stand."));
Empowerer.addRecipe(<extrautils2:unstableingots>, <gregtech:meta_ingot:1007>, <gregtech:meta_item_1:498>, <actuallyadditions:block_crystal_empowered:5>, <gregtech:meta_gear:127>, <gregtechfoodoption:gtfo_meta_item:129>, 2000000000, 3816, [1.0, 1.0, 1.0]);

<soulshardsrespawn:materials>.addTooltip(format.italic("Requires 11 059 200 EU total. Supply with at least " + VA[LuV] + " EU/t per stand."));
Empowerer.addRecipe(<soulshardsrespawn:materials>, <galacticraftcore:item_basic_moon>, <soulshardsrespawn:materials:2>, <soulshardsrespawn:materials:1>, <soulshardsrespawn:materials:2>, <soulshardsrespawn:materials:1>, minute * 20 * VA[LuV], minute * 20, [0.29, 0.0, 0.51]);

<actuallyadditions:item_crystal_empowered:0>.addTooltip(format.italic("Requires 13 248 000 EU total. Supply with at least " + VA[HV] + " per stand."));
<actuallyadditions:block_crystal_empowered:0>.addTooltip(format.italic("Requires 13 248 000 EU total. Supply with at least " + VA[HV] + " per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:0>, <actuallyadditions:block_crystal:0>, <gregtech:meta_dust:2517>, <gregtech:meta_gem_flawless:2016>, <gregtech:meta_dust:2514>, <gregtechfoodoption:gtfo_oredict_item:1120>, minute * 20 * VA[HV], minute * 20, [0.902, 0.008, 0.008]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:0>, <actuallyadditions:item_crystal:0>, <gregtech:meta_dust:2517>, <gregtech:meta_gem_flawless:2016>, <gregtech:meta_dust:2514>, <gregtechfoodoption:gtfo_oredict_item:1120>, 2760 * VA[HV], 2760, [0.902, 0.008, 0.008]);

<actuallyadditions:item_crystal_empowered:5>.addTooltip(format.italic("Requires 13 248 000 EU total. Supply with at least " + VA[HV] + " per stand."));
<actuallyadditions:block_crystal_empowered:5>.addTooltip(format.italic("Requires 13 248 000 EU total. Supply with at least " + VA[HV] + " per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <gregtech:meta_ingot:2038>, <forestry:crafting_material:3>, <minecraft:quartz>, <tconstruct:clear_glass>, minute * 20 * VA[HV], minute * 20, [1.0, 1.0, 1.0]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <gregtech:meta_ingot:2038>, <forestry:crafting_material:3>, <minecraft:quartz>, <tconstruct:clear_glass>, 2760 * VA[HV], 2760, [1.0, 1.0, 1.0]);

<actuallyadditions:item_crystal_empowered:3>.addTooltip(format.italic("Requires 26 496 000 EU total. Supply with at least " + VA[EV] + " EU/t per stand."));
<actuallyadditions:block_crystal_empowered:3>.addTooltip(format.italic("Requires 26 496 000 EU total. Supply with at least " + VA[EV] + " EU/t per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <gregtech:meta_ingot:1068>, <gregtech:meta_gem_exquisite:32010>, <gregtech:meta_ingot:115>, <tconstruct:materials:14>, minute * 20 * VA[EV], minute * 20, [0.0, 0.0, 0.0]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <gregtech:meta_ingot:1068>, <gregtech:meta_gem_exquisite:32010>, <gregtech:meta_ingot:115>, <tconstruct:materials:14>, 2760 * VA[EV], 2760, [0.0, 0.0, 0.0]);

<actuallyadditions:item_crystal_empowered:1>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
<actuallyadditions:block_crystal_empowered:1>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <gregtech:meta_gem:1647>, <gregtech:meta_ingot:50>, <tconstruct:ingots>, <gregtech:meta_ingot:451>, minute * 20 * VA[IV], minute * 20, [0.0, 0.0, 0.4275]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <gregtech:meta_gem:1647>, <gregtech:meta_ingot:50>, <tconstruct:ingots>, <gregtech:meta_ingot:451>, 2760 * VA[IV], 2760, [0.0, 0.0, 0.4275]);

<actuallyadditions:item_crystal_empowered:2>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
<actuallyadditions:block_crystal_empowered:2>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <gregtech:meta_ingot:2527>, <gregtech:meta_ingot:104>, <forestry:bee_combs_0:4>, <gregtech:meta_ingot:50>, minute * 20 * VA[IV], minute * 20, [0.5490, 0.5569, 0.9569]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <gregtech:meta_ingot:2527>, <gregtech:meta_ingot:104>, <forestry:bee_combs_0:4>, <gregtech:meta_ingot:50>, 2760 * VA[IV], 2760, [0.5490, 0.5569, 0.9569]);

<gagtweaks:peccorite_crystal_empowered>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
<gagtweaks:peccorite_crystal_block_empowered>.addTooltip(format.italic("Requires 106 000 000 EU total. Supply with at least " + VA[IV] + " EU/t per stand."));
Empowerer.addRecipe(<gagtweaks:peccorite_crystal_block_empowered>, <gagtweaks:peccorite_crystal_block>, <tconstruct:materials:11>, <tconstruct:ingots:1>, <forestry:bee_combs_0:2>, <galacticraftcore:basic_item:10>, minute * 20 * VA[IV], minute * 20, [0.9569, 0.3059, 0.0]);
Empowerer.addRecipe(<gagtweaks:peccorite_crystal_empowered>, <gagtweaks:peccorite_crystal>, <tconstruct:materials:11>, <tconstruct:ingots:1>, <forestry:bee_combs_0:2>, <galacticraftcore:basic_item:10>, 2760 * VA[IV], 2760, [0.9569, 0.3059, 0.0]);

<actuallyadditions:item_crystal_empowered:4>.addTooltip(format.italic("Requires 424 000 000 EU total. Supply with at least " + VA[LuV] + " EU/t per stand."));
<actuallyadditions:block_crystal_empowered:4>.addTooltip(format.italic("Requires 424 000 000 EU total. Supply with at least " + VA[LuV] + " EU/t per stand."));
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <gregtech:meta_ingot:427>, <gregtechfoodoption:gtfo_meta_item:350>, <gregtech:meta_ingot:11>, <betterwithmods:creeper_oyster>, minute * 20 * VA[LuV], minute * 20, [0.0, 1.0, 0.0]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <gregtech:meta_ingot:427>, <gregtechfoodoption:gtfo_meta_item:350>, <gregtech:meta_ingot:11>, <betterwithmods:creeper_oyster>, 2760 * VA[LuV], 2760, [0.0, 1.0, 0.0]);

<gagtweaks:nitanite_crystal_empowered>.addTooltip(format.italic("Requires 424 000 000 EU total. Supply with at least " + VA[LuV] + " EU/t per stand."));
<gagtweaks:nitanite_crystal_block_empowered>.addTooltip(format.italic("Requires 424 000 000 EU total. Supply with at least " + VA[LuV] + " EU/t per stand."));
Empowerer.addRecipe(<gagtweaks:nitanite_crystal_block_empowered>, <gagtweaks:nitanite_crystal_block>, <gregtech:meta_ingot:48>, <gregtech:meta_ingot:130>, <gregtech:meta_ingot:396>, <tconstruct:ingots:3>, minute * 20 * VA[LuV], minute * 20, [0.608, 0.216, 0.706]);
Empowerer.addRecipe(<gagtweaks:nitanite_crystal_empowered>, <gagtweaks:nitanite_crystal>, <gregtech:meta_ingot:48>, <gregtech:meta_ingot:130>, <gregtech:meta_ingot:396>, <tconstruct:ingots:3>, 2760 * VA[LuV], 2760, [0.608, 0.216, 0.706]);