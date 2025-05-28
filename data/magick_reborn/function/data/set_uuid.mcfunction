execute store result score @s uuid run data get entity @s UUID[0]
execute store result score @s calculationValues run data get entity @s UUID[1]
scoreboard players operation @s uuid += @s calculationValues
execute store result score @s calculationValues run data get entity @s UUID[2]
scoreboard players operation @s uuid += @s calculationValues

execute store result storage magick:data uuid_data int 1 run scoreboard players get @s uuid
function magick_reborn:data/create_storage_for_uuid with storage magick:data