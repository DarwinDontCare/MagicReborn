scoreboard players reset #RarityCheck boolean

data modify storage magick $(uuid).rarity_check set value "common"
$execute store success score #RarityCheck boolean run data modify storage magick $(uuid).rarity_check set from entity @s SelectedItem.components.minecraft:rarity

execute if score #RarityCheck boolean matches 0 run return run scoreboard players add @s levelProgressBar 20

data modify storage magick $(uuid).rarity_check set value "uncommon"
$execute store success score #RarityCheck boolean run data modify storage magick $(uuid).rarity_check set from entity @s SelectedItem.components.minecraft:rarity

execute if score #RarityCheck boolean matches 0 run return run scoreboard players add @s levelProgressBar 40

data modify storage magick $(uuid).rarity_check set value "rare"
$execute store success score #RarityCheck boolean run data modify storage magick $(uuid).rarity_check set from entity @s SelectedItem.components.minecraft:rarity

execute if score #RarityCheck boolean matches 0 run return run scoreboard players add @s levelProgressBar 60

data modify storage magick $(uuid).rarity_check set value "epic"
$execute store success score #RarityCheck boolean run data modify storage magick $(uuid).rarity_check set from entity @s SelectedItem.components.minecraft:rarity

execute if score #RarityCheck boolean matches 0 run return run scoreboard players add @s levelProgressBar 80