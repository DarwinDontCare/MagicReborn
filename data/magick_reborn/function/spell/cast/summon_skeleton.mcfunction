$scoreboard players set #Summon index $(index)
$scoreboard players set #Summon calculationValues $(amplifier)

execute if score #Summon index > #Summon calculationValues run return 1

particle ash ~ ~ ~ 1 1 1 0.2 15 force @a
playsound entity.skeleton.converted_to_stray ambient @a[distance=..20] ~ ~ ~ 1 1 0.2

execute at @s run summon skeleton ^ ^ ^ {equipment:{head:{id:leather_helmet},mainhand:{id:bow}},Tags:["summoned"]}
$execute at @s run attribute @e[type=skeleton,tag=summoned,distance=..1,limit=1,team=!$(uuid)] max_health modifier add health_boost $(amplifier) add_value
$execute at @s as @e[type=skeleton,tag=summoned,distance=..1,team=!$(uuid)] run scoreboard players set @s projectileHealth $(duration)
$execute at @s as @e[type=skeleton,tag=summoned,distance=..1,team=!$(uuid)] run team join $(uuid)

scoreboard players add #Summon index 1

$team add $(uuid)
$team join $(uuid)

$data modify storage magick:data summoned_entity.amplifier set value $(amplifier)
$data modify storage magick:data summoned_entity.duration set value $(duration)
$data modify storage magick:data summoned_entity.uuid set value $(uuid)
execute store result storage magick:data summoned_entity.index int 1 run scoreboard players get #Summon index

function magick_reborn:spell/cast/summon_skeleton with storage magick:data summoned_entity
