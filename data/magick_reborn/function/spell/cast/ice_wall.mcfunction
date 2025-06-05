$scoreboard players set @s x $(amplifier)
$scoreboard players set @s y $(amplifier)
$scoreboard players set @s z $(amplifier)

execute at @s if entity @e[tag=ice_wall_marker,distance=..2] run return 0

scoreboard players set #Calculation calculationValues 2
scoreboard players operation @s x /= #Calculation calculationValues
execute if score @s x matches ..0 run scoreboard players set @s x 1

scoreboard players set #Calculation calculationValues 3
scoreboard players operation @s z /= #Calculation calculationValues
execute if score @s z matches ..0 run scoreboard players set @s z 1

$execute store result storage magick $(caster_id).ice_wall.y int 1 run scoreboard players get @s y
$execute store result storage magick $(caster_id).ice_wall.x int 1 run scoreboard players get @s x
$execute store result storage magick $(caster_id).ice_wall.z int 1 run scoreboard players get @s z
$data modify storage magick $(caster_id).ice_wall.duration set value $(duration)
$data modify storage magick $(caster_id).ice_wall.caster_id set value $(caster_id)

$execute at @s run function magick_reborn:spell/cast/place_ice_wall with storage magick $(caster_id).ice_wall
$execute at @s run function magick_reborn:spell/cast/frostbite {amplifier: $(amplifier), duration: $(duration), caster_id: $(caster_id)}

$kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{caster_id: $(caster_id)}}}},distance=..2]