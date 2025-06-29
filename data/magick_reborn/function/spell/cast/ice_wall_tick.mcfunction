execute unless score @s calculationValues matches 1.. run scoreboard players set @s y -1
execute if score @s ticksCount matches 1.. run scoreboard players remove @s ticksCount 1

$scoreboard players set @s calculationValues $(y)

$data modify storage magick $(caster_id).ice_wall.x set from entity @s data.x
$execute store result storage magick $(caster_id).ice_wall.y int 1 run scoreboard players get @s y
$data modify storage magick $(caster_id).ice_wall.z set from entity @s data.z
$data modify storage magick $(caster_id).ice_wall.caster_id set value $(caster_id)

$execute if score @s ticksCount matches 18 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 15 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 12 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 9 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 6 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 3 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall
$execute if score @s ticksCount matches 0 if score @s y < @s calculationValues run function magick_reborn:spell/cast/generate_ice_wall with storage magick $(caster_id).ice_wall

$execute if score @s projectileHealth matches 0 run function magick_reborn:spell/cast/destroy_ice_wall with storage magick $(caster_id).ice_wall
execute if score @s projectileHealth matches 1.. if score @s ticksCount matches 0 run scoreboard players remove @s projectileHealth 1
execute unless score @s ticksCount matches 1.. run scoreboard players set @s ticksCount 20
