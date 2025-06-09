$execute store result score #Raycast index run data get storage magick $(uuid).raycast.index 10

$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision positioned ^ ^ ^.5 if block ~ ~1 ~ #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~1 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision if block ~ ~1 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~-1 ~ #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision run return run summon marker ~ ~-1 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision if block ~ ~3 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~2 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if entity @e[predicate=!magick_reborn:ignore_entity, distance=..1] at @e[predicate=!magick_reborn:ignore_entity, distance=..1,limit=1] run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast index matches $(distance).. run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}

scoreboard players add #Raycast index 5

$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$data modify storage magick $(uuid).raycast.distance set value $(distance)
$execute store result storage magick $(uuid).raycast.index double .1 run scoreboard players get #Raycast index
$function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast