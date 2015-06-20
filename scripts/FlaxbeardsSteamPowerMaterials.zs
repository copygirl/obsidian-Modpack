// Ingredients
var copper = <ore:ingotCopper>;
var zinc   = <ore:ingotZinc>;
var iron   = <ore:ingotIron>;
var gold   = <ore:ingotGold>;
var brass  = <ore:ingotBrass>;
var thaumium = <Thaumcraft:ItemResource:2>;

var copperPlate   = <Steamcraft:steamcraftPlate>;
var zincPlate     = <Steamcraft:steamcraftPlate:1>;
var ironPlate     = <Steamcraft:steamcraftPlate:2>;
var goldPlate     = <Steamcraft:steamcraftPlate:3>;
var brassPlate    = <Steamcraft:steamcraftPlate:4>;
var thaumiumPlate = <Steamcraft:steamcraftPlate:5>;

var goldNugget = <ore:nuggetGold>;
var brassNugget = <ore:nuggetBrass>;

var brick    = <minecraft:brick>;
var redstone = <ore:dustRedstone>;

var ingotMold = <Steamcraft:ingotMold>;
var plateMold = <Steamcraft:plateMold>;


// Remove Crucibles and Molds

recipes.remove(<Steamcraft:mold>);
recipes.remove(<Steamcraft:carving>);
recipes.remove(<Steamcraft:blankMold>);

mods.nei.NEI.hide(<Steamcraft:mold>);
mods.nei.NEI.hide(<Steamcraft:carving>);
mods.nei.NEI.hide(<Steamcraft:nuggetMold>);
mods.nei.NEI.hide(<Steamcraft:blankMold>);

// Set mold durability

mods.copycore.Tweaks.setDurability([ ingotMold, plateMold ], 100);


// Alloys

recipes.addShaped(ingotMold,
    [[  null, brick,  null ],
     [ brick,  null, brick ],
     [  null, brick,  null ]]);

// Brass
recipes.addShapeless(<Steamcraft:steamcraftIngot:2> * 4,
    [ ingotMold.anyDamage().transformDamage(),
      copper, copper, copper, zinc ]);
// Gilded Iron
recipes.addShapeless(<Steamcraft:steamcraftIngot:3>,
    [ ingotMold.anyDamage().transformDamage(),
      iron, goldNugget, goldNugget, goldNugget ]);

// Reverse
recipes.addShapeless(<Steamcraft:steamcraftIngot:0> * 4,
    [ ingotMold.anyDamage().transformDamage(), copperPlate ]);
recipes.addShapeless(<Steamcraft:steamcraftIngot:1> * 4,
    [ ingotMold.anyDamage().transformDamage(), zincPlate ]);
recipes.addShapeless(<minecraft:iron_ingot> * 4,
    [ ingotMold.anyDamage().transformDamage(), ironPlate ]);
recipes.addShapeless(<minecraft:gold_ingot> * 4,
    [ ingotMold.anyDamage().transformDamage(), goldPlate ]);
recipes.addShapeless(<Steamcraft:steamcraftIngot:2> * 4,
    [ ingotMold.anyDamage().transformDamage(), brassPlate ]);
recipes.addShapeless(thaumium * 4,
    [ ingotMold.anyDamage().transformDamage(), thaumiumPlate ]);


// Plates

recipes.addShaped(plateMold,
    [[ brick, brick, brick ],
     [ brick,  null, brick ],
     [ brick, brick, brick ]]);

recipes.addShapeless(copperPlate,
    [ plateMold.anyDamage().transformDamage(),
    copper, copper, copper, copper ]);
recipes.addShapeless(zincPlate,
    [ plateMold.anyDamage().transformDamage(),
      zinc, zinc, zinc, zinc ]);
recipes.addShapeless(ironPlate,
    [ plateMold.anyDamage().transformDamage(),
      iron, iron, iron, iron ]);
recipes.addShapeless(goldPlate,
    [ plateMold.anyDamage().transformDamage(),
      gold, gold, gold, gold ]);
recipes.addShapeless(brassPlate,
    [ plateMold.anyDamage().transformDamage(),
      brass, brass, brass, brass ]);
recipes.addShapeless(brassPlate,
    [ plateMold.anyDamage().transformDamage(),
      copper, copper, copper, zinc ]);
recipes.addShapeless(brassPlate * 4,
    [ plateMold.anyDamage().transformDamage(),
      copperPlate, copperPlate, copperPlate, zincPlate ]);
recipes.addShapeless(thaumiumPlate,
    [ plateMold.anyDamage().transformDamage(),
      thaumium, thaumium, thaumium, thaumium ]);


// Crafting Materials

// Brass Piston
recipes.remove(<Steamcraft:steamcraftCrafting>);
recipes.addShapedMirrored(<Steamcraft:steamcraftCrafting>,
    [[        null,    brass,        null ],
     [       brass,     iron,       brass ],
     [ brassNugget, redstone, brassNugget ]]);

// Brass Turbine
recipes.remove(<Steamcraft:steamcraftCrafting:5>);
recipes.addShapedMirrored(<Steamcraft:steamcraftCrafting:5>,
    [[  null,       brass,  null ],
     [ brass, brassNugget, brass ],
     [  null,       brass,  null ]]);
