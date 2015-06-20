// TODO: Adjust durability of armor

// Ingredients
var gold = <ore:ingotGold>;
var brassPlate = <Steamcraft:steamcraftPlate:4>;

var helmet = <minecraft:leather_helmet>;
var chest  = <minecraft:leather_chestplate>;
var legs   = <minecraft:leather_leggings>;
var boots  = <minecraft:leather_boots>;

var ironHelmet = <minecraft:iron_helmet>;
var ironChest  = <minecraft:iron_chestplate>;
var ironLegs   = <minecraft:iron_leggings>;
var ironBoots  = <minecraft:iron_boots>;


// Brass Armor

recipes.remove(<Steamcraft:helmBrass>);
recipes.remove(<Steamcraft:chestBrass>);
recipes.remove(<Steamcraft:legsBrass>);
recipes.remove(<Steamcraft:feetBrass>);

mods.betterstorage.CraftingStation.addShaped(<Steamcraft:helmBrass>,
    [[ brassPlate,  brassPlate, brassPlate ],
     [ brassPlate, helmet, brassPlate ]], 2);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:chestBrass>,
    [[ brassPlate, chest, brassPlate ],
     [ brassPlate, brassPlate, brassPlate ],
     [ brassPlate, brassPlate, brassPlate ]], 4);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:legsBrass>,
    [[ brassPlate, brassPlate, brassPlate ],
     [ brassPlate,  legs, brassPlate ],
     [ brassPlate,  null, brassPlate ]], 3);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:feetBrass>,
    [[ brassPlate, boots, brassPlate ],
     [ brassPlate,  null, brassPlate ]], 2);


// Gilded Iron Armor

recipes.remove(<Steamcraft:helmGildedGold>);
recipes.remove(<Steamcraft:chestGildedGold>);
recipes.remove(<Steamcraft:legsGildedGold>);
recipes.remove(<Steamcraft:feetGildedGold>);

mods.betterstorage.CraftingStation.addShaped(<Steamcraft:helmGildedGold>,
    [[ gold,       gold, gold ],
     [ gold, ironHelmet, gold ]], 4);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:chestGildedGold>,
    [[ gold, ironChest, gold ],
     [ gold,      gold, gold ],
     [ gold,      gold, gold ]], 8);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:legsGildedGold>,
    [[ gold,     gold, gold ],
     [ gold, ironLegs, gold ],
     [ gold,     null, gold ]], 6);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:feetGildedGold>,
    [[ gold, ironBoots, gold ],
     [ gold,      null, gold ]], 4);