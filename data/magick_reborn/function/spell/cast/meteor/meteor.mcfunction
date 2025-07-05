$scoreboard players set @s calculationValues $(amplifier)
$execute store result storage magick $(uuid).raycast.distance int 100 run scoreboard players get @s calculationValues
$data modify storage magick $(uuid).raycast.index set value 0.5
$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$data modify storage magick $(uuid).raycast.tag set value "meteor"
$data modify storage magick $(uuid).raycast.hit_entities set value 1
$data modify storage magick $(uuid).raycast.only_blocks set value 0
$execute at @s anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast

$data remove storage magick $(uuid).raycast

$execute as @e[tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] at @s positioned ~ ~15 ~10 run function magick_reborn:spell/cast/meteor/summon_meteor {uuid: $(uuid), amplifier: $(amplifier)}
$execute if score @s calculationValues matches 4.. as @e[tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] at @s positioned ~10 ~15 ~10 run function magick_reborn:spell/cast/meteor/summon_meteor {uuid: $(uuid), amplifier: $(amplifier)}
$execute if score @s calculationValues matches 8.. as @e[tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] at @s positioned ~10 ~15 ~-10 run function magick_reborn:spell/cast/meteor/summon_meteor {uuid: $(uuid), amplifier: $(amplifier)}
$execute if score @s calculationValues matches 10.. as @e[tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] at @s positioned ~-10 ~15 ~-10 run function magick_reborn:spell/cast/meteor/summon_meteor {uuid: $(uuid), amplifier: $(amplifier)}


$kill @e[tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}}]