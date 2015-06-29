var planks = <ore:plankWood>;
var stone  = <ore:stone>;
var stoneSlab = <minecraft:stone_slab>;

var iron     = <ore:ingotIron>;
var redstone = <minecraft:redstone>;

var ironPlate   = <Steamcraft:steamcraftPlate:2>;
var goldPlate   = <Steamcraft:steamcraftPlate:3>;
var brassPiston = <Steamcraft:steamcraftCrafting>;

var dropper   = <minecraft:dropper>;
var dispenser = <minecraft:dispenser>;
var bow       = <minecraft:bow>;

var crate   = <betterstorage:crate>;
var turbine = <Steamcraft:steamcraftCrafting:5>;


var stoneButton = <minecraft:stone_button>;
recipes.remove(stoneButton);
recipes.addShapedMirrored(stoneButton, [[ redstone, stone ]]);

var woodButton = <minecraft:wooden_button>;
recipes.remove(woodButton);
recipes.addShapedMirrored(woodButton, [[ redstone, planks ]]);

var lever = <minecraft:lever>;
recipes.remove(lever);
recipes.addShaped(lever,
    [[ <ore:stickWood> ],
     [           stone ],
     [        redstone ]]);

var stonePressurePlate = <minecraft:stone_pressure_plate>;
recipes.remove(stonePressurePlate);
recipes.addShaped(stonePressurePlate,
    [[    stone,    stone ],
     [ redstone, redstone ]]);

var woodPressurePlate = <minecraft:wooden_pressure_plate>;
recipes.remove(woodPressurePlate);
recipes.addShaped(woodPressurePlate,
    [[   planks,   planks ],
     [ redstone, redstone ]]);

var goldPressurePlate = <minecraft:light_weighted_pressure_plate>;
recipes.remove(goldPressurePlate);
recipes.addShaped(goldPressurePlate,
    [[ goldPlate, goldPlate ],
     [  redstone,  redstone ]]);

var ironPressurePlate = <minecraft:heavy_weighted_pressure_plate>;
recipes.remove(ironPressurePlate);
recipes.addShaped(ironPressurePlate,
    [[ ironPlate, ironPlate ],
     [  redstone,  redstone ]]);


// Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>,
    [[  ironPlate,   crate, ironPlate ],
     [       iron, turbine,      iron ],
     [       null,    iron,      null ]]);


// Dropper
recipes.remove(dropper);
recipes.addShaped(dropper,
    [[     stone,    stone,     stone ],
     [     stone,     null,     stone ],
     [ stoneSlab, redstone, stoneSlab ]]);

// Dispenser
recipes.remove(dispenser);
recipes.addShaped(dispenser,
    [[     stone,    stone,     stone ],
     [     stone,      bow,     stone ],
     [ stoneSlab, redstone, stoneSlab ]]);

// Dropper + Bow = Dispenser
recipes.addShapeless(dispenser, [ dropper, bow ]);

// Dispenser = Dropper + Bow
mods.betterstorage.CraftingStation.addShaped(
    [ null, bow, null, null, dropper ],
    [[ dispenser ]]);

// Piston uses Brass Piston, Iron Plate and Stone
var piston = <minecraft:piston>;
recipes.remove(piston);
recipes.addShaped(piston,
    [[ planks,      planks, planks ],
     [  stone,   ironPlate,  stone ],
     [  stone, brassPiston,  stone ]]);

// Sticky Piston = Piston + Slimeball
var stickyPiston = <minecraft:sticky_piston>;
var slimeball = <minecraft:slime_ball>;
mods.betterstorage.CraftingStation.addShaped(
    [ null, slimeball, null, null, piston ],
    [[ stickyPiston ]]);
