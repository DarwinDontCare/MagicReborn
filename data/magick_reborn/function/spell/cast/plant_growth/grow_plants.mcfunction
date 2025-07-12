execute if block ~ ~ ~ #magick_reborn:plants run particle happy_villager ~ ~ ~ 0.0 0.0 0.0 0.02 1 force @a
execute if block ~ ~ ~ #magick_reborn:grass_blocks run particle happy_villager ~ ~ ~ 0.0 0.0 0.0 0.02 1 force @a

execute unless block ~ ~ ~ #magick_reborn:plants unless block ~ ~ ~ #magick_reborn:grass_blocks unless block ~ ~ ~ soul_sand run return 0

execute if block ~ ~ ~ short_grass run return run setblock ~ ~ ~ tall_grass replace
execute if block ~ ~ ~ short_dry_grass run return run setblock ~ ~ ~ tall_dry_grass replace
execute if block ~ ~ ~ wheat run return run setblock ~ ~ ~ wheat[age=7] replace
execute if block ~ ~ ~ pumpkin_stem run return run setblock ~ ~ ~ pumpkin_stem[age=7] replace
execute if block ~ ~ ~ melon_stem run return run setblock ~ ~ ~ melon_stem[age=7] replace
execute if block ~ ~ ~ carrots run return run setblock ~ ~ ~ carrots[age=7] replace
execute if block ~ ~ ~ potatoes run return run setblock ~ ~ ~ potatoes[age=7] replace
execute if block ~ ~ ~ beetroots run return run setblock ~ ~ ~ beetroots[age=3] replace
execute if block ~ ~ ~ nether_wart run return run setblock ~ ~ ~ nether_wart[age=3] replace

execute if block ~ ~ ~ grass_block if block ~ ~1 ~ short_grass run setblock ~ ~1 ~ tall_grass
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ plains run place feature patch_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ plains run place feature flower_plain ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ taiga run place feature patch_taiga_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ snowy_beach run place feature patch_taiga_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ birch_forest run place feature wildflowers_birch_forest ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ birch_forest run place feature patch_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ snowy_plains run place feature patch_taiga_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ snowy_slopes run place feature patch_taiga_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ snowy_taiga run place feature patch_taiga_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ flower_forest run place feature flower_flower_forest ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ sunflower_plains run place feature patch_sunflower ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ desert run place feature minecraft:patch_dry_grass ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ short_dry_grass run setblock ~ ~1 ~ tall_dry_grass
execute if block ~ ~ ~ warped_nylium if block ~ ~1 ~ #air run place feature warped_forest_vegetation_bonemeal ~ ~1 ~
execute if block ~ ~ ~ crimson_nylium if block ~ ~1 ~ #air run place feature crimson_forest_vegetation_bonemeal ~ ~1 ~
execute if block ~ ~ ~ sand if block ~ ~1 ~ #air if biome ~ ~ ~ warm_ocean run place feature warm_ocean_vegetation ~ ~1 ~
execute if block ~ ~ ~ gravel if block ~ ~1 ~ #air if biome ~ ~ ~ warm_ocean run place feature warm_ocean_vegetation ~ ~1 ~
execute if block ~ ~ ~ dirt if block ~ ~1 ~ #air if biome ~ ~ ~ warm_ocean run place feature warm_ocean_vegetation ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ dark_forest run place feature dark_forest_vegetation ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ bamboo_jungle run place feature bamboo_vegetation ~ ~1 ~
execute if block ~ ~ ~ grass_block if block ~ ~1 ~ #air if biome ~ ~ ~ pale_garden run place feature pale_garden_vegetation ~ ~1 ~
execute if block ~ ~ ~ moss_block if block ~ ~1 ~ #air run place feature moss_patch_bonemeal ~ ~1 ~
execute if block ~ ~ ~ netherrack if block ~ ~1 ~ #air if biome ~ ~ ~ nether_wastes run place feature nether_sprouts_bonemeal ~ ~1 ~

execute if block ~ ~1 ~ short_grass run return run setblock ~ ~1 ~ tall_grass replace
execute if block ~ ~1 ~ short_dry_grass run return run setblock ~ ~1 ~ tall_dry_grass replace
execute if block ~ ~1 ~ wheat run return run setblock ~ ~1 ~ wheat[age=7] replace
execute if block ~ ~1 ~ pumpkin_stem run return run setblock ~ ~1 ~ pumpkin_stem[age=7] replace
execute if block ~ ~1 ~ melon_stem run return run setblock ~ ~1 ~ melon_stem[age=7] replace
execute if block ~ ~1 ~ carrots run return run setblock ~ ~1 ~ carrots[age=7] replace
execute if block ~ ~1 ~ potatoes run return run setblock ~ ~1 ~ potatoes[age=7] replace
execute if block ~ ~1 ~ beetroots run return run setblock ~ ~1 ~ beetroots[age=3] replace
execute if block ~ ~1 ~ nether_wart run return run setblock ~ ~1 ~ nether_wart[age=3] replace

execute if block ~ ~ ~ sugar_cane unless block ~ ~-1 ~ sugar_cane run return run fill ~ ~ ~ ~ ~2 ~ sugar_cane replace #air
execute if block ~ ~ ~ sugar_cane unless block ~ ~-2 ~ sugar_cane if block ~ ~-1 ~ sugar_cane run return run fill ~ ~ ~ ~ ~1 ~ sugar_cane replace #air
execute if block ~ ~ ~ cactus unless block ~ ~-1 ~ cactus run return run fill ~ ~ ~ ~ ~2 ~ cactus replace #air
execute if block ~ ~ ~ cactus unless block ~ ~-2 ~ cactus if block ~ ~-1 ~ cactus run return run fill ~ ~ ~ ~ ~1 ~ cactus replace #air
execute if block ~ ~ ~ bamboo unless block ~ ~-1 ~ bamboo run return run fill ~ ~ ~ ~ ~5 ~ bamboo replace #air
execute if block ~ ~ ~ bamboo unless block ~ ~-2 ~ bamboo if block ~ ~-1 ~ bamboo run return run fill ~ ~ ~ ~ ~4 ~ bamboo replace #air

execute if block ~ ~1 ~ sugar_cane unless block ~ ~-1 ~ sugar_cane run return run fill ~ ~ ~ ~ ~2 ~ sugar_cane replace #air
execute if block ~ ~1 ~ sugar_cane unless block ~ ~-2 ~ sugar_cane if block ~ ~-1 ~ sugar_cane run return run fill ~ ~ ~ ~ ~1 ~ sugar_cane replace #air
execute if block ~ ~1 ~ cactus unless block ~ ~-1 ~ cactus run return run fill ~ ~ ~ ~ ~2 ~ cactus replace #air
execute if block ~ ~1 ~ cactus unless block ~ ~-2 ~ cactus if block ~ ~-1 ~ cactus run return run fill ~ ~ ~ ~ ~1 ~ cactus replace #air
execute if block ~ ~1 ~ bamboo unless block ~ ~-1 ~ bamboo run return run fill ~ ~ ~ ~ ~5 ~ bamboo replace #air
execute if block ~ ~1 ~ bamboo unless block ~ ~-2 ~ bamboo if block ~ ~-1 ~ bamboo run return run fill ~ ~ ~ ~ ~4 ~ bamboo replace #air

execute if block ~ ~ ~ oak_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "trees_plains"}
execute if block ~ ~ ~ birch_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "trees_birch"}
execute if block ~ ~ ~ acacia_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "trees_savanna"}
execute if block ~ ~ ~ bamboo_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "bamboo_no_podzol"}
execute if block ~ ~ ~ cherry_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "cherry"}
execute if block ~ ~ ~ jungle_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "jungle_tree"}
execute if block ~ ~ ~ spruce_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "spruce"}
execute if block ~ ~ ~ dark_oak_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "dark_oak"}
execute if block ~ ~ ~ pale_oak_sapling if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "pale_oak"}
execute if block ~ ~ ~ warped_fungus if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "warped_fungus_planted"}
execute if block ~ ~ ~ crimson_fungus if block ~ ~1 ~ #air run return run function magick_reborn:spell/cast/plant_growth/grow_tree {tree: "crimson_fungus_planted"}