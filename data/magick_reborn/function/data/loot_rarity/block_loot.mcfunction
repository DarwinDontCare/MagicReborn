data modify storage magick:data loot_rarity set value "ignore"

execute if block ~ ~ ~ #air run return 0
execute if block ~ ~ ~ water run return 0
execute if block ~ ~ ~ lava run return 0

# Common
execute if block ~ ~ ~ chest run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ barrel run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ #shulker_boxes run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:coal_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:deepslate_coal_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:copper_ore run return run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:deepslate_copper_ore run return run data modify storage magick:data loot_rarity set value "common"


# Uncommon
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:iron_ingot"}]} run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:redstone"}]} run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:cooked_beef"}]} run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:cooked_porkchop"}]} run data modify storage magick:data loot_rarity set value "uncommon"

execute if block ~ ~ ~ minecraft:iron_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:deepslate_iron_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:redstone_ore run return run data modify storage magick:data loot_rarity set value "uncommon"
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run return run data modify storage magick:data loot_rarity set value "uncommon"


# Rare
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:diamond"}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:heart_of_the_sea"}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:totem_of_undying"}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:golden_apple"}]} run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:saddle"}]} run data modify storage magick:data loot_rarity set value "rare"

execute if block ~ ~ ~ minecraft:gold_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:lapis_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_lapis_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:diamond_ore run return run data modify storage magick:data loot_rarity set value "rare"
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run return run data modify storage magick:data loot_rarity set value "rare"


# Epic
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:nether_star"}]} run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:elytra"}]} run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:enchanted_golden_apple"}]} run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:dragon_egg"}]} run data modify storage magick:data loot_rarity set value "epic"
execute if block ~ ~ ~ #magick_reborn:containers if data block ~ ~ ~ {Items:[{id:"minecraft:ancient_debris"}]} run data modify storage magick:data loot_rarity set value "epic"

execute if block ~ ~ ~ ender_chest run data modify storage magick:data loot_rarity set value "common"
execute if block ~ ~ ~ minecraft:ancient_debris run return run data modify storage magick:data loot_rarity set value "epic"
