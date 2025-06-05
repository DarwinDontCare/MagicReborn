$execute unless score @s y matches 0 at @s run fill ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) blue_ice replace #air
$execute unless score @s y matches 0 at @s run fill ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) frosted_ice replace water

$execute if score @s y matches 0 at @s run fill ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) blue_ice replace #air
$execute if score @s y matches 0 at @s run fill ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) frosted_ice replace water

$execute unless score @s y matches 0 at @s run particle snowflake ^-$(x) ^$(y) ^-$(z) ^$(x) ^$(y) ^$(z) 0.02 50 force
$execute if score @s y matches 0 at @s run particle snowflake ^-$(x) ^ ^-$(z) ^$(x) ^ ^$(z) 0.02 50 force

$execute at @s run playsound block.glass.break ambient @a[distance=..5] ~ ~$(y) ~ 0.5 1 0.2

scoreboard players add @s y 1