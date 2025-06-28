data modify storage magick:data loot_rarity set value "ignore"

execute if block ~ ~ ~ #air run return 0
execute if block ~ ~ ~ water run return 0
execute if block ~ ~ ~ lava run return 0

# Common
execute if block ~ ~ ~ #magick_reborn:containers unless data block ~ ~ ~ {Items: []} run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ #magick_reborn:common_ores run return run data modify storage magick:data loot_rarity set value "common"

# Uncommon
execute if block ~ ~ ~ #magick_reborn:containers{Items:[{components:{"minecraft:rarity":"uncommon"}}]} run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ #magick_reborn:containers if items block ~ ~ ~ container.* #magick_reborn:uncommon_loot run data modify storage magick:data loot_rarity set value "uncommon"

execute if block ~ ~ ~ #magick_reborn:uncommon_ores run return run data modify storage magick:data loot_rarity set value "uncommon"

# Rare
execute if block ~ ~ ~ #magick_reborn:containers{Items:[{components:{"minecraft:rarity":"rare"}}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if items block ~ ~ ~ container.* #magick_reborn:rare_loot run data modify storage magick:data loot_rarity set value "rare"

execute if block ~ ~ ~ #magick_reborn:rare_ores run return run data modify storage magick:data loot_rarity set value "rare"

# Epic
execute if block ~ ~ ~ #magick_reborn:containers{Items:[{components:{"minecraft:rarity":"epic"}}]} run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:containers if items block ~ ~ ~ container.* #magick_reborn:epic_loot run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:epic_ores run return run data modify storage magick:data loot_rarity set value "epic"

execute if block ~ ~ ~ ender_chest run data modify storage magick:data loot_rarity set value "epic"
