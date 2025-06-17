$execute store result score #SonicBoom index run data get storage magick $(uuid).sonic_boom.index 10
scoreboard players add #SonicBoom ticksCount 1

$execute positioned ^ ^ ^$(index) run particle sonic_boom ~ ~ ~
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..2,tag=!sonic_boom_$(uuid)] unless score @s uuid matches $(uuid) run damage @s $(current_damage) sonic_boom by @a[scores={uuid=$(uuid)}, limit=1]
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..2,tag=!sonic_boom_$(uuid)] at @s rotated as @a[scores={uuid=$(uuid)}, limit=1] anchored eyes unless score @s uuid matches $(uuid) run function magick_reborn:spell/cast/telekinesis/push {uuid: $(uuid)}
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..2,tag=!sonic_boom_$(uuid)] unless score @s uuid matches $(uuid) run tag @s add sonic_boom_$(uuid)

$execute if score #SonicBoom index matches $(range).. run return 1

scoreboard players add #SonicBoom index 5


$execute store result score #SonicBoom baseDamage run data get storage magick $(uuid).sonic_boom.amplifier 100
$execute store result score #SonicBoom adjustedDamage run data get storage magick $(uuid).sonic_boom.current_damage 100
scoreboard players set #SonicBoom calculationValues 5
scoreboard players set #SonicBoom calculationValues2 100
scoreboard players operation #SonicBoom baseDamage *= #SonicBoom calculationValues
scoreboard players operation #SonicBoom baseDamage /= #SonicBoom calculationValues2
scoreboard players operation #SonicBoom adjustedDamage -= #SonicBoom baseDamage

$execute if score #SonicBoom ticksCount matches $(damage_interval).. run execute store result storage magick $(uuid).sonic_boom.current_damage double .01 run scoreboard players get #SonicBoom adjustedDamage
$execute if score #SonicBoom ticksCount matches $(damage_interval).. run scoreboard players reset #SonicBoom ticksCount

$execute store result storage magick $(uuid).sonic_boom.index double .1 run scoreboard players get #SonicBoom index
$function magick_reborn:spell/cast/sonic_boom_effect with storage magick $(uuid).sonic_boom