// Ingredients
var copper = <ore:ingotCopper>;
var iron   = <ore:ingotIron>;
var brass  = <ore:ingotBrass>;

var brassNugget = <ore:nuggetBrass>;

var ironBlock  = <ore:blockIron>;
var brassBlock = <ore:blockBrass>;

var copperPlate = <Steamcraft:steamcraftPlate>;
var ironPlate   = <Steamcraft:steamcraftPlate:2>;
var brassPlate  = <Steamcraft:steamcraftPlate:4>;

var brassPiston  = <Steamcraft:steamcraftCrafting>;
var brassTurbine = <Steamcraft:steamcraftCrafting:5>;

var cobble = <ore:cobblestone>;
var glass  = <ore:blockGlassColorless>;
var netherBrick = <minecraft:nether_brick>;
var ironBars = <minecraft:iron_bars>;

var furnace = <minecraft:furnace>;
var piston  = <minecraft:piston>;


// Machines

var pipe = <Steamcraft:pipe>;
recipes.remove(pipe);
recipes.addShaped(pipe * 4,
    [[ brass, brass, brass ],
     [  null,  null,  null ],
     [ brass, brass, brass ]]);

var tank = <Steamcraft:steamTank>;
recipes.remove(tank);
recipes.addShaped(tank,
    [[       iron, brassPlate,       iron ],
     [ brassPlate,       null, brassPlate ],
     [       iron, brassPlate,       iron ]]);

var boiler = <Steamcraft:boiler>;
recipes.remove(boiler);
recipes.addShaped(boiler,
    [[       brass,   brass,       brass ],
     [ copperPlate, furnace, copperPlate ],
     [       brass,    tank,       brass ]]);

recipes.remove(<Steamcraft:flashBoiler>);
recipes.addShaped(<Steamcraft:flashBoiler> * 2,
    [[  brassPlate,        tank,  brassPlate ],
     [        pipe,      boiler,        pipe ],
     [ netherBrick, netherBrick, netherBrick ]]);

recipes.remove(<Steamcraft:horn>);
recipes.addShapedMirrored(<Steamcraft:horn>,
    [[ null, brass,       brass ],
     [ null, brass, brassNugget ],
     [ pipe,  pipe,        null ]]);

recipes.remove(<Steamcraft:fluidSteamConverter>);

recipes.remove(<Steamcraft:pump>);
recipes.addShaped(<Steamcraft:pump>,
    [[  brassNugget,        glass,  brassNugget ],
     [ brassTurbine, brassTurbine, brassTurbine ],
     [        brass,        glass,        brass ]]);

recipes.remove(<Steamcraft:smasher>);
recipes.addShapedMirrored(<Steamcraft:smasher>,
    [[      brass, brassPiston,     brass ],
     [ brassPlate,      piston, ironPlate ],
     [      brass, brassPiston,     brass ]]);

recipes.remove(<Steamcraft:heater>);
recipes.addShaped(<Steamcraft:heater>,
    [[     copper,  copperPlate,     copper ],
     [ brassPlate,      furnace, brassPlate ],
     [       null,         pipe,       null ]]);

var charger = <Steamcraft:charger>;
recipes.remove(charger);
recipes.addShaped(charger,
    [[   null,       pipe,   null ],
     [ cobble,       pipe, cobble ],
     [ cobble, brassPlate, cobble ]]);

recipes.remove(<Steamcraft:chargingPad>);
recipes.addShaped(<Steamcraft:chargingPad>,
    [[       pipe, brassPlate,       pipe ],
     [ brassPlate,    charger, brassPlate ],
     [       iron, brassPlate,       iron ]]);

recipes.remove(<Steamcraft:hammer>);
mods.betterstorage.CraftingStation.addShapedMirrored(<Steamcraft:hammer>,
    [[ brassPlate, brassPiston, ironBlock ],
     [ brassPlate,        iron, ironBlock ]], 30);

recipes.remove(<Steamcraft:itemMortar>);
recipes.addShaped(<Steamcraft:itemMortar>,
    [[       null,       brass,       null ],
     [ brassPlate, brassPiston, brassPlate ],
     [     copper, copperPlate,     copper ]]);

recipes.remove(<Steamcraft:thumper>);
mods.betterstorage.CraftingStation.addShaped(<Steamcraft:thumper>,
    [[        null, brassBlock,        null ],
     [ brassPiston, brassBlock, brassPiston ],
     [  brassPlate,  ironBlock,  brassPlate ]], 20);

var fan = <Steamcraft:fan>;
recipes.remove(fan);
recipes.addShaped(fan,
    [[    brass,        brass,    brass ],
     [ ironBars, brassTurbine, ironBars ],
     [    brass,        brass,    brass ]]);

recipes.remove(<Steamcraft:vacuum>);
recipes.addShapedMirrored(<Steamcraft:vacuum>,
    [[ null, brass, brass ],
     [ pipe,   fan,  null ],
     [ null, brass, brass ]]);
