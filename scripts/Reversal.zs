import minetweaker.item.IItemStack;

var stone     = <minecraft:stone>;
var stoneSlab = <minecraft:stone_slab:0>;
recipes.addShapeless(stone, [ stoneSlab, stoneSlab ]);

var bamboo    = <BiomesOPlenty:bamboo>;
var thatching = <BiomesOPlenty:planks:10>;
recipes.addShaped(bamboo * 4, [[ thatching ]]);


var blocks = [
    <minecraft:sandstone>,
    <minecraft:cobblestone>,
    <minecraft:brick_block>,
    <minecraft:stonebrick>,
    <minecraft:nether_brick>,
    <minecraft:quartz_block>,
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
    <BiomesOPlenty:mudBricks>,
    
    <Thaumcraft:blockWoodenDevice:6>,
    <Thaumcraft:blockWoodenDevice:7>,
    <Thaumcraft:blockCosmeticSolid:7>,
    <Thaumcraft:blockCosmeticSolid:11>
  ] as IItemStack[];

var slabs = [
    <minecraft:stone_slab:1>,
    <minecraft:stone_slab:3>,
    <minecraft:stone_slab:4>,
    <minecraft:stone_slab:5>,
    <minecraft:stone_slab:6>,
    <minecraft:stone_slab:7>,
    <minecraft:wooden_slab:0>,
    <minecraft:wooden_slab:1>,
    <minecraft:wooden_slab:2>,
    <minecraft:wooden_slab:3>,
    <minecraft:wooden_slab:4>,
    <minecraft:wooden_slab:5>,
    
    <BiomesOPlenty:woodenSingleSlab1:0>,
    <BiomesOPlenty:woodenSingleSlab1:1>,
    <BiomesOPlenty:woodenSingleSlab1:2>,
    <BiomesOPlenty:woodenSingleSlab1:3>,
    <BiomesOPlenty:woodenSingleSlab1:4>,
    <BiomesOPlenty:woodenSingleSlab1:5>,
    <BiomesOPlenty:woodenSingleSlab1:6>,
    <BiomesOPlenty:woodenSingleSlab1:7>,
    <BiomesOPlenty:woodenSingleSlab2:0>,
    <BiomesOPlenty:woodenSingleSlab2:1>,
    <BiomesOPlenty:woodenSingleSlab2:2>,
    <BiomesOPlenty:woodenSingleSlab2:3>,
    <BiomesOPlenty:woodenSingleSlab2:4>,
    <BiomesOPlenty:woodenSingleSlab2:5>,
    <BiomesOPlenty:stoneSingleSlab:0>,
    
    <Thaumcraft:blockCosmeticSlabWood:0>,
    <Thaumcraft:blockCosmeticSlabWood:1>,
    <Thaumcraft:blockCosmeticSlabStone:0>,
    <Thaumcraft:blockCosmeticSlabStone:1>
  ] as IItemStack[];

var stairs = [
    <minecraft:sandstone_stairs>,
    <minecraft:stone_stairs>,
    <minecraft:brick_stairs>,
    <minecraft:stone_brick_stairs>,
    <minecraft:nether_brick_stairs>,
    <minecraft:quartz_stairs>,
    <minecraft:oak_stairs>,
    <minecraft:spruce_stairs>,
    <minecraft:birch_stairs>,
    <minecraft:jungle_stairs>,
    <minecraft:acacia_stairs>,
    <minecraft:dark_oak_stairs>,
    
    <BiomesOPlenty:sacredoakStairs>,
    <BiomesOPlenty:cherryStairs>,
    <BiomesOPlenty:darkStairs>,
    <BiomesOPlenty:firStairs>,
    <BiomesOPlenty:etherealStairs>,
    <BiomesOPlenty:magicStairs>,
    <BiomesOPlenty:mangroveStairs>,
    <BiomesOPlenty:palmStairs>,
    <BiomesOPlenty:redwoodStairs>,
    <BiomesOPlenty:willowStairs>,
    <BiomesOPlenty:pineStairs>,
    <BiomesOPlenty:hellBarkStairs>,
    <BiomesOPlenty:jacarandaStairs>,
    <BiomesOPlenty:mahoganyStairs>,
    <BiomesOPlenty:mudBricksStairs>,
    
    <Thaumcraft:blockStairsGreatwood>,
    <Thaumcraft:blockStairsSilverwood>,
    <Thaumcraft:blockStairsArcaneStone>,
    <Thaumcraft:blockStairsEldritch>
  ] as IItemStack[];

for i, block in blocks {
  var slab = slabs[i];
  var stair = stairs[i];
  
  recipes.addShapeless(block, [ slab, slab ]);
  
  recipes.remove(stair);
  recipes.addShapedMirrored(stair * 6,
      [[ block,  null,  null ],
       [ block, block,  null ],
       [ block, block, block ]]);
  recipes.addShaped(block, [[ stair ]]);
}
