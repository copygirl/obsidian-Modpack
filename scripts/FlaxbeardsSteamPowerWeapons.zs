// Ingredients
var wood = <ore:plankWood>;
var iron = <ore:ingotIron>;

var copperPlate = <Steamcraft:steamcraftPlate>;
var ironPlate   = <Steamcraft:steamcraftPlate:2>;
var brassPlate  = <Steamcraft:steamcraftPlate:4>;

var ironNugget = <ore:nuggetIron>;

var redstone      = <ore:dustRedstone>;
var flintAndSteel = <minecraft:flint_and_steel>;
var gunpowder     = <minecraft:gunpowder>;
var blazePowder   = <minecraft:blaze_powder>;
var fireCharge    = <minecraft:fire_charge>;

var wool    = <minecraft:wool:*>;
var leather = <minecraft:leather>;
var _string = <minecraft:string>;
var slime   = <minecraft:slime_ball>;

// Weapon Parts

var stock = <Steamcraft:steamcraftCrafting:1>;

var ironBarrel = <Steamcraft:steamcraftCrafting:2>;
recipes.remove(ironBarrel);
mods.betterstorage.CraftingStation.addShapedMirrored(ironBarrel,
     [[ ironPlate,      null,      null ],
      [      null, ironPlate,      null ],
      [      null,      null, ironPlate ]], 2);

var brassBarrel = <Steamcraft:steamcraftCrafting:3>;
recipes.remove(brassBarrel);
mods.betterstorage.CraftingStation.addShapedMirrored(brassBarrel,
     [[ brassPlate,       null,       null ],
      [       null, brassPlate,       null ],
      [       null,       null, brassPlate ]], 3);

var flintlock = <Steamcraft:steamcraftCrafting:4>;
recipes.remove(flintlock);
mods.betterstorage.CraftingStation.addShapedMirrored(flintlock,
     [[ flintAndSteel,     null,      iron ],
      [     ironPlate, redstone, ironPlate ]], 2);


// Weapons

var musket = <Steamcraft:musket>;
recipes.remove(musket);
mods.betterstorage.CraftingStation.addShaped(musket,
     [[ ironBarrel,       null,      null ],
      [       null, ironBarrel, flintlock ],
      [       null,       null,     stock ]], 16);

var pistol = <Steamcraft:pistol>;
recipes.remove(pistol);
mods.betterstorage.CraftingStation.addShaped(pistol,
     [[ ironBarrel, null,      null ],
      [       null, wood, flintlock ],
      [       null, wood,      null ]], 10);

var blunderbuss = <Steamcraft:blunderbuss>;
recipes.remove(blunderbuss);
mods.betterstorage.CraftingStation.addShaped(blunderbuss,
     [[ brassBarrel,        null,      null ],
      [        null, brassBarrel, flintlock ],
      [        null,        null,     stock ]], 16);

var rocketLauncher = <Steamcraft:rocketLauncher>;
recipes.remove(rocketLauncher);
mods.betterstorage.CraftingStation.addShaped(rocketLauncher,
     [[ brassBarrel, brassPlate,        null ],
      [   flintlock, ironBarrel, copperPlate ],
      [        null,       wood,  ironBarrel ]], 24);

var rocket = <Steamcraft:rocket>;
recipes.remove(rocket);
mods.betterstorage.CraftingStation.addShapedMirrored(rocket * 6,
     [[      null,  ironPlate,      null ],
      [ gunpowder,  ironPlate, gunpowder ],
      [ gunpowder, fireCharge, gunpowder ]], 1);


// Weapon Upgrades

var revolverChamber = <Steamcraft:enhancementRevolver>;
recipes.remove(revolverChamber);
mods.betterstorage.CraftingStation.addShapedMirrored(revolverChamber,
     [[ ironNugget, iron,       null ],
      [       iron, null,       iron ],
      [       null, iron, ironNugget ]], 2);

var blazeBarrel = <Steamcraft:enhancementAblaze>;
recipes.remove(blazeBarrel);
mods.betterstorage.CraftingStation.addShapedMirrored(blazeBarrel,
     [[ <minecraft:blaze_rod>, blazePowder,        null ],
      [           blazePowder,  fireCharge, blazePowder ],
      [                  null, blazePowder,  ironBarrel ]], 4);

var boltAction = <Steamcraft:enhancementSpeedloader>;
recipes.remove(boltAction);
mods.betterstorage.CraftingStation.addShapedMirrored(boltAction,
     [[ null,     null, ironNugget ],
      [ iron,     iron,       iron ],
      [ iron, redstone,       iron ]], 2);

var suppressor = <Steamcraft:enhancementSilencer>;
recipes.remove(suppressor);
mods.betterstorage.CraftingStation.addShapedMirrored(suppressor,
     [[    wool, _string,    null ],
      [ _string, leather, _string ],
      [    null, _string,    wool ]], 1);

var recoilPad = <Steamcraft:enhancementRecoil>;
recipes.remove(recoilPad);
mods.betterstorage.CraftingStation.addShapedMirrored(recoilPad,
     [[ slime, slime,  null ],
      [  null, slime, slime ],
      [ slime, slime,  null ]], 1);

var breech = <Steamcraft:enhancementSpeedy>;
recipes.remove(breech);
mods.betterstorage.CraftingStation.addShaped(breech,
     [[ iron,       iron, iron ],
      [ iron,       iron, iron ],
      [ null, ironNugget, null ]], 2);

var streamlinedBarrel = <Steamcraft:enhancementFastRockets>;
recipes.remove(streamlinedBarrel);
mods.betterstorage.CraftingStation.addShaped(streamlinedBarrel,
     [[        brassBarrel,       null,                     null ],
      [ <Steamcraft:meter>, ironBarrel, <Steamcraft:ruptureDisc> ],
      [               null,       null,               ironBarrel ]], 2);

recipes.remove(<Steamcraft:enhancementAirStrike>);

var extendedMagazine = <Steamcraft:enhancementAmmo>;
recipes.remove(extendedMagazine);
mods.betterstorage.CraftingStation.addShapedMirrored(extendedMagazine,
     [[ ironNugget, brassPlate ],
      [ ironNugget, brassPlate ],
      [ brassPlate,       null ]], 6);


// Upgrade Recipes

// Musket
recipes.addShapeless(musket.withTag({ enhancements: { id: "scope" } }), [ musket, <Steamcraft:spyglass> ]);
recipes.addShapeless(musket.withTag({ enhancements: { id: "fireMusket" } }), [ musket, blazeBarrel ]);
recipes.addShapeless(musket.withTag({ enhancements: { id: "Speedloader" } }), [ musket, boltAction ]);

// Pistol
recipes.addShapeless(pistol.withTag({ enhancements: { id: "revolver" } }), [ pistol, revolverChamber ]);
recipes.addShapeless(pistol.withTag({ enhancements: { id: "Silencer" } }), [ pistol, suppressor ]);
recipes.addShapeless(pistol.withTag({ enhancements: { id: "Speedy" } }), [ pistol, breech ]);

// Blunderbuss
recipes.addShapeless(blunderbuss.withTag({ enhancements: { id: "fireMusket" } }), [ blunderbuss, blazeBarrel ]);
recipes.addShapeless(blunderbuss.withTag({ enhancements: { id: "Speedloader" } }), [ blunderbuss, boltAction ]);
recipes.addShapeless(blunderbuss.withTag({ enhancements: { id: "Recoil" } }), [ blunderbuss, recoilPad ]);

// Rocket Launcher
recipes.addShapeless(rocketLauncher.withTag({ enhancements: { id: "fastRocket" } }), [ rocketLauncher, streamlinedBarrel ]);
recipes.addShapeless(rocketLauncher.withTag({ enhancements: { id: "ammo" } }), [ rocketLauncher, extendedMagazine ]);
