$execute store result score #Flames index run data get storage magick $(uuid).flames.index 10
scoreboard players add #Flames ticksCount 1

$execute positioned ^ ^ ^$(index) run playsound block.fire.ambient ambient @a[distance=..15] ~ ~ ~ 1 1 0.5
$execute positioned ^ ^ ^$(index) run particle flame ~ ~ ~ .$(particle_amplitude) .$(particle_amplitude) .$(particle_amplitude) .05 2 force @a
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3] if score #global ticksCount matches 20.. unless score @s uuid matches $(uuid) run damage @s $(damage) in_fire by @a[scores={uuid=$(uuid)}, limit=1]
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3, type=!player] unless score @s uuid matches $(uuid) run data modify entity @s Fire set value $(duration)s

$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice if score @s meltIce matches 20.. run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice if score @s meltIce matches 20.. run particle cloud ~ ~ ~ 0 0.5 0 0.1 15 force @a
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice if score @s meltIce matches 20.. run fill ^.$(particle_amplitude) ^.$(particle_amplitude) ^.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) air replace packed_ice
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice if score @s meltIce matches 20.. run scoreboard players reset @s meltIce
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice unless entity @s[tag=melting_ice] run scoreboard players add @s meltIce 1
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ packed_ice unless entity @s[tag=melting_ice] run tag @s add melting_ice

$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #ice unless block ~ ~ ~ packed_ice unless block ~ ~ ~ blue_ice unless block ~ ~ ~ packed_ice run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #ice unless block ~ ~ ~ packed_ice unless block ~ ~ ~ blue_ice unless block ~ ~ ~ packed_ice run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.2 15 force @a 
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #ice unless block ~ ~ ~ packed_ice unless block ~ ~ ~ blue_ice unless block ~ ~ ~ packed_ice run fill ^.$(particle_amplitude) ^.$(particle_amplitude) ^.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) water replace #ice
$execute positioned ^ ^ ^$(index) if block ~ ~$(particle_amplitude) ~ #air unless block ~ ~ ~ #ice unless block ~ ~ ~ #magick_reborn:ignore_colision run fill ^.$(particle_amplitude) ^.$(particle_amplitude) ^.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) fire replace #air

$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #magick_reborn:flamable if block ~ ~1 ~ #air run fill ~ ~1 ~ ~ ~1 ~ fire replace #air
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #magick_reborn:flamable if block ~ ~-1 ~ #air run fill ~ ~-1 ~ ~ ~-1 ~ fire replace #air
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #magick_reborn:flamable if block ^ ^ ^-1 #air run fill ^ ^ ^-1 ^ ^ ^-1 fire replace #air

$execute if score #Flames index matches $(range).. as @s[tag=!melting_ice,scores={meltIce=1..}] run scoreboard players reset @s meltIce
$execute positioned ^ ^ ^$(index) unless block ~ ~ ~ #magick_reborn:ignore_colision as @s[tag=!melting_ice,scores={meltIce=1..}] run scoreboard players reset @s meltIce

$execute if score #Flames index matches $(range).. run return 1
$execute positioned ^ ^ ^$(index) unless block ~ ~ ~ #magick_reborn:ignore_colision run return 1

scoreboard players add #Flames index 5

$execute store result score #Flames calculationValues run data get storage magick $(uuid).flames.particle_amplitude
scoreboard players add #Flames calculationValues 1

$execute store result storage magick $(uuid).flames.particle_amplitude double 1 run scoreboard players get #Flames calculationValues
$execute store result storage magick $(uuid).flames.index double .1 run scoreboard players get #Flames index
$function magick_reborn:spell/cast/flames_effect with storage magick $(uuid).flames
