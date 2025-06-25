$scoreboard players set @s uuid $(caster_id)
execute if score @s ticksCount matches 1.. run scoreboard players remove @s ticksCount 1

$execute at @s run particle $(particle) ~ ~ ~ .125 .125 .125 0 30 force
$execute at @s unless score @s ticksCount matches 1.. run playsound $(idle_sound) ambient @s ~ ~ ~ 0.8 1 0.3

$execute at @s[tag=!fireball] unless block ^ ^ ^.5 #magick_reborn:ignore_colision run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1, hit_block: 1, particle: "$(particle)", hit_sound: "$(hit_sound)"}
$execute at @s[tag=!fireball] unless block ^ ^-.5 ^.5 #magick_reborn:ignore_colision run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1, hit_block: 1, particle: "$(particle)", hit_sound: "$(hit_sound)"}
$execute at @s[tag=!fireball] unless block ^ ^.5 ^.5 #magick_reborn:ignore_colision run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1, hit_block: 1, particle: "$(particle)", hit_sound: "$(hit_sound)"}

$execute at @s as @e[distance=..1.5, sort=nearest, tag=!magick_projectile, predicate=!magick_reborn:ignore_entity] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_stop_sound
$execute at @s as @e[distance=..1.5, sort=nearest, tag=!magick_projectile, predicate=!magick_reborn:ignore_entity] unless entity @s[scores={uuid=$(caster_id)}] run function magick_reborn:spell/cast/spell_projectile_hit_sound

$execute at @s as @e[distance=..1.5, sort=nearest, tag=!magick_projectile, predicate=!magick_reborn:ignore_entity, tag=!frostbite, tag=!ice_wall_marker] unless entity @s[scores={uuid=$(caster_id)}] run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1.5, hit_block: 0, particle: "$(particle)", hit_sound: "$(hit_sound)"}

execute at @s if entity @s[tag=freeze] if block ~ ~ ~ water run playsound minecraft:block.amethyst_cluster.place ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ water run fill ~1 ~ ~1 ~-1 ~ ~-1 frosted_ice replace water
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ #fire run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ #fire run fill ~ ~ ~ ~ ~ ~ air replace #fire
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ lava run playsound block.fire.extinguish ambient @a[distance=..5] ~ ~ ~ 0.5 1 0.2
execute at @s if entity @s[tag=freeze] if block ~ ~ ~ lava run fill ~ ~ ~ ~ ~ ~ obsidian replace lava

execute as @s[tag=magick_projectile, scores={projectileHealth=..0}] run function magick_reborn:spell/cast/spell_stop_sound
$execute as @s[tag=magick_projectile, scores={projectileHealth=..0}] at @s run return run function magick_reborn:spell/apply_projectile_effect {caster_id: $(caster_id), range: 1.5, hit_block: 0, particle: "$(particle)", hit_sound: "$(hit_sound)"}
execute as @s[tag=magick_projectile, scores={projectileHealth=1..}] run scoreboard players remove @s projectileHealth 1

execute unless score @s ticksCount matches 1.. run scoreboard players set @s ticksCount 40
