$effect give @s slowness $(duration) $(amplifier) true
$execute if score #global ticksCount matches 20.. run damage @s $(amplifier) freeze by @a[scores={uuid=$(caster_id)},limit=1]
$scoreboard players set @s freezeTicks $(duration)

effect give @s minecraft:fire_resistance 1 0 true
