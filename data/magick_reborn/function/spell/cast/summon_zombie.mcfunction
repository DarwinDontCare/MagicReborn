$scoreboard players set #Summon index $(index)
$scoreboard players set #Summon calculationValues $(amplifier)
scoreboard players set #Summon calculationValues2 2
scoreboard players operation #Summon calculationValues2 /= #Summon calculationValues
scoreboard players operation #Summon calculationValues2 -= #Summon index

execute store result storage magick:data summoned_entity.x int 1 run scoreboard players get #Summon calculationValues2

execute if score #Summon index > #Summon calculationValues run return 1

$execute at @s positioned ^$(x) ^ ^ run particle cloud ~ ~ ~ .2 .2 .2 0.2 15 force @a
$execute at @s positioned ^$(x) ^ ^ run playsound entity.zombie.converted_to_drowned ambient @a[distance=..20] ~ ~ ~ 1 1 0.2

$execute at @s rotated as @a[scores={uuid=$(uuid)},limit=1] run summon zombie ^$(x) ^ ^ {equipment:{head:{id:leather_helmet}},Tags:["summoned"],data:{caster_id: $(uuid), range: 15}}
$execute at @s unless entity @e[type=zombie,tag=summoned,distance=..$(amplifier),limit=1,team=!$(uuid),scores={projectileHealth=0..}] run attribute @e[type=zombie,tag=summoned,distance=..2,limit=1,team=!$(uuid)] max_health modifier add health_boost $(amplifier) add_value
$execute at @s as @e[type=zombie,tag=summoned,distance=..$(amplifier),team=!$(uuid)] unless score @s projectileHealth matches 0.. run team join $(uuid)
$execute at @s as @e[type=zombie,tag=summoned,distance=..$(amplifier),team=!$(uuid)] unless score @s projectileHealth matches 0.. run scoreboard players set @s projectileHealth $(duration)

scoreboard players add #Summon index 1

$team add $(uuid)
$team join $(uuid)

$data modify storage magick:data summoned_entity.amplifier set value $(amplifier)
$data modify storage magick:data summoned_entity.duration set value $(duration)
$data modify storage magick:data summoned_entity.uuid set value $(uuid)
execute store result storage magick:data summoned_entity.index int 1 run scoreboard players get #Summon index

function magick_reborn:spell/cast/summon_zombie with storage magick:data summoned_entity
