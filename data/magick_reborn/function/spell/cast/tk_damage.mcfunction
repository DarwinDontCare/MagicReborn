$execute as @e[tag=!tk_launch,distance=..1.5] run damage @s $(amplifier) falling_block by @a[scores={uuid=$(uuid)},limit=1]

execute if entity @s[type=creeper] run data modify entity @s ignited set value true
$execute if entity @s[type=!falling_block] run damage @s $(amplifier) falling_block by @a[scores={uuid=$(uuid)},limit=1]