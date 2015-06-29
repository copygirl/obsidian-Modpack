var paper = <minecraft:paper>;
recipes.remove(<SpiceOfLife:lunchbag>);
recipes.addShaped(<SpiceOfLife:lunchbag>,
    [[  null, paper,  null ],
     [ paper,  null, paper ],
     [ paper, paper, paper ]]);

var iron = <ore:ingotIron>;
recipes.remove(<SpiceOfLife:lunchbox>);
mods.betterstorage.CraftingStation.addShaped(<SpiceOfLife:lunchbox>,
    [[ null, iron, null ],
     [ iron, null, iron ],
     [ iron, iron, iron ]], 1);
