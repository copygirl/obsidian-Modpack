// Ingredients
var stick = <ore:stickWood>;
var cap   = <Thaumcraft:WandCap>;


// Wand

recipes.remove(<Thaumcraft:WandCasting>);
mods.betterstorage.CraftingStation.addShapedMirrored(<Thaumcraft:WandCasting>,
  [[ null,  null,  cap ],
   [ null, stick, null ],
   [  cap,  null, null ]], 5);
