$execute store result score #Frostbite index run data get storage magick $(uuid).frostbite.index 10
scoreboard players add #Frostbite ticksCount 1

$execute positioned ^ ^ ^$(index) run playsound block.powder_snow.place ambient @a[distance=..15] ~ ~ ~ 1 1 0.5
$execute positioned ^ ^ ^$(index) run particle snowflake ~ ~ ~ .$(particle_amplitude) .$(particle_amplitude) .$(particle_amplitude) .05 2 force @a
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3] if score #global ticksCount matches 20.. unless score @s uuid matches $(uuid) run damage @s $(damage) freeze by @a[scores={uuid=$(uuid)}, limit=1]
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3] unless score @s uuid matches $(uuid) run effect give @s minecraft:fire_resistance 1 0 true
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3] unless score @s uuid matches $(uuid) run scoreboard players set @s freezeTicks $(duration)
$execute positioned ^ ^ ^$(index) as @e[predicate=!magick_reborn:ignore_entity,distance=..3] unless score @s uuid matches $(uuid) run effect give @s slowness $(duration) $(amplifier) true

$execute positioned ^ ^ ^$(index) if block ~ ~ ~ water run playsound minecraft:block.amethyst_cluster.place ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ water run fill ^.$(particle_amplitude) ^.$(particle_amplitude) ^.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) ^-.$(particle_amplitude) frosted_ice replace water
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #fire run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ #fire run fill ~ ~ ~ ~ ~ ~ air replace #fire
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ lava run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
$execute positioned ^ ^ ^$(index) if block ~ ~ ~ lava run fill ~ ~ ~ ~ ~ ~ obsidian replace lava

$execute if score #Frostbite index matches $(range).. run return 1
$execute positioned ^ ^ ^$(index) unless block ~ ~ ~ #magick_reborn:ignore_colision run return 1

scoreboard players add #Frostbite index 5

$execute store result score #Frostbite calculationValues run data get storage magick $(uuid).frostbite.particle_amplitude
scoreboard players add #Frostbite calculationValues 1

$execute store result storage magick $(uuid).frostbite.particle_amplitude double 1 run scoreboard players get #Frostbite calculationValues
$execute store result storage magick $(uuid).frostbite.index double .1 run scoreboard players get #Frostbite index
$function magick_reborn:spell/cast/frostbite_effect with storage magick $(uuid).frostbite
