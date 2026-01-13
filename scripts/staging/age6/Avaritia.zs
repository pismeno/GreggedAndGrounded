/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;

val removed = [
<avaritia:resource:4>,
<avaritia:resource:5>,
<avaritia:resource:6>,
<avaritia:endest_pearl>,
<avaritia:infinity_pickaxe>,
<avaritia:infinity_bow>,
<avaritia:infinity_sword>,
<avaritia:infinity_chestplate>,
<avaritia:infinity_pants>,
<avaritia:skullfire_sword>,
<avaritia:neutron_collector>,
<avaritia:neutronium_compressor>
] as IItemStack[];

for item in removed {
    ExtremeCrafting.remove(item);
}

ExtremeCrafting.addShaped("NeutroniteIngot", <avaritia:resource:4>, [
    [null,null,null,null,null,null,null,null,null],
    [null,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,
    <gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,null],
    [null,<gregtech:meta_ingot:127>,<extrautils2:ingredients:17>,<extrautils2:ingredients:17>,<extrautils2:ingredients:17>,
    <extrautils2:ingredients:17>,<extrautils2:ingredients:17>,<gregtech:meta_ingot:127>,null],
    [null,<gregtech:meta_ingot:127>,<extrautils2:ingredients:17>,<extrautils2:ingredients:17>,<extrautils2:ingredients:17>,
    <extrautils2:ingredients:17>,<extrautils2:ingredients:17>,<gregtech:meta_ingot:127>,null],
    [null,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,
    <gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,<gregtech:meta_ingot:127>,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("InfinityIngot", <avaritia:resource:6>, [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>],
    [<extrautils2:ingredients:12>,<extrautils2:ingredients:17>,<soulshardsrespawn:materials>,<avaritia:resource:4>,<extrautils2:ingredients:17>,<avaritia:resource:4>,<soulshardsrespawn:materials>,<extrautils2:ingredients:17>,<extrautils2:ingredients:12>],
    [<extrautils2:ingredients:11>,<avaritia:resource:4>,<extrautils2:ingredients:11>,<soulshardsrespawn:materials>,<avaritia:resource:4>,<soulshardsrespawn:materials>,<extrautils2:ingredients:11>,<avaritia:resource:4>,<extrautils2:ingredients:11>],
    [<extrautils2:ingredients:12>,<extrautils2:ingredients:17>,<soulshardsrespawn:materials>,<avaritia:resource:4>,<extrautils2:ingredients:17>,<avaritia:resource:4>,<soulshardsrespawn:materials>,<extrautils2:ingredients:17>,<extrautils2:ingredients:12>],
    [<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>,<extrautils2:ingredients:12>,<extrautils2:unstableingots:2>],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("Catalyst", <avaritia:resource:5>, [
    [null,null,null,null,<avaritia:resource:6>,null,null,null,null],
    [null,<avaritia:resource:6>,null,null,<gregtechfoodoption:gtfo_meta_item:194>,null,null,<avaritia:resource:6>,null],
    [null,null,<avaritia:resource:6>,null,<avaritia:resource:6>,null,<avaritia:resource:6>,null,null],
    [null,null,null,<avaritia:resource:6>,<projecte:item.pe_matter:1>,<avaritia:resource:6>,null,null,null],
    [<avaritia:resource:6>,<avaritia:ultimate_stew>,<avaritia:resource:6>,<minecraft:totem_of_undying>,<avaritia:endest_pearl>,
    <minecraft:totem_of_undying>,<avaritia:resource:6>,<avaritia:ultimate_stew>,<avaritia:resource:6>],
    [null,null,null,<avaritia:resource:6>,<projecte:item.pe_matter:1>,<avaritia:resource:6>,null,null,null],
    [null,null,<avaritia:resource:6>,null,<avaritia:resource:6>,null,<avaritia:resource:6>,null,null],
    [null,<avaritia:resource:6>,null,null,<gregtechfoodoption:gtfo_meta_item:194>,null,null,<avaritia:resource:6>,null],
    [null,null,null,null,<avaritia:resource:6>,null,null,null,null]
]);

ExtremeCrafting.addShaped("EndestPearl", <avaritia:endest_pearl>, [
    [null,null,null,<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>,null,null,null],
    [null,<minecraft:end_stone>,<minecraft:end_stone>,<gregtech:meta_item_1:281>,<gregtech:meta_item_1:281>,<gregtech:meta_item_1:281>,<minecraft:end_stone>,<minecraft:end_stone>,null],
    [null,<minecraft:end_stone>,<gregtech:meta_item_1:281>,<minecraft:ender_pearl>,<minecraft:nether_star>,<minecraft:ender_pearl>,<gregtech:meta_item_1:281>,<minecraft:end_stone>,null],
    [<minecraft:end_stone>,<gregtech:meta_item_1:281>,<minecraft:ender_pearl>,<minecraft:nether_star>,<gregtech:meta_item_1:282>,<minecraft:nether_star>,<minecraft:ender_pearl>,<gregtech:meta_item_1:281>,<minecraft:end_stone>],
    [<minecraft:end_stone>,<gregtech:meta_item_1:281>,<minecraft:nether_star>,<gregtech:meta_item_1:282>,<gregtech:meta_item_1:283>,<gregtech:meta_item_1:282>,<minecraft:nether_star>,<gregtech:meta_item_1:281>,<minecraft:end_stone>],
    [<minecraft:end_stone>,<gregtech:meta_item_1:281>,<minecraft:ender_pearl>,<minecraft:nether_star>,<gregtech:meta_item_1:282>,<minecraft:nether_star>,<minecraft:ender_pearl>,<gregtech:meta_item_1:281>,<minecraft:end_stone>],
    [null,<minecraft:end_stone>,<gregtech:meta_item_1:281>,<minecraft:ender_pearl>,<minecraft:nether_star>,<minecraft:ender_pearl>,<gregtech:meta_item_1:281>,<minecraft:end_stone>,null],
    [null,<minecraft:end_stone>,<minecraft:end_stone>,<gregtech:meta_item_1:281>,<gregtech:meta_item_1:281>,<gregtech:meta_item_1:281>,<minecraft:end_stone>,<minecraft:end_stone>,null],
    [null,null,null,<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>,null,null,null]
]);

ExtremeCrafting.addShaped("TransmutationTablet", <projecte:item.pe_transmutation_tablet>, [
    [null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null],
    [<avaritia:resource:6>,<avaritia:resource:6>,<gregtech:meta_item_1:647>,<avaritia:resource:5>,<gregtech:meta_item_1:239>,<gregtech:meta_item_1:209>,<gregtech:meta_item_1:647>,<avaritia:resource:6>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<gregtech:meta_item_1:647>,<gregtech:meta_item_1:753>.withTag({Charge: 9223372036854775807 as long}),<projecte:item.pe_matter:1>,<avaritia:resource:5>,<projecte:item.pe_matter:1>,<gregtech:meta_item_1:753>.withTag({Charge: 9223372036854775807 as long}),<gregtech:meta_item_1:647>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<gregtech:meta_item_1:209>,<projecte:item.pe_matter:1>,<extraplanets:tier10_items:3>,<avaritia:resource:5>,<extraplanets:tier10_items:3>,<projecte:item.pe_matter:1>,<avaritia:resource:5>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<gregtech:meta_item_1:239>,<avaritia:resource:5>,<avaritia:resource:5>,<gregtech:meta_item_1:1000>,<avaritia:resource:5>,<avaritia:resource:5>,<gregtech:meta_item_1:239>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<avaritia:resource:5>,<projecte:item.pe_matter:1>,<extraplanets:tier10_items:3>,<avaritia:resource:5>,<extraplanets:tier10_items:3>,<projecte:item.pe_matter:1>,<gregtech:meta_item_1:209>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<gregtech:meta_item_1:647>,<gregtech:meta_item_1:753>.withTag({Charge: 9223372036854775807 as long}),<projecte:item.pe_matter:1>,<avaritia:resource:5>,<projecte:item.pe_matter:1>,<gregtech:meta_item_1:753>.withTag({Charge: 9223372036854775807 as long}),<gregtech:meta_item_1:647>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<avaritia:resource:6>,<gregtech:meta_item_1:647>,<gregtech:meta_item_1:209>,<gregtech:meta_item_1:239>,<avaritia:resource:5>,<gregtech:meta_item_1:647>,<avaritia:resource:6>,<avaritia:resource:6>],
    [null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null]
]);

ExtremeCrafting.addShaped("CreativeGP", <extrautils2:passivegenerator:6>, [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<extrautils2:ingredients:1>,<extrautils2:ingredients:2>,<extrautils2:ingredients:1>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<extrautils2:ingredients:2>,<avaritia:resource:5>,<extrautils2:ingredients:2>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<extrautils2:ingredients:1>,<extrautils2:ingredients:2>,<extrautils2:ingredients:1>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("CreativeME", <appliedenergistics2:creative_energy_cell>, [
    [null,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,null],
    [null,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,<ore:wireGtHexRutheniumTriniumAmericiumNeutronate>,null,null],
    [null,null,<avaritia:resource:6>,<avaritia:resource:6>,<gregtech:meta_item_1:606>,<avaritia:resource:6>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<appliedenergistics2:material:38>,<avaritia:resource:6>,<appliedenergistics2:material:38>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<avaritia:resource:5>,<gregtech:meta_item_1:647>,<avaritia:resource:5>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<appliedenergistics2:material:38>,<avaritia:resource:6>,<appliedenergistics2:material:38>,<avaritia:resource:6>,null,null],
    [null,null,<avaritia:resource:6>,<avaritia:resource:6>,<gregtech:meta_item_1:606>,<avaritia:resource:6>,<avaritia:resource:6>,null,null],
    [null,null,<appliedenergistics2:part:76>,null,<appliedenergistics2:part:76>,null,<appliedenergistics2:part:76>,null,null],
    [null,null,<appliedenergistics2:part:76>,null,<appliedenergistics2:part:76>,null,<appliedenergistics2:part:76>,null,null]
]);

ExtremeCrafting.addShaped("PhilosophersStone", <projecte:item.pe_philosophers_stone>.withTag({}), [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,<extrautils2:ingredients:11>,<extrautils2:ingredients:11>,<extrautils2:ingredients:11>,null,null,null],
    [null,null,<extrautils2:ingredients:11>,<gregtech:meta_plate:32022>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32022>,<extrautils2:ingredients:11>,null,null],
    [null,<extrautils2:ingredients:11>,<gregtech:meta_plate:32010>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32022>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32010>,<extrautils2:ingredients:11>,null],
    [null,<extrautils2:ingredients:11>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32010>,<avaritia:endest_pearl>,<gregtech:meta_plate:32010>,<gregtech:meta_plate:127>,<extrautils2:ingredients:11>,null],
    [null,<extrautils2:ingredients:11>,<gregtech:meta_plate:32010>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32022>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32010>,<extrautils2:ingredients:11>,null],
    [null,null,<extrautils2:ingredients:11>,<gregtech:meta_plate:32022>,<gregtech:meta_plate:127>,<gregtech:meta_plate:32022>,<extrautils2:ingredients:11>,null,null],
    [null,null,null,<extrautils2:ingredients:11>,<extrautils2:ingredients:11>,<extrautils2:ingredients:11>,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("AngelRing", <extrautils2:angelring>, [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,null,null,null,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,null],
    [null,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,<avaritia:resource:5>,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,<extrautils2:unstableingots:2>,null],
    [null,null,<extrautils2:unstableingots:2>,<avaritia:resource:5>,<gregtech:meta_ring:301>,<avaritia:resource:5>,<extrautils2:unstableingots:2>,null,null],
    [null,null,null,null,<avaritia:resource:5>,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("Pickaxe", <avaritia:infinity_pickaxe>, [
    [null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null],
    [<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:5>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<avaritia:resource:6>,null,null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null],
    [null,null,null,null,<avaritia:resource:4>,null,null,null,null]
]);

ExtremeCrafting.addShaped("Swoord", <avaritia:infinity_sword>, [
    [null,null,null,null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>],
    [null,null,null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>],
    [null,null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null],
    [null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null,null],
    [null,<avaritia:resource:4>,null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null,null,null],
    [null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,null,null,null,null],
    [null,null,<avaritia:resource:4>,<avaritia:resource:4>,null,null,null,null,null],
    [null,<avaritia:resource:4>,null,null,<avaritia:resource:4>,null,null,null,null],
    [<avaritia:resource:5>,null,null,null,null,null,null,null,null]
]);

ExtremeCrafting.addShaped("Pants", <avaritia:infinity_pants>, [
    [<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:5>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:5>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:4>],
    [<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>]
]);

ExtremeCrafting.addShaped("Chestplate", <avaritia:infinity_chestplate>, [
    [null,<avaritia:resource:4>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:4>,null],
    [<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,null,null,null,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>],
    [null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>,null],
    [null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:5>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>,null],
    [null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>,null],
    [null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>,null],
    [null,<avaritia:resource:4>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:4>,null],
    [null,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,null]
]);