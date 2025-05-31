execute store success score #Compare boolean run data modify storage magick $(uuid).unlocked_effects merge from entity @s SelectedItem.components."minecraft:custom_data".effects
execute if score #Compare boolean matches 1 run scoreboard players add @s levelProgressBar 80

scoreboard players reset #Compare boolean