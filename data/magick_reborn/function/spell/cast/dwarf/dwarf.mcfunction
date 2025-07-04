function magick_reborn:spell/cast/giant/remove_giant

bossbar add minecraft:dwarf "Dwarf Effect"
bossbar set minecraft:dwarf players @s
$bossbar set minecraft:dwarf max $(duration)
$bossbar set minecraft:dwarf value $(duration)

playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~ ~ 0.5 -1 0.5 0.1 20 force

$scoreboard players set @s dwarfEffectDuration $(duration)
$attribute @s scale modifier add dwarf -$(amplifier) add_multiplied_base
$attribute @s gravity modifier add dwarf -$(gravity) add_multiplied_base
$attribute @s attack_damage modifier add dwarf -$(amplifier) add_multiplied_base
$attribute @s attack_knockback modifier add dwarf -$(amplifier) add_value
$attribute @s entity_interaction_range modifier add dwarf -$(interaction) add_multiplied_base
$attribute @s jump_strength modifier add dwarf -$(jump) add_multiplied_base
$attribute @s knockback_resistance modifier add dwarf -$(amplifier) add_multiplied_base
$attribute @s block_interaction_range modifier add dwarf -$(interaction) add_multiplied_base
$attribute @s max_health modifier add dwarf -$(amplifier) add_multiplied_base
$attribute @s attack_speed modifier add dwarf $(amplifier) add_multiplied_base
$attribute @s movement_speed modifier add dwarf -$(speed) add_multiplied_base
$attribute @s step_height modifier add dwarf -$(amplifier) add_multiplied_base
$attribute @s safe_fall_distance modifier add dwarf -$(fallHeight)0 add_multiplied_base
$attribute @s block_break_speed modifier add dwarf -$(break_speed) add_multiplied_base

execute if entity @s[type=creeper] store result score @s calculationValues run data get entity @s ExplosionRadius
$execute if entity @s[type=creeper] run scoreboard players remove @s calculationValues $(raw_amplifier)
execute if entity @s[type=creeper] store result entity @s ExplosionRadius int 1 run scoreboard players get @s calculationValues