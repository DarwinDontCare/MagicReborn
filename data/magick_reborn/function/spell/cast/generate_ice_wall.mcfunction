$execute unless score @s y matches 0 at @s run fill ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) packed_ice replace #air
$execute unless score @s y matches 0 at @s run fill ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) frosted_ice replace water

$execute if score @s y matches 0 at @s run fill ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) packed_ice replace #air
$execute if score @s y matches 0 at @s run fill ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) frosted_ice replace water

$execute unless score @s y matches 0 at @s run particle snowflake ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) 0.02 50 force
$execute if score @s y matches 0 at @s run particle snowflake ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) 0.02 50 force

$execute as @a[scores={uuid=$(caster_id)}, sort=nearest,limit=1] at @s if block ~ ~ ~ packed_ice run tp @s ~ ~1 ~
$execute as @a[scores={uuid=$(caster_id)}, sort=nearest,limit=1] at @s if block ~ ~ ~ frosted_ice run tp @s ~ ~1 ~

$execute at @s run playsound block.glass.break ambient @a[distance=..5] ~ ~$(y) ~ 0.5 1 0.2

scoreboard players add @s y 1