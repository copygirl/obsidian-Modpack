// Ingredients
var iron   = <ore:ingotIron>;
var brass  = <ore:ingotBrass>;

var brassNugget = <ore:nuggetBrass>;

var leather   = <minecraft:leather>;
var glass     = <ore:blockGlassColorless>;
var glassPane = <ore:paneGlassColorless>;


// Misc Crafting

recipes.remove(<Steamcraft:book>);
recipes.addShapeless(<Steamcraft:book>, [ <minecraft:book>, brass ]);

var spyglass = <Steamcraft:spyglass>;
recipes.remove(spyglass);
recipes.addShapedMirrored(spyglass,
    [[ glassPane,       brass,        null ],
     [     brass,   glassPane, brassNugget ],
     [      null, brassNugget,       brass ]]);

recipes.remove(<Steamcraft:wrench>);
recipes.addShapedMirrored(<Steamcraft:wrench>,
    [[  null,  null,  iron ],
     [  null, brass, brass ],
     [ brass,  null,  null ]]);

recipes.remove(<Steamcraft:monacle>);
recipes.addShapedMirrored(<Steamcraft:monacle>,
    [[     null, leather,    null ],
     [  leather,    null, leather ],
     [ spyglass,   brass,    null ]]);
     
recipes.remove(<Steamcraft:goggles>);
recipes.addShapedMirrored(<Steamcraft:goggles>,
    [[     null, leather,    null ],
     [  leather,    null, leather ],
     [ spyglass,   brass,   glass ]]);
