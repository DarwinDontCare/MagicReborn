$data modify storage magick $(uuid).raycast.distance set value 4000
$data modify storage magick $(uuid).raycast.index set value 0.5
$data modify storage magick $(uuid).raycast.uuid set value $(uuid)
$data modify storage magick $(uuid).raycast.tag set value "lightning"
$data modify storage magick $(uuid).raycast.hit_entities set value 1
$data modify storage magick $(uuid).raycast.only_blocks set value 0

$execute at @s[predicate=!magick_reborn:is_sneaking] anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/raycast with storage magick $(uuid).raycast
$execute at @s[predicate=magick_reborn:is_sneaking] run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit_lightning"],data:{caster_id: $(uuid)}}
$data remove storage magick $(uuid).raycast

$scoreboard players set #Lightning calculationValues $(amplifier)

$execute at @e[tag=raycast_hit_lightning,nbt={data:{caster_id: $(uuid)}},limit=1] run summon lightning_bolt ~ ~ ~
$execute if score #Lightning calculationValues matches 2.. at @e[tag=raycast_hit_lightning,nbt={data:{caster_id: $(uuid)}},limit=1] as @e[distance=..2] run damage @s $(amplifier) lightning_bolt by @a[scores={uuid=$(uuid)},limit=1]

$kill @e[tag=raycast_hit_lightning,nbt={data:{caster_id: $(uuid)}}]