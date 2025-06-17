$execute as @e[tag=!tk_launch,distance=..1.5,tag=!tk_target] unless score @s uuid matches $(uuid) run scoreboard players set #TkDamage boolean 0
$execute as @e[tag=!tk_launch,distance=..1.5,tag=!tk_target] if score @s uuid matches $(uuid) run scoreboard players set #TkDamage boolean 1

$execute as @e[tag=!tk_launch,distance=..1.5,tag=!tk_target] unless score #TkDamage boolean matches 1 run damage @s $(amplifier) falling_block by @a[scores={uuid=$(uuid)},limit=1]

execute if entity @s[type=creeper] unless score #TkDamage boolean matches 1 run data modify entity @s ignited set value true
$execute if entity @s[type=!falling_block] unless score #TkDamage boolean matches 1 run damage @s $(amplifier) falling_block by @a[scores={uuid=$(uuid)},limit=1]