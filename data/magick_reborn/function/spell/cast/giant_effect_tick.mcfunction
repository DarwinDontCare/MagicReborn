execute if score #global summonCheckTimer matches 20.. if score @s giantEffectDuration matches ..0 run return run function magick_reborn:spell/cast/remove_giant

execute if score #global summonCheckTimer matches 20.. if score @s giantEffectDuration matches 1.. run scoreboard players remove @s giantEffectDuration 1
execute if score #global summonCheckTimer matches 20.. store result storage magick:data giantEffect.value int 1 run scoreboard players get @s giantEffectDuration
execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data giantEffect.bossbar set value "minecraft:m"

execute if score #global summonCheckTimer matches 20.. if score @s giantEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data giantEffect

$execute at @e[tag=raycast_hit_break_block,nbt={data:{caster_id: $(uuid_data)}},limit=1] rotated as @s if block ~ ~ ~ #air run function magick_reborn:magick/mine_area with storage magick $(uuid_data).giant_effect
$kill @e[tag=raycast_hit_break_block,nbt={data:{caster_id: $(uuid_data)}}]

$execute store result storage magick $(uuid_data).raycast.distance int 100 run attribute @s block_interaction_range get 1
$data modify storage magick $(uuid_data).raycast.index set value 0.5
$data modify storage magick $(uuid_data).raycast.uuid_data set value $(uuid_data)
$data modify storage magick $(uuid_data).raycast.tag set value "break_block"
$data modify storage magick $(uuid_data).raycast.hit_entities set value 0
$data modify storage magick $(uuid_data).raycast.only_blocks set value 1

$execute at @s anchored eyes positioned ^ ^ ^ rotated as @s run function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast