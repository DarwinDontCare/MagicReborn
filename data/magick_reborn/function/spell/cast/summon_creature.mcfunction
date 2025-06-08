$scoreboard players set #Summon index $(index)
$scoreboard players set #Summon calculationValues $(amplifier)
scoreboard players set #Summon calculationValues2 2
scoreboard players operation #Summon calculationValues2 /= #Summon calculationValues
scoreboard players operation #Summon calculationValues2 -= #Summon index

execute store result storage magick:data summoned_entity.x int 1 run scoreboard players get #Summon calculationValues2

execute if score #Summon calculationValues matches 0 run scoreboard players set #Summon calculationValues 1

$execute as @a[scores={uuid=$(uuid)},limit=1] run scoreboard players add @s activeSummons $(proportion)

$execute as @a[scores={uuid=$(uuid)},limit=1] if score @s activeSummons > @s maxActiveSummons run tell @s "I can't summon more entities :("
$execute as @a[scores={uuid=$(uuid)},limit=1] if score @s activeSummons > @s maxActiveSummons run return run scoreboard players remove @s activeSummons $(proportion)

execute if score #Summon index > #Summon calculationValues run return 1

$execute at @s positioned ^$(x) ^ ^ run particle cloud ~ ~ ~ .2 .2 .2 0.2 15 force @a
$execute at @s positioned ^$(x) ^ ^ run playsound $(sound) ambient @a[distance=..20] ~ ~ ~ 1 1 0.2

$execute at @s rotated as @a[scores={uuid=$(uuid)},limit=1] run summon $(mob) ^$(x) ^ ^ {equipment:$(equipment),Tags:["summoned"],Passengers:[{id:"marker",Tags:["summon_marker"],NoAI:true,Silent:true,data:{caster_id: $(uuid), range: $(range), proportion: $(proportion)}}],DeathLootTable:"entities/empty",data:{caster_id: $(uuid), range: $(range), proportion: $(proportion)}$(nbt)}
$execute at @s as @e[type=$(mob),tag=summoned,distance=..2,limit=1,team=!$(uuid)] unless score @s projectileHealth matches 0.. run attribute @s max_health modifier add health_boost $(amplifier) add_value
$execute at @s as @e[type=$(mob),tag=summoned,distance=..$(amplifier),team=!$(uuid)] unless score @s projectileHealth matches 0.. run team join $(uuid)
$execute at @s as @e[type=$(mob),tag=summoned,distance=..$(amplifier),team=$(uuid)] unless score @s projectileHealth matches 0.. run scoreboard players set @s projectileHealth $(duration)

scoreboard players add #Summon index 1

$team add $(uuid)
$team join $(uuid)

$data modify storage magick:data summoned_entity.amplifier set value $(amplifier)
$data modify storage magick:data summoned_entity.duration set value $(duration)
$data modify storage magick:data summoned_entity.uuid set value $(uuid)
$data modify storage magick:data summoned_entity.mob set value "$(mob)"
$data modify storage magick:data summoned_entity.sound set value "$(sound)"
$data modify storage magick:data summoned_entity.proportion set value $(proportion)
$data modify storage magick:data summoned_entity.equipment set value "$(equipment)"
$data modify storage magick:data summoned_entity.range set value $(range)
execute store result storage magick:data summoned_entity.index int 1 run scoreboard players get #Summon index

function magick_reborn:spell/cast/summon_creature with storage magick:data summoned_entity
