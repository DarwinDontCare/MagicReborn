$execute store result score #Raycast index run data get storage magick $(uuid).teleport.index 10

$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision positioned ^ ^ ^.5 if block ~ ~1 ~ #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision run return run tp @s ~ ~1 ~
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision if block ~ ~1 ~ #magick_reborn:ignore_colision run return run tp @s ~ ~ ~
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~-1 ~ #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision run return run tp @s ~ ~-1 ~
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision if block ~ ~3 ~ #magick_reborn:ignore_colision run return run tp @s ~ ~2 ~
$execute positioned ^ ^ ^$(index) if entity @e[predicate=!magick_reborn:ignore_entity, distance=..1] run return run tp @s @e[predicate=!magick_reborn:ignore_entity, distance=..1,limit=1]
$execute positioned ^ ^ ^$(index) if score #Raycast index matches $(distance).. run return run tp @s ~ ~ ~

scoreboard players add #Raycast index 5

$execute store result storage magick $(uuid).teleport.index double .1 run scoreboard players get #Raycast index
$function magick_reborn:spell/cast/raycast with storage magick $(uuid).teleport