execute as @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{summoned: true}}}}}] run item modify entity @s armor.head magick_reborn:damage_item

execute as @s[nbt={equipment:{chest:{components:{"minecraft:custom_data":{summoned: true}}}}}] run item modify entity @s armor.chest magick_reborn:damage_item

execute as @s[nbt={equipment:{legs:{components:{"minecraft:custom_data":{summoned: true}}}}}] run item modify entity @s armor.legs magick_reborn:damage_item

execute as @s[nbt={equipment:{feet:{components:{"minecraft:custom_data":{summoned: true}}}}}] run item modify entity @s armor.feet magick_reborn:damage_item

execute store result score @s calculationValues run data get entity @s equipment.head.components."minecraft:damage"
execute store result score @s calculationValues2 run data get entity @s equipment.head.components."minecraft:max_damage"

execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{summoned: true}}}}}] if score @s calculationValues = @s calculationValues2 run item replace entity @s armor.head with air

execute store result score @s calculationValues run data get entity @s equipment.chest.components."minecraft:damage"
execute store result score @s calculationValues2 run data get entity @s equipment.chest.components."minecraft:max_damage"

execute if entity @s[nbt={equipment:{chest:{components:{"minecraft:custom_data":{summoned: true}}}}}] if score @s calculationValues = @s calculationValues2 run item replace entity @s armor.chest with air

execute store result score @s calculationValues run data get entity @s equipment.legs.components."minecraft:damage"
execute store result score @s calculationValues2 run data get entity @s equipment.legs.components."minecraft:max_damage"

execute if entity @s[nbt={equipment:{legs:{components:{"minecraft:custom_data":{summoned: true}}}}}] if score @s calculationValues = @s calculationValues2 run item replace entity @s armor.legs with air

execute store result score @s calculationValues run data get entity @s equipment.feet.components."minecraft:damage"
execute store result score @s calculationValues2 run data get entity @s equipment.feet.components."minecraft:max_damage"

execute if entity @s[nbt={equipment:{feet:{components:{"minecraft:custom_data":{summoned: true}}}}}] if score @s calculationValues = @s calculationValues2 run item replace entity @s armor.feet with air

scoreboard players reset @s calculationValues
scoreboard players reset @s calculationValues2