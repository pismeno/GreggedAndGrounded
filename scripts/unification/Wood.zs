/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import mods.horsepower.ChoppingBlock;
import mods.betterwithmods.Saw;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

val Assoc = {
<minecraft:log> : <minecraft:planks>,
<minecraft:log:2> : <minecraft:planks:2>,
<minecraft:log2:1> : <minecraft:planks:5>,
<totemic:cedar_log> : <totemic:cedar_plank>,
<plants2:log_0:1> : <plants2:planks:3>,
<plants2:log_0> : <plants2:planks:2>,
<plants2:log_0:2> : <plants2:planks:4>,
<minecraft:log:1> : <minecraft:planks:1>,
<minecraft:log:3> : <minecraft:planks:3>,
<minecraft:log2> : <minecraft:planks:4>,
<plants2:log_0:3> : <plants2:planks:5>,
<gregtech:rubber_log> : <gregtech:planks>,
<primal:logs:1> : <primal:planks:1>,
<forestry:logs.0> : <forestry:planks.0>,
<forestry:logs.0:1> : <forestry:planks.0:1>,
<forestry:logs.0:2> : <forestry:planks.0:2>,
<forestry:logs.0:3> : <forestry:planks.0:3>,
<forestry:logs.1> : <forestry:planks.0:4>,
<forestry:logs.1:1> : <forestry:planks.0:5>,
<forestry:logs.1:2> : <forestry:planks.0:6>,
<forestry:logs.1:3> : <forestry:planks.0:7>,
<forestry:logs.2> : <forestry:planks.0:8>,
<forestry:logs.2:1> : <forestry:planks.0:9>,
<forestry:logs.2:2> : <forestry:planks.0:10>,
<forestry:logs.2:3> : <forestry:planks.0:12>,
<forestry:logs.3:1> : <forestry:planks.0:13>,
<forestry:logs.3:2> : <forestry:planks.0:14>,
<forestry:logs.3:3> : <forestry:planks.0:15>,
<forestry:logs.4> : <forestry:planks.1>,
<forestry:logs.4:1> : <forestry:planks.1:1>,
<forestry:logs.4:2> : <forestry:planks.1:2>,
<forestry:logs.4:3> : <forestry:planks.1:3>,
<forestry:logs.5> : <forestry:planks.1:4>,
<forestry:logs.5:1> : <forestry:planks.1:5>,
<forestry:logs.5:2> : <forestry:planks.1:6>,
<forestry:logs.5:3> : <forestry:planks.1:7>,
<forestry:logs.6> : <forestry:planks.1:8>,
<forestry:logs.6:1> : <forestry:planks.1:9>,
<forestry:logs.6:2> : <forestry:planks.1:10>,
<forestry:logs.6:3> : <forestry:planks.1:11>,
<forestry:logs.7> : <forestry:planks.1:12>,
<gregtechfoodoption:gtfo_log_0> : <gregtechfoodoption:gtfo_planks_0>,
<gregtechfoodoption:gtfo_log_0:4> : <gregtechfoodoption:gtfo_planks_0:1>,
<gregtechfoodoption:gtfo_log_0:8> : <gregtechfoodoption:gtfo_planks_0:2>,
<gregtechfoodoption:gtfo_log_0:12> : <gregtechfoodoption:gtfo_planks_0:3>,
<gregtechfoodoption:gtfo_log_1> : <gregtechfoodoption:gtfo_planks_0:4>,
<gregtechfoodoption:gtfo_log_1:4> : <gregtechfoodoption:gtfo_planks_0:5>,
<gregtechfoodoption:gtfo_log_1:8> : <gregtechfoodoption:gtfo_planks_0:6>,
<gregtechfoodoption:gtfo_log_1:12> : <gregtechfoodoption:gtfo_planks_0:7>,
<gregtechfoodoption:gtfo_log_2> : <gregtechfoodoption:gtfo_planks_0:8>,
<gregtechfoodoption:gtfo_log_2:4> : <gregtechfoodoption:gtfo_planks_0:9>
} as IItemStack[IItemStack];

for key, value in Assoc {
    ChoppingBlock.add(key, value * 2, 1, true);
	Saw.add(key, [value * 4, <primal:bark_oak> * 4]);

    <recipemap:saw>.recipeBuilder()
        .inputs(key)
        .outputs(value * 8, <primal:bark_oak> * 4)
        .chancedOutput(<gregtech:meta_dust:1617>, 7000, 420)
        .duration(40)
        .EUt(12)
        .buildAndRegister();
}

ChoppingBlock.add(<ore:plankWood>, <minecraft:stick> * 3, 1, true);
ChoppingBlock.add(<gregtech:planks:1>, <gregtech:meta_stick:1648> * 3, 1, true);
Saw.add(<ore:plankWood>, [<minecraft:stick> * 3]);
Saw.add(<gregtech:planks:1>, [<gregtech:meta_stick:1648> * 3]);

<recipemap:saw>.recipeBuilder()
        .inputs(<stygian:endplanks>)
        .outputs(<gregtech:meta_stick:32002> * 8)
        .chancedOutput(<gregtech:meta_dust:32002>, 7000, 420)
        .duration(40)
        .EUt(96)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<stygian:endlog>)
        .outputs(<stygian:endplanks> * 8)
        .chancedOutput(<gregtech:meta_dust:32002>, 7000, 420)
        .duration(35)
        .EUt(96)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<gregtech:meta_stick:32002>)
        .outputs(<gregtech:meta_dust:32002>)
        .duration(40)
        .EUt(96)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<stygian:endplanks>)
        .outputs(<gregtech:meta_dust:32002> * 3)
        .duration(60)
        .EUt(96)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<stygian:endlog>)
        .outputs(<gregtech:meta_dust:32002> * 12)
        .duration(60)
        .EUt(96)
        .circuit(32)
        .buildAndRegister();



<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_planks>)
        .outputs(<gregtech:meta_stick:32001> * 8)
        .chancedOutput(<gregtech:meta_dust:32001>, 7000, 420)
        .duration(40)
        .EUt(240)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_log>)
        .outputs(<integrateddynamics:menril_planks> * 8, <primal:bark_oak> * 4)
        .chancedOutput(<gregtech:meta_dust:32001>, 7000, 420)
        .duration(40)
        .EUt(240)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<gregtech:meta_stick:32001>)
        .outputs(<gregtech:meta_dust:32001>)
        .duration(40)
        .EUt(240)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_planks>)
        .outputs(<gregtech:meta_dust:32001> * 3)
        .duration(60)
        .EUt(240)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_log>)
        .outputs(<gregtech:meta_dust:32001> * 12)
        .duration(60)
        .EUt(240)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_log_filled>)
        .outputs(<gregtech:meta_dust:32001> * 24)
        .duration(60)
        .EUt(240)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<integrateddynamics:menril_log_filled>)
        .outputs(<integrateddynamics:menril_planks> * 16, <primal:bark_oak> * 4, <gregtech:meta_dust:32001>)
        .duration(40)
        .EUt(240)
        .buildAndRegister();



<recipemap:saw>.recipeBuilder()
        .inputs(<minecraft:chorus_plant>)
        .outputs(<minecraft:chorus_fruit>)
        .chancedOutput(<minecraft:chorus_fruit>, 1000, 1000)
        .duration(30)
        .EUt(96)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<gregtech:meta_stick:1648>)
        .outputs(<gregtech:meta_dust:1648>)
        .duration(20)
        .EUt(12)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<gregtech:planks:1>)
        .outputs(<gregtech:meta_stick:1648> * 8)
        .chancedOutput(<gregtech:meta_dust:1648>, 7000, 420)
        .duration(20)
        .EUt(12)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<ore:plankWood>)
        .outputs(<minecraft:stick> * 8)
        .chancedOutput(<gregtech:meta_dust:1617>, 7000, 420)
        .duration(20)
        .EUt(12)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<minecraft:stick>)
        .outputs(<gregtech:meta_dust:1617>)
        .duration(20)
        .EUt(12)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<ore:plankWood>)
        .outputs(<gregtech:meta_dust:1617> * 3)
        .duration(60)
        .EUt(12)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<ore:logWood>)
        .outputs(<gregtech:meta_dust:1617> * 12)
        .duration(60)
        .EUt(12)
        .circuit(32)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<stygian:endplanks>)
        .outputs(<gregtech:meta_dust:32002> * 12)
        .duration(60)
        .EUt(12)
        .circuit(96)
        .buildAndRegister();

<recipemap:saw>.recipeBuilder()
        .inputs(<gregtech:planks:1>)
        .outputs(<gregtech:meta_dust:1648> * 12)
        .duration(60)
        .EUt(12)
        .circuit(32)
        .buildAndRegister();
