function magick_reborn:spell/cast/dwarf/remove_dwarf

bossbar add minecraft:m "Giant Effect"
bossbar set minecraft:m players @s
$bossbar set minecraft:m max $(duration)
$bossbar set minecraft:m value $(duration)

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0.1 20 force

$data modify storage magick $(uuid).giant_effect.x set value $(amplifier)
$data modify storage magick $(uuid).giant_effect.y set value $(amplifier)
$data modify storage magick $(uuid).giant_effect.z set value $(amplifier)

$scoreboard players set @s giantEffectDuration $(duration)
$attribute @s scale modifier add giant $(amplifier) add_value
$attribute @s attack_damage modifier add giant $(amplifier) add_multiplied_base
$attribute @s attack_knockback modifier add giant $(amplifier) add_value
$attribute @s entity_interaction_range modifier add giant $(interaction) add_multiplied_base
$attribute @s jump_strength modifier add giant $(amplifier) add_multiplied_base
$attribute @s knockback_resistance modifier add giant $(amplifier) add_multiplied_base
$attribute @s block_interaction_range modifier add giant $(interaction) add_multiplied_base
$attribute @s max_health modifier add giant $(amplifier)0 add_value
$attribute @s attack_speed modifier add giant -$(amplifier) add_multiplied_base
$attribute @s movement_speed modifier add giant $(amplifier) add_multiplied_base
$attribute @s step_height modifier add giant $(amplifier) add_multiplied_base
$attribute @s safe_fall_distance modifier add giant $(fallHeight)0 add_multiplied_base
$attribute @s block_break_speed modifier add giant $(break_speed) add_multiplied_base

execute if entity @s[type=creeper] store result score @s calculationValues run data get entity @s ExplosionRadius
$execute if entity @s[type=creeper] run scoreboard players add @s calculationValues $(raw_amplifier)
execute if entity @s[type=creeper] store result entity @s ExplosionRadius int 1 run scoreboard players get @s calculationValues