$execute as @e[type=item_display,nbt={data:{caster_id:$(uuid)}},tag=shield] at @s run function magick_reborn:spell/cast/shield/shield_logic with entity @s data
$execute at @s anchored eyes as @e[type=marker,nbt={data:{caster_id:$(uuid)}},tag=shield_center] rotated as @s run tp @s ~ ~ ~ facing ^.1 ^ ^1

$execute if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches ..0 run function magick_reborn:spell/cast/shield/remove_shield {uuid: $(uuid)}

execute if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches 1.. run scoreboard players remove @s shieldEffectDuration 1
execute if score #global summonCheckTimer matches 20.. store result storage magick:data shieldEffect.value int 1 run scoreboard players get @s shieldEffectDuration
execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data shieldEffect.bossbar set value "minecraft:shield"

execute if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data shieldEffect