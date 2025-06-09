particle minecraft:dust{color:[0.6,0.1,0.8],scale:1} ~ ~1 ~ .5 .5 .5 .2 20 force @a
playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.5 1 0.2

$scoreboard players set @s calculationValues $(amplifier)
$execute store result storage magick $(uuid).raycast.distance int 100 run scoreboard players get @s calculationValues
$data modify storage magick $(uuid).raycast.index set value 0.5
$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$execute at @s anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast

$data remove storage magick $(uuid).raycast

$execute at @e[tag=raycast_hit,nbt={data:{caster_id: $(uuid)}},limit=1] run tp @s ~ ~ ~
$kill @e[tag=raycast_hit,nbt={data:{caster_id: $(uuid)}},limit=1]

execute at @s run particle minecraft:dust{color:[0.6,0.1,0.8],scale:1} ~ ~1 ~ .5 .5 .5 .2 20 force @a
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.5 1 0.2