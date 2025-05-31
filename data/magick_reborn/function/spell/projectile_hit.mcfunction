# Detecta se o projétil colidiu com uma entidade (excluindo o caster)
$scoreboard players set @s uuid $(caster_id)

execute at @s run function magick_reborn:spell/spell_particles
execute at @s if score @s projectileHealth matches 200 run function magick_reborn:spell/cast/spell_sound
execute at @s if score @s projectileHealth matches 100 run function magick_reborn:spell/cast/spell_sound

$execute at @s as @e[distance=..4, tag=!magic_projectile] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_stop_sound
$execute at @s as @e[distance=..4, tag=!magic_projectile] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_projectile_hit_sound

$execute at @s as @e[distance=..4, tag=!magic_projectile] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}

# Redução de vida do projétil ou remoção
execute as @s[tag=magic_projectile, scores={projectileHealth=..0}] run function magick_reborn:spell/cast/spell_stop_sound
execute as @s[tag=magic_projectile, scores={projectileHealth=..0}] run kill @s
execute as @s[tag=magic_projectile, scores={projectileHealth=1..}] run scoreboard players remove @s projectileHealth 1
