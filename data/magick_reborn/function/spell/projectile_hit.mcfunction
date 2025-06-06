# Detecta se o projétil colidiu com uma entidade (excluindo o caster)
$scoreboard players set @s uuid $(caster_id)

execute at @s run function magick_reborn:spell/spell_particles
execute at @s if score @s projectileHealth matches 200 run function magick_reborn:spell/cast/spell_sound
execute at @s if score @s projectileHealth matches 100 run function magick_reborn:spell/cast/spell_sound

execute store result score @s x run data get entity @s Motion[0]
execute store result score @s y run data get entity @s Motion[1]
execute store result score @s z run data get entity @s Motion[2]

$execute if entity @s[tag=ice_wall] if score @s x matches ..0 if score @s x > @s prev_x at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}
$execute if entity @s[tag=ice_wall] if score @s x matches 0.. if score @s x < @s prev_x at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}

execute if score @s x matches ..0 if score @s x > @s prev_x run return run kill @s
execute if score @s x matches 0.. if score @s x < @s prev_x run return run kill @s

$execute if entity @s[tag=ice_wall] if score @s y matches ..0 if score @s y > @s prev_y at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}
$execute if entity @s[tag=ice_wall] if score @s y matches 0.. if score @s y < @s prev_y at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}

execute if score @s y matches ..0 if score @s y > @s prev_y run return run kill @s
execute if score @s y matches 0.. if score @s y < @s prev_y run return run kill @s

$execute if entity @s[tag=ice_wall] if score @s z matches ..0 if score @s z > @s prev_z at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}
$execute if entity @s[tag=ice_wall] if score @s z matches 0.. if score @s z < @s prev_z at @s run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id)}

execute if score @s z matches ..0 if score @s z > @s prev_z run return run kill @s
execute if score @s z matches 0.. if score @s z < @s prev_z run return run kill @s

execute store result score @s prev_x run data get entity @s Motion[0]
execute store result score @s prev_y run data get entity @s Motion[1]
execute store result score @s prev_z run data get entity @s Motion[2]

$execute at @s as @e[distance=..1.5, tag=!magic_projectile,type=!item] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_stop_sound
$execute at @s as @e[distance=..1.5, tag=!magic_projectile,type=!item] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_projectile_hit_sound

$execute at @s as @e[distance=..1.5, tag=!magic_projectile,type=!item,tag=!frostbite] unless entity @s[tag=ice_wall_marker] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1.5}
$execute at @s as @e[distance=..2.5, tag=!magic_projectile,type=!item,tag=frostbite] unless entity @s[tag=ice_wall_marker] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 2.5}

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
