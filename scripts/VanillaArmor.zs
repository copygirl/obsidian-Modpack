// Ingredients
var iron    = <ore:ingotIron>;
var gold    = <ore:ingotGold>;
var diamond = <ore:gemDiamond>;
var emerald = <ore:gemEmerald>;

var ironPlate = <Steamcraft:steamcraftPlate:2>;
var goldPlate = <Steamcraft:steamcraftPlate:3>;

var helmet = <minecraft:leather_helmet>;
var chest  = <minecraft:leather_chestplate>;
var legs   = <minecraft:leather_leggings>;
var boots  = <minecraft:leather_boots>;

var ironHelmet = <minecraft:iron_helmet>;
var ironChest  = <minecraft:iron_chestplate>;
var ironLegs   = <minecraft:iron_leggings>;
var ironBoots  = <minecraft:iron_boots>;


// Chainmail Armor

recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);

mods.betterstorage.CraftingStation.addShaped(<minecraft:chainmail_helmet>,
    [[ iron, iron, iron ],
     [ iron, null, iron ]], 2);
mods.betterstorage.CraftingStation.addShaped(<minecraft:chainmail_chestplate>,
    [[ iron, null, iron ],
     [ iron, iron, iron ],
     [ iron, iron, iron ]], 4);
mods.betterstorage.CraftingStation.addShaped(<minecraft:chainmail_leggings>,
    [[ iron, iron, iron ],
     [ iron, null, iron ],
     [ iron, null, iron ]], 3);
mods.betterstorage.CraftingStation.addShaped(<minecraft:chainmail_boots>,
    [[ iron, null, iron ],
     [ iron, null, iron ]], 2);


// Gold Armor

recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);

mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_helmet>,
    [[ gold,   gold, gold ],
     [ gold, helmet, gold ]], 2);
mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_chestplate>,
    [[ gold, chest, gold ],
     [ gold,  gold, gold ],
     [ gold,  gold, gold ]], 4);
mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_leggings>,
    [[ gold, gold, gold ],
     [ gold, legs, gold ],
     [ gold, null, gold ]], 3);
mods.betterstorage.CraftingStation.addShaped(<minecraft:golden_boots>,
    [[ gold, boots, gold ],
     [ gold,  null, gold ]], 2);


// Iron Armor

recipes.remove(ironHelmet);
recipes.remove(ironChest);
recipes.remove(ironLegs);
recipes.remove(<minecraft:iron_boots>);

mods.betterstorage.CraftingStation.addShaped(ironHelmet,
    [[ ironPlate, ironPlate, ironPlate ],
     [ ironPlate,    helmet, ironPlate ]], 4);
mods.betterstorage.CraftingStation.addShaped(ironChest,
    [[ ironPlate,     chest, ironPlate ],
     [ ironPlate, ironPlate, ironPlate ],
     [ ironPlate, ironPlate, ironPlate ]], 8);
mods.betterstorage.CraftingStation.addShaped(ironLegs,
    [[ ironPlate, ironPlate, ironPlate ],
     [ ironPlate,      legs, ironPlate ],
     [ ironPlate,      null, ironPlate ]], 6);
mods.betterstorage.CraftingStation.addShaped(ironBoots,
    [[ ironPlate, boots, ironPlate ],
     [ ironPlate,  null, ironPlate ]], 4);


// Diamond Armor

recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_helmet>,
    [[ diamond,    emerald, diamond ],
     [ diamond, ironHelmet, diamond ]], 8);
mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_chestplate>,
    [[ diamond, ironChest, diamond ],
     [ diamond,   emerald, diamond ],
     [ diamond,   diamond, diamond ]], 16);
mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_leggings>,
    [[ diamond,  emerald, diamond ],
     [ diamond, ironLegs, diamond ],
     [ diamond,     null, diamond ]], 12);
mods.betterstorage.CraftingStation.addShaped(<minecraft:diamond_boots>,
    [[ diamond, ironBoots, diamond ],
     [ diamond,      null, diamond ]], 8);