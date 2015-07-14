// Ingredients
var iron = <ore:ingotIron>;
var wool = <minecraft:wool:*>;
var wood = <ore:plankWood>;

var diamond  = <ore:gemDiamond>;
var obsidian = <minecraft:obsidian>;

var ironBlock = <ore:blockIron>;
var ironPlate = <Steamcraft:steamcraftPlate:2>;

// Readd sticks (thanks Gany's Surface)
// TODO: Remove when fixed
recipes.addShaped(<minecraft:stick> * 4, [[ wood ], [ wood ]]);


// Misc tools

recipes.remove(<minecraft:flint_and_steel>);
mods.betterstorage.CraftingStation.addShapeless(<minecraft:flint_and_steel>,
    [ iron, <minecraft:flint> ], 1);
// Single use flint and steel
recipes.addShapeless(<minecraft:flint_and_steel>.withDamage(9001).withTag({display:{Lore:["§7Single-use only"]}}),
    [ <ore:nuggetIron>, <minecraft:flint> ]);

recipes.remove(<minecraft:shears>);
mods.betterstorage.CraftingStation.addShapedMirrored(<minecraft:shears>,
    [[ iron, null ],
     [ null, iron ]], 1);
   
recipes.remove(<minecraft:bucket>);
mods.betterstorage.CraftingStation.addShaped(<minecraft:bucket>,
    [[ ironPlate,      null, ironPlate ],
     [      null, ironPlate,      null ]], 2);

// Misc blocks

recipes.remove(<minecraft:bed>);
mods.betterstorage.CraftingStation.addShaped(<minecraft:bed>,
    [[ wool, wool, wool ],
     [ wood, wood, wood ]], 20);

recipes.remove(<minecraft:enchanting_table>);
mods.betterstorage.CraftingStation.addShaped(<minecraft:enchanting_table>,
    [[     null,      <minecraft:enchanted_book>,     null ],
     [  diamond,             <minecraft:wool:14>,  diamond ],
     [ obsidian, <Thaumcraft:blockCosmeticSolid>, obsidian ]], 25);

recipes.remove(<minecraft:anvil>);
mods.betterstorage.CraftingStation.addShaped(<minecraft:anvil>,
    [[ ironBlock, ironBlock, ironBlock ],
     [      null, ironPlate,      null ],
     [ ironPlate, ironPlate, ironPlate ]], 15);
