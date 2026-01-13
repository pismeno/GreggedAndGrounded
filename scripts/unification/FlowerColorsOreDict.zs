/*
// This script was made for the Gregged & Grounded modpack.
// Do not copy it, but feel free to look at it and use the knowledge you gain from it!
*/

import crafttweaker.item.IItemStack;

static Yellow as IItemStack[] = [
<minecraft:yellow_flower>,
<minecraft:double_plant>,
<plants2:cosmetic_2:3>,
<plants2:cosmetic_2:4>,
<plants2:cosmetic_2:10>,
<plants2:cosmetic_2:12>,
<plants2:cosmetic_3:4>,
<plants2:cosmetic_2>,
<plants2:cosmetic_3:15>,
<plants2:cosmetic_4:6>,
<plants2:cosmetic_4:7>,
<plants2:cosmetic_4:8>,
<plants2:cosmetic_5:2>,
<plants2:cosmetic_5:4>,
<plants2:desert_0:2>,
<plants2:desert_0:5>,
<plants2:desert_0:7>,
<plants2:desert_0:10>,
<plants2:double_0:3>
];

static Red as IItemStack[] = [
<minecraft:red_flower>,
<minecraft:red_flower:4>,
<minecraft:double_plant:4>,
<plants2:cosmetic_0:13>,
<plants2:cosmetic_0:14>,
<plants2:cosmetic_0:7>,
<plants2:cosmetic_0:8>,
<plants2:cosmetic_0:1>,
<plants2:cosmetic_0:5>,
<plants2:cosmetic_1:10>,
<plants2:cosmetic_1:13>,
<plants2:cosmetic_2:7>,
<plants2:cosmetic_2:5>,
<plants2:cosmetic_2:13>,
<plants2:cosmetic_3:6>,
<plants2:cosmetic_3:2>,
<plants2:cosmetic_3>,
<plants2:cosmetic_5:7>,
<plants2:desert_0:13>,
<plants2:double_0:5>,
<plants2:harvest_1>,
<plants2:harvest_1:3>,
<plants2:afgekia_m>,
<plants2:akebia_q_vine>
];

static Blue as IItemStack[] = [
<minecraft:red_flower:1>,
<plants2:cosmetic_1>,
<plants2:cosmetic_1:4>,
<plants2:cosmetic_1:9>,
<plants2:cosmetic_2:6>,
<plants2:cosmetic_5:1>,
<plants2:cosmetic_5:3>,
<plants2:cosmetic_4:14>
];

static Pink as IItemStack[] = [
<minecraft:red_flower:2>,
<minecraft:red_flower:7>,
<minecraft:double_plant:1>,
<minecraft:double_plant:5>,
<plants2:cosmetic_0:4>,
<plants2:cosmetic_1:2>,
<plants2:cosmetic_0:11>,
<plants2:cosmetic_3:3>,
<plants2:cosmetic_3:12>,
<plants2:harvest_1:1>,
<plants2:cosmetic_4:1>,
<plants2:cosmetic_4:5>,
<plants2:cosmetic_5:5>,
<plants2:cosmetic_5:11>,
<plants2:cosmetic_6:2>,
<plants2:desert_0>,
<plants2:double_0:2>,
<plants2:desert_0:3>
];

static White as IItemStack[] = [
<minecraft:red_flower:3>,
<minecraft:red_flower:6>,
<minecraft:red_flower:8>,
<plants2:cosmetic_0>,
<plants2:cosmetic_0:2>,
<plants2:cosmetic_0:6>,
<plants2:cosmetic_0:15>,
<plants2:cosmetic_0:10>,
<plants2:cosmetic_1:1>,
<plants2:cosmetic_1:3>,
<plants2:cosmetic_1:5>,
<plants2:cosmetic_1:8>,
<plants2:cosmetic_1:12>,
<plants2:cosmetic_1:15>,
<plants2:cosmetic_2:1>,
<plants2:cosmetic_2:2>,
<plants2:cosmetic_2:15>,
<plants2:cosmetic_3:5>,
<plants2:cosmetic_3:10>,
<plants2:cosmetic_3:9>,
<plants2:cosmetic_4>,
<plants2:cosmetic_5:9>,
<plants2:cosmetic_4:12>,
<plants2:cosmetic_5:12>,
<plants2:cosmetic_5:14>,
<plants2:cosmetic_6:3>,
<plants2:double_0>,
<plants2:double_0:4>,
<plants2:desert_0:15>,
<plants2:desert_0:8>,
<plants2:harvest_0:3>,
<plants2:harvest_0>,
<plants2:androsace_a>,
<plants2:harvest_1:2>,
<plants2:double_harvest_0>,
<plants2:adlumia_f>
];

static Orange as IItemStack[] = [
<minecraft:red_flower:5>,
<plants2:cosmetic_3:13>,
<plants2:cosmetic_4:8>,
<plants2:cosmetic_4:11>,
<plants2:desert_0:1>,
<plants2:double_0:6>
];

static Purple as IItemStack[] = [
<plants2:harvest_0:7>,
<plants2:cosmetic_1:7>,
<plants2:cosmetic_3:11>,
<plants2:cosmetic_5:6>,
<plants2:cosmetic_5:13>,
<plants2:double_0:1>,
<plants2:harvest_1:3>,
<plants2:harvest_0:5>
];

static Green as IItemStack[] = [
<plants2:cosmetic_3:14>,
<plants2:cosmetic_4:13>,
<plants2:cosmetic_4:10>,
<plants2:cosmetic_5:10>,
<plants2:cosmetic_5:10>,
<plants2:desert_1:3>,
<minecraft:cactus>,
<minecraft:tallgrass:1>,
<plants2:desert_1:2>
];

function init() as void {
    for flower in Yellow{
        <ore:plantYellow>.add(flower);
    }
    for flower in Red{
        <ore:plantRed>.add(flower);
    }
    for flower in Blue{
        <ore:plantBlue>.add(flower);
    }
    for flower in Pink{
        <ore:plantPink>.add(flower);
    }
    for flower in White{
        <ore:plantWhite>.add(flower);
    }
    for flower in Orange{
        <ore:plantOrange>.add(flower);
    }
    for flower in Purple{
        <ore:plantPurple>.add(flower);
    }
    for flower in Green{
        <ore:plantGreen>.add(flower);
    }
}