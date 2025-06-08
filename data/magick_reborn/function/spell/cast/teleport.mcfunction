particle minecraft:dust{color:[0.6,0.1,0.8],scale:1} ~ ~1 ~ .5 .5 .5 .2 20 force @a
playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.5 1 0.2

$scoreboard players set @s calculationValues $(amplifier)
$execute store result storage magick $(uuid).teleport.distance int 100 run scoreboard players get @s calculationValues
$data modify storage magick $(uuid).teleport.index set value 0.5
$data modify storage magick $(uuid).teleport.uuid set value $(uuid)
$execute positioned ~ ~1.5 ~ run function magick_reborn:spell/cast/raycast with storage magick $(uuid).teleport

execute at @s run particle minecraft:dust{color:[0.6,0.1,0.8],scale:1} ~ ~1 ~ .5 .5 .5 .2 20 force @a
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.5 1 0.2