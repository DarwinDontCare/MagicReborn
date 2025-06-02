$execute store result score #Calculation calculationValues run data get entity @s $(path)
$scoreboard players set #Calculation calculationValues2 $(multiplier)
scoreboard players operation #Calculation calculationValues *= #Calculation calculationValues2
$scoreboard players operation @s $(score) += #Calculation calculationValues