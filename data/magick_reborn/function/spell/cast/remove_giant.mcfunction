scoreboard players reset @s giantEffectDuration
bossbar remove minecraft:m

playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~ ~ 0.5 -1 0.5 0.1 20 force

attribute @s scale modifier remove giant
attribute @s attack_damage modifier remove giant
attribute @s attack_knockback modifier remove giant
attribute @s entity_interaction_range modifier remove giant
attribute @s jump_strength modifier remove giant
attribute @s knockback_resistance modifier remove giant
attribute @s block_interaction_range modifier remove giant
attribute @s max_health modifier remove giant
attribute @s attack_speed modifier remove giant
attribute @s movement_speed modifier remove giant
attribute @s step_height modifier remove giant
attribute @s safe_fall_distance modifier remove giant
attribute @s block_break_speed modifier remove giant