// TODO: Adjust durability of tools

// Ingredients
var stick = <ore:stickWood>;
var gold  = <ore:ingotGold>;
var brassPlate = <Steamcraft:steamcraftPlate:4>;

var ironSword   = <minecraft:iron_sword>;
var ironPickaxe = <minecraft:iron_pickaxe>;
var ironShovel  = <minecraft:iron_shovel>;
var ironAxe     = <minecraft:iron_axe>;
var ironHoe     = <minecraft:iron_hoe>;


// Brass Tools

recipes.remove(<Steamcraft:swordBrass>);
recipes.remove(<Steamcraft:pickBrass>);
recipes.remove(<Steamcraft:shovelBrass>);
recipes.remove(<Steamcraft:axeBrass>);
recipes.remove(<Steamcraft:hoeBrass>);

mods.betterstorage.CraftingStation.addShaped(<Steamcraft:swordBrass>,
    [[ brassPlate ],
     [ brassPlate ],
     [      stick ]], 2);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:pickBrass>,
    [[ brassPlate, brassPlate, brassPlate ],
     [       null,      stick,       null ],
     [       null,      stick,       null ]], 2);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:shovelBrass>,
    [[ brassPlate ],
     [      stick ],
     [      stick ]], 1);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:axeBrass>,
    [[ brassPlate, brassPlate ],
     [ brassPlate,      stick ],
     [       null,      stick ]], 1);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:hoeBrass>,
    [[ brassPlate, brassPlate ],
     [       null,      stick ],
     [       null,      stick ]], 1);


// Gilded Iron Tools

recipes.remove(<Steamcraft:swordGildedGold>);
recipes.remove(<Steamcraft:pickGildedGold>);
recipes.remove(<Steamcraft:shovelGildedGold>);
recipes.remove(<Steamcraft:axeGildedGold>);
recipes.remove(<Steamcraft:hoeGildedGold>);

mods.betterstorage.CraftingStation.addShaped(<Steamcraft:swordGildedGold>,
    [[      gold ],
     [      gold ],
     [ ironSword ]], 4);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:pickGildedGold>,
    [[ gold,        gold, gold ],
     [ null, ironPickaxe, null ]], 6);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:shovelGildedGold>,
    [[       gold ],
     [ ironShovel ]], 3);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:axeGildedGold>,
    [[ gold,    gold ],
     [ gold, ironAxe ]], 3);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:hoeGildedGold>,
    [[ gold,    gold ],
     [ null, ironHoe ]], 2);
