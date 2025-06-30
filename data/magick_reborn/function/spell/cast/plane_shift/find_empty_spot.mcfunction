$scoreboard players set @s index $(index)

$execute positioned ~ ~$(index) ~ unless block ~ ~-1 ~ lava if block ~ ~ ~ #air if block ~ ~1 ~ #air run return run tp @s ~ ~ ~

execute at @s if dimension the_nether if score @s index matches 128.. run scoreboard players set @s boolean 1
execute at @s if dimension the_nether if score @s index matches 128.. run scoreboard players remove @s index 1
execute at @s unless score @s boolean matches 1 run scoreboard players add @s index 1

execute store result storage magick:data plane_shift.find_empty_spot.index int 1 run scoreboard players get @s index
function magick_reborn:spell/cast/plane_shift/find_empty_spot with storage magick:data plane_shift.find_empty_spot