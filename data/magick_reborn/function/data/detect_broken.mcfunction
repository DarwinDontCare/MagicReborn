execute store result score #Calculation calculationValues run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score #Calculation calculationValues2 run data get entity @s SelectedItem.components."minecraft:max_damage"

execute if score #Calculation calculationValues = #Calculation calculationValues2 run return 1
execute unless score #Calculation calculationValues = #Calculation calculationValues2 run return 0