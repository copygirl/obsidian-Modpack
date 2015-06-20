// Ingredients
var _void = <Thaumcraft:ItemResource:16>;
var thaumiumPlate = <Steamcraft:steamcraftPlate:5>;

var gildedSword   = <Steamcraft:swordGildedGold>;
var gildedPickaxe = <Steamcraft:pickGildedGold>;
var gildedShovel  = <Steamcraft:shovelGildedGold>;
var gildedAxe     = <Steamcraft:axeGildedGold>;
var gildedHoe     = <Steamcraft:hoeGildedGold>;

var ironSword   = <minecraft:iron_sword>;
var ironPickaxe = <minecraft:iron_pickaxe>;
var ironShovel  = <minecraft:iron_shovel>;
var ironAxe     = <minecraft:iron_axe>;
var ironHoe     = <minecraft:iron_hoe>;


// Thaumium

recipes.remove(<Thaumcraft:ItemSwordThaumium>);
recipes.remove(<Thaumcraft:ItemPickThaumium>);
recipes.remove(<Thaumcraft:ItemShovelThaumium>);
recipes.remove(<Thaumcraft:ItemAxeThaumium>);
recipes.remove(<Thaumcraft:ItemHoeThaumium>);

mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemSwordThaumium>,
    [[ thaumiumPlate ],
     [ thaumiumPlate ],
     [   gildedSword ]], 6);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemPickThaumium>,
    [[ thaumiumPlate, thaumiumPlate, thaumiumPlate ],
     [          null, gildedPickaxe,          null ]], 8);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemShovelThaumium>,
    [[ thaumiumPlate ],
     [  gildedShovel ]], 5);
mods.betterstorage.CraftingStation.addShapedMirrored(<Thaumcraft:ItemAxeThaumium>,
    [[ thaumiumPlate, thaumiumPlate ],
     [ thaumiumPlate,     gildedAxe ]], 5);
mods.betterstorage.CraftingStation.addShapedMirrored(<Thaumcraft:ItemHoeThaumium>,
    [[ thaumiumPlate, thaumiumPlate ],
     [          null,     gildedHoe ]], 3);


// Void

recipes.remove(<Thaumcraft:ItemSwordVoid>);
recipes.remove(<Thaumcraft:ItemPickVoid>);
recipes.remove(<Thaumcraft:ItemShovelVoid>);
recipes.remove(<Thaumcraft:ItemAxeVoid>);
recipes.remove(<Thaumcraft:ItemHoeVoid>);

mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemSwordVoid>,
    [[     _void ],
     [     _void ],
     [ ironSword ]], 9);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemPickVoid>,
    [[ _void,       _void, _void ],
     [  null, ironPickaxe,  null ]], 12);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemShovelVoid>,
    [[      _void ],
     [ ironShovel ]], 8);
mods.betterstorage.CraftingStation.addShapedMirrored(<Thaumcraft:ItemAxeVoid>,
    [[ _void,   _void ],
     [ _void, ironAxe ]], 8);
mods.betterstorage.CraftingStation.addShapedMirrored(<Thaumcraft:ItemHoeVoid>,
    [[ _void,   _void ],
     [  null, ironHoe ]], 5);
