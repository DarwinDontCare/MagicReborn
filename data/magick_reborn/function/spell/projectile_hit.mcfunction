# Detecta se o projétil colidiu com uma entidade (excluindo o caster)
execute store result score @s uuid run data get entity @s data.caster_id

execute at @s run function magick_reborn:spell/spell_particles

$execute at @s as @e[distance=..2, tag=!magic_projectile] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/apply_projectile_effect

# Redução de vida do projétil ou remoção
execute as @s[tag=magic_projectile, scores={projectileHealth=..0}] run kill @s
execute as @s[tag=magic_projectile, scores={projectileHealth=1..}] run scoreboard players remove @s projectileHealth 1
