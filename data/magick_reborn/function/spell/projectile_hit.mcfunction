# Detecta se o projétil colidiu com uma entidade (excluindo o caster)
$scoreboard players set @s uuid $(caster_id)

execute at @s run function magick_reborn:spell/spell_particles
execute at @s if score @s projectileHealth matches 200 run function magick_reborn:spell/cast/spell_sound
execute at @s if score @s projectileHealth matches 100 run function magick_reborn:spell/cast/spell_sound

$execute at @s unless block ^ ^ ^.5 #magick_reborn:ignore_colision run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1, hit_block: 1}

$execute at @s as @e[distance=..1.5, tag=!magic_projectile,predicate=!magick_reborn:ignore_entity,] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_stop_sound
$execute at @s as @e[distance=..1.5, tag=!magic_projectile,predicate=!magick_reborn:ignore_entity,] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_projectile_hit_sound

$execute at @s as @e[distance=..1.5, tag=!magic_projectile,predicate=!magick_reborn:ignore_entity,tag=!frostbite] unless entity @s[tag=ice_wall_marker] unless entity @s[scores={uuid=$(caster_id)}] run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1.5, hit_block: 0}
$execute at @s as @e[distance=..2.5, tag=!magic_projectile,predicate=!magick_reborn:ignore_entity,tag=frostbite] unless entity @s[tag=ice_wall_marker] unless entity @s[scores={uuid=$(caster_id)}] run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 2.5, hit_block: 0}

execute at @s if entity @s[tag=freeze] if block ~ ~ ~ water run playsound minecraft:block.amethyst_cluster.place ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ water run fill ~1 ~ ~1 ~-1 ~ ~-1 frosted_ice replace water
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ #fire run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ #fire run fill ~ ~ ~ ~ ~ ~ air replace #fire
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ lava run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ lava run fill ~ ~ ~ ~ ~ ~ obsidian replace lava

# Redução de vida do projétil ou remoção
execute as @s[tag=magic_projectile, scores={projectileHealth=..0}] run function magick_reborn:spell/cast/spell_stop_sound
execute as @s[tag=magic_projectile, scores={projectileHealth=..0}] run return run kill @s
execute as @s[tag=magic_projectile, scores={projectileHealth=1..}] run scoreboard players remove @s projectileHealth 1
