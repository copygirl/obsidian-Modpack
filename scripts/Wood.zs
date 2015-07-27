import minetweaker.item.IItemStack;

var stick = <minecraft:stick>;


// Create an ore dictionary entry for all axes.
// This allows us to use any axe is the following crafting recipes.

var axe = <ore:toolAxe>;

axe.add(<minecraft:wooden_axe>);
axe.add(<minecraft:stone_axe>);
axe.add(<minecraft:golden_axe>);
axe.add(<minecraft:iron_axe>);
axe.add(<minecraft:diamond_axe>);
axe.add(<minecraft:stone_axe>);

axe.add(<Steamcraft:axeBrass>);
axe.add(<Steamcraft:axeGildedGold>);
  
axe.add(<Thaumcraft:ItemAxeThaumium>);
axe.add(<Thaumcraft:ItemAxeVoid>);
axe.add(<Thaumcraft:ItemAxeElemental>);

axe.add(<BiomesOPlenty:axeAmethyst>);


// Create two arrays of logs and planks.
// There's an entry in both arrays for each log/plank pair.

var logs = [
    <minecraft:log:0>,
    <minecraft:log:1>,
    <minecraft:log:2>,
    <minecraft:log:3>,
    <minecraft:log2:0>,
    <minecraft:log2:1>,
    
    <BiomesOPlenty:logs1:0>,
    <BiomesOPlenty:logs1:1>,
    <BiomesOPlenty:logs1:2>,
    <BiomesOPlenty:logs1:3>,
    <BiomesOPlenty:logs2:0>,
    <BiomesOPlenty:logs2:1>,
    <BiomesOPlenty:logs2:2>,
    <BiomesOPlenty:logs2:3>,
    <BiomesOPlenty:logs3:0>,
    <BiomesOPlenty:logs3:1>,
    <BiomesOPlenty:logs4:0>,
    <BiomesOPlenty:logs4:1>,
    <BiomesOPlenty:logs4:2>,
    <BiomesOPlenty:logs4:3>,
    
    <Thaumcraft:blockMagicalLog:0>,
    <Thaumcraft:blockMagicalLog:1>
  ] as IItemStack[];

var planks = [
    <minecraft:planks:0>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>,
    
    <BiomesOPlenty:planks:0>,
    <BiomesOPlenty:planks:1>,
    <BiomesOPlenty:planks:2>,
    <BiomesOPlenty:planks:3>,
    <BiomesOPlenty:planks:4>,
    <BiomesOPlenty:planks:5>,
    <BiomesOPlenty:planks:6>,
    <BiomesOPlenty:planks:7>,
    <BiomesOPlenty:planks:8>,
    <BiomesOPlenty:planks:9>,
    <BiomesOPlenty:planks:11>,
    <BiomesOPlenty:planks:12>,
    <BiomesOPlenty:planks:13>,
    <BiomesOPlenty:planks:14>,
    
    <Thaumcraft:blockWoodenDevice:6>,
    <Thaumcraft:blockWoodenDevice:7>
  ] as IItemStack[];


for i, log in logs {

  // Change standard log recipe to only give 2 planks.
  recipes.remove(planks[i]);
  recipes.addShapeless(planks[i] * 2, [ log ]);
  
  // Add log + axe recipe to return 4 planks, damaging the axe a little.
  recipes.addShapeless(planks[i] * 4, [ axe.transformDamage(2), log ]);
  
}

// Change standard sticks recipe to only give 2 sticks.
recipes.remove(stick);
recipes.addShaped(stick * 2, [[ <ore:plankWood> ], [ <ore:plankWood> ]]);

// Add planks + axe recipe to return 2 sticks, damaging the axe a little.
recipes.addShapeless(stick * 2, [ axe.transformDamage(), <ore:plankWood> ]);


// Breaking recipes

recipes.addShapeless(stick * 3, [ axe.transformDamage(), <minecraft:fence> ]);
recipes.addShapeless(stick * 2, [ axe.transformDamage(), <minecraft:ladder> ]);
