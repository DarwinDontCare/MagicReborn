scoreboard players reset @s dwarfEffectDuration
bossbar remove minecraft:m

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0.1 20 force

attribute @s scale modifier remove dwarf
attribute @s gravity modifier remove dwarf
attribute @s attack_damage modifier remove dwarf
attribute @s attack_knockback modifier remove dwarf
attribute @s entity_interaction_range modifier remove dwarf
attribute @s jump_strength modifier remove dwarf
attribute @s knockback_resistance modifier remove dwarf
attribute @s block_interaction_range modifier remove dwarf
attribute @s max_health modifier remove dwarf
attribute @s attack_speed modifier remove dwarf
attribute @s movement_speed modifier remove dwarf
attribute @s step_height modifier remove dwarf
attribute @s safe_fall_distance modifier remove dwarf
attribute @s block_break_speed modifier remove dwarf