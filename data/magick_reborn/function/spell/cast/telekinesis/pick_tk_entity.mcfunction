$execute store result storage magick $(uuid).raycast.distance int 100 run attribute @s block_interaction_range get 1
$data modify storage magick $(uuid).raycast.index set value 0.5
$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$data modify storage magick $(uuid).raycast.tag set value "tk"
$data modify storage magick $(uuid).raycast.hit_entities set value 1
$data modify storage magick $(uuid).raycast.only_blocks set value 1

$execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast

$execute at @e[tag=raycast_hit_tk,nbt={data:{caster_id: $(uuid)}},limit=1] unless block ~ ~ ~ #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/telekinesis/instantiate_tk_block {uuid: $(uuid), amplifier: $(amplifier)}
$execute at @e[tag=raycast_hit_tk,nbt={data:{caster_id: $(uuid)}},limit=1] as @e[predicate=!magick_reborn:ignore_entity,distance=..1,limit=1,tag=!raycast_hit_tk,tag=!tk_target] run return run function magick_reborn:spell/cast/telekinesis/tk_entity {uuid: $(uuid), amplifier: $(amplifier)}