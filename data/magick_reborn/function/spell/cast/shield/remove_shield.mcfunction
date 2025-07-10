scoreboard players reset @s shieldEffectDuration
$bossbar remove $(bossbar)

playsound item.shield.break ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle dust{color:[66, 203, 245],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 20 force

$execute as @e[type=item_display,nbt={data:{target_uuid:$(UUID)}},tag=shield] run kill @s
$execute as @e[type=armor_stand,nbt={data:{target_uuid:$(UUID)}},tag=shield_ride] run kill @s
$execute as @e[type=marker,nbt={data:{target_uuid:$(UUID)}},tag=shield_center] run kill @s
attribute @s armor modifier remove shield
attribute @s armor_toughness modifier remove shield
attribute @s knockback_resistance modifier remove shield
attribute @s explosion_knockback_resistance modifier remove shield