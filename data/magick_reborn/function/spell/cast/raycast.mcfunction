$execute store result score #Raycast index run data get storage magick $(uuid).raycast.index 10
$scoreboard players set #Raycast boolean $(hit_entities)
$scoreboard players set #Raycast calculationResults $(only_blocks)

$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 0 unless block ^ ^ ^.5 #magick_reborn:ignore_colision positioned ^ ^ ^.5 if block ~ ~1 ~ #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~1 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 0 unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision if block ~ ~1 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 0 unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~-1 ~ #magick_reborn:ignore_colision if block ~ ~ ~ #magick_reborn:ignore_colision run return run summon marker ~ ~-1 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 0 unless block ^ ^ ^.5 #magick_reborn:ignore_colision if block ~ ~2 ~ #magick_reborn:ignore_colision if block ~ ~3 ~ #magick_reborn:ignore_colision run return run summon marker ~ ~2 ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 1 unless block ~ ~ ~ #magick_reborn:ignore_colision run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast boolean matches 1 if entity @e[predicate=!magick_reborn:ignore_entity, distance=..1] unless score @s uuid matches $(uuid) at @e[predicate=!magick_reborn:ignore_entity, distance=..1,limit=1] run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 0 if score #Raycast index matches $(distance).. run return run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_$(tag)"],data:{caster_id: $(uuid)}}
$execute positioned ^ ^ ^$(index) if score #Raycast calculationResults matches 1 if score #Raycast index matches $(distance).. run return 1

scoreboard players add #Raycast index 5

$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$data modify storage magick $(uuid).raycast.distance set value $(distance)
$data modify storage magick $(uuid).raycast.tag set value "$(tag)"
$data modify storage magick $(uuid).raycast.hit_entities set value $(hit_entities)
$data modify storage magick $(uuid).raycast.only_blocks set value $(only_blocks)
$execute store result storage magick $(uuid).raycast.index double .1 run scoreboard players get #Raycast index
$function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast