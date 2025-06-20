$execute as @a[scores={uuid=$(uuid)},limit=1] run scoreboard players add @s activeSummons $(proportion)

$execute as @a[scores={uuid=$(uuid)},limit=1] if score @s activeSummons > @s maxActiveSummons run tell @s "I can't summon more entities :("
$execute as @a[scores={uuid=$(uuid)},limit=1] if score @s activeSummons > @s maxActiveSummons run return run scoreboard players remove @s activeSummons $(proportion)

$execute at @s positioned ^$(x) ^ ^ run particle cloud ~ ~ ~ .2 .2 .2 0.2 15 force @a
$execute at @s positioned ^$(x) ^ ^ run playsound $(sound) ambient @a[distance=..20] ~ ~ ~ 1 1 0.2

$execute at @s rotated as @a[scores={uuid=$(uuid)},limit=1] run summon $(mob) ^$(x) ^ ^ {CustomName:"$(name)",equipment:$(equipment),Tags:["summoned"],DeathLootTable:"entities/empty",data:{caster_id: $(uuid), range: $(range), proportion: $(proportion)}$(nbt)}
$execute at @s run summon marker ~ ~ ~ {Tags:["summon_marker"],Silent:true,data:{caster_id: $(uuid), range: $(range), proportion: $(proportion)}}
$execute at @s as @e[type=marker,tag=summon_marker,sort=nearest,limit=1] run data modify entity @s data.summon_uuid set from entity @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] UUID

$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] if entity @s[type=#magick_reborn:hostile_mobs] unless score @s projectileHealth matches 0.. run attribute @s max_health modifier add health_boost $(amplifier) add_value

$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] unless entity @s[type=#magick_reborn:hostile_mobs] run scoreboard players set @s calculationValues $(amplifier)
$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] unless entity @s[type=#magick_reborn:hostile_mobs] run scoreboard players set @s calculationValues2 5
$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] unless entity @s[type=#magick_reborn:hostile_mobs] run scoreboard players operation @s calculationValues += @s calculationValues2
$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] unless entity @s[type=#magick_reborn:hostile_mobs] run execute store result storage magick:data movement_speed_mod.value double 0.1 run scoreboard players get @s calculationValues
$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,limit=1,team=!$(uuid)] unless entity @s[type=#magick_reborn:hostile_mobs] run function magick_reborn:data/set_movement_speed with storage magick:data movement_speed_mod

$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,team=!$(uuid)] unless score @s projectileHealth matches 0.. run team join $(uuid)
$execute at @s as @e[type=$(mob),tag=summoned,sort=nearest,team=$(uuid)] unless score @s projectileHealth matches 0.. run scoreboard players set @s projectileHealth $(duration)

$team add $(uuid)
$team join $(uuid)
