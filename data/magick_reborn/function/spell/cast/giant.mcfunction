bossbar add minecraft:m "Giant Effect"
bossbar set minecraft:m players @s
$bossbar set minecraft:m max $(duration)
$bossbar set minecraft:m value $(duration)

$scoreboard players set #Giant calculationValues $(amplifier)

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0.1 20 force

$execute store result storage magick $(uuid).giant_effect.x double .5 run scoreboard players get #Giant calculationValues
$execute store result storage magick $(uuid).giant_effect.y double .5 run scoreboard players get #Giant calculationValues
$execute store result storage magick $(uuid).giant_effect.z double .5 run scoreboard players get #Giant calculationValues

$scoreboard players set @s giantEffectDuration $(duration)
$attribute @s scale modifier add giant $(amplifier) add_value
$attribute @s attack_damage modifier add giant $(amplifier) add_multiplied_base
$attribute @s attack_knockback modifier add giant $(amplifier) add_value
$attribute @s entity_interaction_range modifier add giant $(amplifier) add_multiplied_base
$attribute @s jump_strength modifier add giant $(amplifier) add_multiplied_base
$attribute @s knockback_resistance modifier add giant $(amplifier) add_multiplied_base
$attribute @s block_interaction_range modifier add giant $(amplifier) add_multiplied_base
$attribute @s max_health modifier add giant $(amplifier)0 add_value
$attribute @s attack_speed modifier add giant -$(amplifier) add_multiplied_base
$attribute @s movement_speed modifier add giant $(amplifier) add_multiplied_base
$attribute @s step_height modifier add giant $(amplifier) add_multiplied_base
$attribute @s safe_fall_distance modifier add giant $(amplifier)0 add_multiplied_base
$attribute @s block_break_speed modifier add giant $(amplifier) add_multiplied_base