data modify storage magick:data loot_rarity set value "ignore"

execute if block ~ ~ ~ #magick_reborn:ignore_colision run return 0

# Common
execute if data block ~ ~ ~ {LootTable: "chests/village/village_weaponsmith"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_toolsmith"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_armorer"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_cartographer"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_mason"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_butcher"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_shepherd"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_tannery"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_temple"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_plains_house"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_savanna_house"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_snowy_house"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_taiga_house"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/village/village_desert_house"} run return run data modify storage magick:data loot_rarity set value "common"
execute if data block ~ ~ ~ {LootTable: "chests/pillager_outpost"} run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:coal_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:deepslate_coal_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:copper_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:deepslate_copper_ore run return run data modify storage magick:data loot_rarity set value "common"


# Uncommon
execute if data block ~ ~ ~ {LootTable: "chests/simple_dungeon"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/shipwreck_map"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/shipwreck_treasure"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/shipwreck_supply"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/jungle_temple"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/desert_pyramid"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/bastion_bridge"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/bastion_stable"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/underwater_ruin_big"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/underwater_ruin_small"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/buried_treasure"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/nether_bridge"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/igloo_chest"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/ruined_portal"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if data block ~ ~ ~ {LootTable: "chests/trial_chambers/reward_common"} run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:iron_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:deepslate_iron_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:redstone_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run return run data modify storage magick:data loot_rarity set value "uncommon"


# Rare
execute if data block ~ ~ ~ {LootTable: "chests/woodland_mansion"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if data block ~ ~ ~ {LootTable: "chests/stronghold_corridor"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if data block ~ ~ ~ {LootTable: "chests/stronghold_crossing"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if data block ~ ~ ~ {LootTable: "chests/stronghold_library"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if data block ~ ~ ~ {LootTable: "chests/bastion_treasure"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if data block ~ ~ ~ {LootTable: "chests/end_city_treasure"} run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:gold_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:lapis_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_lapis_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:diamond_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run return run data modify storage magick:data loot_rarity set value "rare"


# Epic
execute if data block ~ ~ ~ {LootTable: "chests/ancient_city"} run return run data modify storage magick:data loot_rarity set value "epic"
execute if data block ~ ~ ~ {LootTable: "chests/trial_chambers/reward_rare"} run return run data modify storage magick:data loot_rarity set value "epic"
execute if data block ~ ~ ~ {LootTable: "chests/trial_chambers/reward_epic"} run return run data modify storage magick:data loot_rarity set value "epic"
execute if data block ~ ~ ~ {LootTable: "chests/trial_chambers/dispenser_pottery"} run return run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ minecraft:ancient_debris run return run data modify storage magick:data loot_rarity set value "epic"
