$execute at @s[predicate=!magick_reborn:is_sneaking] anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/raycast {distance: 40, index: 0.5, uuid: $(uuid)}
$execute at @s[predicate=magick_reborn:is_sneaking] run summon marker ~ ~ ~ {NoGravity:true,Invulnerable:true,Tags:["raycast_hit"],data:{caster_id: $(uuid)}}
$data remove storage magick $(uuid).raycast

$scoreboard players set #Lightning calculationValues $(amplifier)

$execute at @e[tag=raycast_hit,nbt={data:{caster_id: $(uuid)}},limit=1] run summon lightning_bolt ~ ~-1 ~ {Damage: $(amplifier)}
$execute if score #Lightning calculationValues matches 2.. at @e[tag=raycast_hit,nbt={data:{caster_id: $(uuid)}},limit=1] run damage @e[distance=..2,limit=1] $(amplifier) lightning_bolt by @s

$kill @e[tag=raycast_hit,nbt={data:{caster_id: $(uuid)}},limit=1]