// Ingredients
var stick = <ore:stickWood>;

var stone  = <ore:stone>;
var flint  = <minecraft:flint>;
var binder = <minecraft:string>;

var gold    = <ore:ingotGold>;
var diamond = <ore:gemDiamond>;
var emerald = <ore:gemEmerald>;

var ironPlate = <Steamcraft:steamcraftPlate:2>;

var ironSword   = <minecraft:iron_sword>;
var ironPickaxe = <minecraft:iron_pickaxe>;
var ironShovel  = <minecraft:iron_shovel>;
var ironAxe     = <minecraft:iron_axe>;
var ironHoe     = <minecraft:iron_hoe>;


// Stone Tools

recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:stone_hoe>);

recipes.addShaped(<minecraft:stone_sword>,
    [[   null, flint,   null ],
     [   null, stone,   null ],
     [ binder, stick, binder ]]);
recipes.addShaped(<minecraft:stone_pickaxe>,
    [[  flint, stone,  flint ],
     [ binder, stick, binder ],
     [   null, stick,   null ]]);
recipes.addShaped(<minecraft:stone_shovel>,
    [[   null, flint,   null ],
     [ binder, stick, binder ],
     [   null, stick,   null ]]);
recipes.addShapedMirrored(<minecraft:stone_axe>,
    [[  flint, stone,   null ],
     [  flint, stick,   null ],
     [ binder, stick, binder ]]);
recipes.addShapedMirrored(<minecraft:stone_hoe>,
    [[  flint, stone,   null ],
     [ binder, stick, binder ],
     [   null, stick,   null ]]);


// Gold Tools

recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:golden_hoe>);

mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_sword>,
    [[  gold ],
     [  gold ],
     [ stick ]], 2);
mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_pickaxe>,
    [[ gold,  gold, gold ],
     [ null, stick, null ],
     [ null, stick, null ]], 2);
mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_shovel>,
    [[  gold ],
     [ stick ],
     [ stick ]], 1);
mods.betterstorage.CraftingStation.addShapedMirrored(<minecraft:golden_axe>,
    [[ gold,  gold ],
     [ gold, stick ],
     [ null, stick ]], 1);
mods.betterstorage.CraftingStation.addShapedMirrored(<minecraft:golden_hoe>,
    [[ gold,  gold ],
     [ null, stick ],
     [ null, stick ]], 1);


// Iron Tools

recipes.remove(ironSword);
recipes.remove(ironPickaxe);
recipes.remove(ironShovel);
recipes.remove(ironAxe);
recipes.remove(ironHoe);

mods.betterstorage.CraftingStation.addShaped(ironSword,
    [[ ironPlate ],
     [ ironPlate ],
     [     stick ]], 4);
mods.betterstorage.CraftingStation.addShaped(ironPickaxe,
    [[ ironPlate, ironPlate, ironPlate ],
     [      null,     stick,      null ],
     [      null,     stick,      null ]], 6);
mods.betterstorage.CraftingStation.addShaped(ironShovel,
    [[ ironPlate ],
     [     stick ],
     [     stick ]], 3);
mods.betterstorage.CraftingStation.addShapedMirrored(ironAxe,
    [[ ironPlate, ironPlate ],
     [ ironPlate,     stick ],
     [      null,     stick ]], 3);
mods.betterstorage.CraftingStation.addShapedMirrored(ironHoe,
    [[ ironPlate, ironPlate ],
     [      null,     stick ],
     [      null,     stick ]], 2);


// Diamond Tools

recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:diamond_hoe>);

mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_sword>,
    [[ diamond ],
     [ emerald ],
     [ ironSword ]], 8);
mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_pickaxe>,
    [[ diamond,     emerald, diamond ],
     [    null, ironPickaxe,    null ]], 12);
mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_shovel>,
    [[    diamond ],
     [ ironShovel ]], 6);
mods.betterstorage.CraftingStation.addShapedMirrored(<minecraft:diamond_axe>,
    [[ diamond, emerald ],
     [ diamond, ironAxe ]], 6);
mods.betterstorage.CraftingStation.addShapedMirrored(<minecraft:diamond_hoe>,
    [[ diamond, emerald ],
     [    null, ironHoe ]], 4);
