/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val addToJEI = [
<gregtech:knife>.withTag({"GT.Behaviours": {}, HideFlags: 2, "GT.Tool": {Material: "gregtech:flint"}}),
<horsepower:chopping_block>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
<horsepower:chopper>
] as IItemStack[];


for item in addToJEI {
    JEI.addItem(item);
}