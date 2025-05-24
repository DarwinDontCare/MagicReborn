# Detecta se o projétil colidiu com uma entidade (excluindo o caster)
execute as @e[tag=magic_projectile] run data modify storage magick:data spell set from entity @s data

execute as @e[tag=magic_projectile] at @s run function magick_reborn:spell/spell_particles

# Detecta se há entidade próxima ao projétil (não outro projétil)
execute at @e[tag=magic_projectile] as @e[distance=..2, tag=!magic_projectile, limit=1, sort=nearest] run data modify storage magick:data detected_uuid set from entity @s UUID

# Compara caster_id com UUID detectado
execute store success score #Compare boolean run data modify storage magick:data spell.caster_id set from storage magick:data detected_uuid

# Se a comparação for positiva, marca a entidade com um marcador de boolean = 1
execute as @e[tag=magic_projectile] at @s if score #Compare boolean matches 1 as @e[distance=..2, tag=!magic_projectile, limit=1, sort=nearest] run scoreboard players set @s hit_by_projectile 1

# Executa apenas em quem foi "marcado" com hit_by_projectile = 1
execute as @e[tag=magic_projectile] at @s as @e[distance=..2, tag=!magic_projectile, scores={hit_by_projectile=1..}] run function magick_reborn:spell/apply_projectile_effect with storage magick:data spell

# Reset da flag hit_by_projectile para evitar múltiplas execuções
execute as @e[tag=!magic_projectile, scores={hit_by_projectile=1..}] run scoreboard players set @s hit_by_projectile 0

# Reset do #Compare
scoreboard players reset #Compare boolean

# Redução de vida do projétil ou remoção
execute as @e[tag=magic_projectile, scores={projectileHealth=..0}] run kill @s
execute as @e[tag=magic_projectile, scores={projectileHealth=1..}] run scoreboard players remove @s projectileHealth 1
