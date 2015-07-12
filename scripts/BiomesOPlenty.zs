// Ingredients
var amethyst  = <BiomesOPlenty:gems>;
var ruby      = <BiomesOPlenty:gems:1>;
var peridot   = <BiomesOPlenty:gems:2>;
var topaz     = <BiomesOPlenty:gems:3>;
var tanzanite = <BiomesOPlenty:gems:4>;
var malachite = <BiomesOPlenty:gems:5>;
var sapphire  = <BiomesOPlenty:gems:6>;
var amber     = <BiomesOPlenty:gems:7>;
var diamond   = <minecraft:diamond>;


// Amethyst

mods.betterstorage.CraftingStation.addShapeless(amethyst,
  [ ruby, peridot, topaz, tanzanite, malachite, sapphire, amber, diamond ], 6);


// Amethyst Tools

var diamondSword   = <minecraft:diamond_sword>;
var diamondPickaxe = <minecraft:diamond_pickaxe>;
var diamondShovel  = <minecraft:diamond_shovel>;
var diamondAxe     = <minecraft:diamond_axe>;
var diamondHoe     = <minecraft:diamond_hoe>;

recipes.remove(<BiomesOPlenty:swordAmethyst>);
recipes.remove(<BiomesOPlenty:pickaxeAmethyst>);
recipes.remove(<BiomesOPlenty:shovelAmethyst>);
recipes.remove(<BiomesOPlenty:axeAmethyst>);
recipes.remove(<BiomesOPlenty:hoeAmethyst>);

mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:swordAmethyst>,
    [[     amethyst ],
     [     amethyst ],
     [ diamondSword ]], 12);
mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:pickaxeAmethyst>,
    [[ amethyst,       amethyst, amethyst ],
     [     null, diamondPickaxe,     null ]], 18);
mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:shovelAmethyst>,
    [[      amethyst ],
     [ diamondShovel ]], 9);
mods.betterstorage.CraftingStation.addShapedMirrored(<BiomesOPlenty:axeAmethyst>,
    [[ amethyst,      amethyst ],
     [ amethyst, diamondShovel ]], 9);
mods.betterstorage.CraftingStation.addShapedMirrored(<BiomesOPlenty:hoeAmethyst>,
    [[ amethyst,   amethyst ],
     [     null, diamondHoe ]], 6);


// Amethyst Armor

var diamondHelmet = <minecraft:diamond_helmet>;
var diamondChest  = <minecraft:diamond_chestplate>;
var diamondLegs   = <minecraft:diamond_leggings>;
var diamondBoots  = <minecraft:diamond_boots>;

recipes.remove(<BiomesOPlenty:helmetAmethyst>);
recipes.remove(<BiomesOPlenty:chestplateAmethyst>);
recipes.remove(<BiomesOPlenty:leggingsAmethyst>);
recipes.remove(<BiomesOPlenty:bootsAmethyst>);

mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:helmetAmethyst>,
    [[ amethyst,      amethyst, amethyst ],
     [ amethyst, diamondHelmet, amethyst ]], 12);
mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:chestplateAmethyst>,
    [[ amethyst, diamondChest, amethyst ],
     [ amethyst,     amethyst, amethyst ],
     [ amethyst,     amethyst, amethyst ]], 24);
mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:leggingsAmethyst>,
    [[ amethyst,    amethyst, amethyst ],
     [ amethyst, diamondLegs, amethyst ],
     [ amethyst,        null, amethyst ]], 18);
mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:bootsAmethyst>,
    [[ amethyst, diamondBoots, amethyst ],
     [ amethyst,         null, amethyst ]], 12);


// Scythes

var stick = <ore:stickWood>;
var wood  = <ore:plankWood>;
var mud   = <BiomesOPlenty:mudball>;

var stone  = <ore:stone>;
var flint  = <minecraft:flint>;
var binder = <minecraft:string>;

var gold    = <ore:ingotGold>;
var emerald = <ore:gemEmerald>;

var ironPlate = <Steamcraft:steamcraftPlate:2>;
var ironScythe    = <BiomesOPlenty:scytheIron>;
var diamondScythe = <BiomesOPlenty:scytheDiamond>;

recipes.remove(<BiomesOPlenty:scytheWood>);
recipes.remove(<BiomesOPlenty:scytheStone>);
recipes.remove(<BiomesOPlenty:scytheGold>);
recipes.remove(ironScythe);
recipes.remove(diamondScythe);
recipes.remove(<BiomesOPlenty:scytheMud>);
recipes.remove(<BiomesOPlenty:scytheAmethyst>);

recipes.addShapedMirrored(<BiomesOPlenty:scytheWood>,
    [[ null,  wood,  wood ],
     [ wood,  null, stick ],
     [ null, stick,  null ]]);

recipes.addShapedMirrored(<BiomesOPlenty:scytheStone>,
    [[  null,  flint,  stone ],
     [ flint, binder,  stick ],
     [  null,  stick, binder ]]);

mods.betterstorage.CraftingStation.addShapedMirrored(<BiomesOPlenty:scytheGold>,
    [[ null,  gold,  gold ],
     [ gold,  null, stick ],
     [ null, stick,  null ]], 1);

mods.betterstorage.CraftingStation.addShapedMirrored(ironScythe,
    [[      null, ironPlate, ironPlate ],
     [ ironPlate,      null,     stick ],
     [      null,     stick,      null ]], 2);

mods.betterstorage.CraftingStation.addShapedMirrored(diamondScythe,
    [[    null, diamond,    emerald ],
     [ diamond,    null, ironScythe ]], 4);

recipes.addShapedMirrored(<BiomesOPlenty:scytheMud>,
    [[ null,   mud,   mud ],
     [  mud,  null, stick ],
     [ null, stick,  null ]]);

mods.betterstorage.CraftingStation.addShapedMirrored(<BiomesOPlenty:scytheAmethyst>,
    [[     null, amethyst,      amethyst ],
     [ amethyst,     null, diamondScythe ]], 6);


// Misc stuff

mods.betterstorage.CraftingStation.addShaped(<BiomesOPlenty:wadingBoots>,
    [[ <minecraft:leather_boots> ], [ <betterstorage:bucketSlime> ]], 4);
