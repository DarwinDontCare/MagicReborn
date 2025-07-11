$execute as @e[type=armor_stand,nbt={data:{target_uuid:$(UUID)}},distance=..3,tag=shield_ride] at @s run function magick_reborn:spell/cast/shield/shield_logic with entity @s data
$execute at @s anchored eyes as @e[type=marker,nbt={data:{target_uuid:$(UUID)}},tag=shield_center] rotated as @s run tp @s ~ ~ ~ facing ^.1 ^ ^1

execute unless entity @s[type=player] if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches ..0 run return run function magick_reborn:spell/cast/shield/remove_shield with entity @s data

execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. run function magick_reborn:data/stringify_uuid
execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. run data modify storage magick:data shieldEffect set value {}
execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. run data modify storage magick:data shieldEffect.bossbarId set string storage magick:data uuid_string
execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. run data modify storage magick:data shieldEffect.UUID set from entity @s UUID

execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches ..0 run return run function magick_reborn:spell/cast/shield/remove_shield with storage magick:data shieldEffect

execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches 1.. run scoreboard players remove @s shieldEffectDuration 1
execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. store result storage magick:data shieldEffect.value int 1 run scoreboard players get @s shieldEffectDuration

execute if entity @s[type=player] if score #global summonCheckTimer matches 20.. if score @s shieldEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data shieldEffect