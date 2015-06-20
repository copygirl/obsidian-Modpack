// Ingredients
var _void = <Thaumcraft:ItemResource:16>;
var thaumiumPlate = <Steamcraft:steamcraftPlate:5>;

var gildedHelmet = <Steamcraft:helmGildedGold>;
var gildedChest  = <Steamcraft:chestGildedGold>;
var gildedLegs   = <Steamcraft:legsGildedGold>;
var gildedBoots  = <Steamcraft:feetGildedGold>;

var thaumiumHelmet = <Thaumcraft:ItemHelmetThaumium>;
var thaumiumChest  = <Thaumcraft:ItemChestplateThaumium>;
var thaumiumLegs   = <Thaumcraft:ItemLeggingsThaumium>;
var thaumiumBoots  = <Thaumcraft:ItemBootsThaumium>;


// Thaumium

recipes.remove(thaumiumHelmet);
recipes.remove(thaumiumChest);
recipes.remove(thaumiumLegs);
recipes.remove(thaumiumBoots);

mods.betterstorage.CraftingStation.addShaped(thaumiumHelmet,
    [[ thaumiumPlate, thaumiumPlate, thaumiumPlate ],
     [ thaumiumPlate,  gildedHelmet, thaumiumPlate ]], 4);
mods.betterstorage.CraftingStation.addShaped(thaumiumChest,
    [[ thaumiumPlate,   gildedChest, thaumiumPlate ],
     [ thaumiumPlate, thaumiumPlate, thaumiumPlate ],
     [ thaumiumPlate, thaumiumPlate, thaumiumPlate ]], 8);
mods.betterstorage.CraftingStation.addShaped(thaumiumLegs,
    [[ thaumiumPlate, thaumiumPlate, thaumiumPlate ],
     [ thaumiumPlate,    gildedLegs, thaumiumPlate ],
     [ thaumiumPlate,          null, thaumiumPlate ]], 6);
mods.betterstorage.CraftingStation.addShaped(thaumiumBoots,
    [[ thaumiumPlate, gildedBoots, thaumiumPlate ],
     [ thaumiumPlate,        null, thaumiumPlate ]], 4);


// Void

recipes.remove(<Thaumcraft:ItemHelmetVoid>);
recipes.remove(<Thaumcraft:ItemChestplateVoid>);
recipes.remove(<Thaumcraft:ItemLeggingsVoid>);
recipes.remove(<Thaumcraft:ItemBootsVoid>);

mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemHelmetVoid>,
    [[ _void,          _void, _void ],
     [ _void, thaumiumHelmet, _void ]], 12);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemChestplateVoid>,
    [[ _void, thaumiumChest, _void ],
     [ _void,         _void, _void ],
     [ _void,         _void, _void ]], 20);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemLeggingsVoid>,
    [[ _void,        _void, _void ],
     [ _void, thaumiumLegs, _void ],
     [ _void,         null, _void ]], 16);
mods.betterstorage.CraftingStation.addShaped(<Thaumcraft:ItemBootsVoid>,
    [[ _void, thaumiumBoots, _void ],
     [ _void,          null, _void ]], 12);
