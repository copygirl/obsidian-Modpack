// Ingredients
var iron   = <ore:ingotIron>;
var brass  = <ore:ingotBrass>;

var ironPlate  = <Steamcraft:steamcraftPlate:2>;
var brassPlate = <Steamcraft:steamcraftPlate:4>;

var ironBars     = <minecraft:iron_bars>;
var brassTurbine = <Steamcraft:steamcraftCrafting:5>;
var pipe         = <Steamcraft:pipe>;


// Steam Tools Recipes

recipes.remove(<Steamcraft:steamDrill:*>);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:steamDrill:640>,
    [[       null,         iron, ironPlate ],
     [ brassPlate, brassTurbine,      iron ],
     [       pipe,   brassPlate,      null ]], 32);

recipes.remove(<Steamcraft:steamAxe:*>);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:steamAxe:640>,
    [[       null,     ironBars, ironPlate ],
     [ brassPlate, brassTurbine,  ironBars ],
     [       pipe,   brassPlate,      null ]], 24);

recipes.remove(<Steamcraft:steamShovel:*>);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:steamShovel:640>,
    [[       null,         iron, brassPlate ],
     [ brassPlate, brassTurbine,       iron ],
     [       pipe,   brassPlate,       null ]], 24);