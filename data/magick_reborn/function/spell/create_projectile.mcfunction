execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible: true, Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
$execute at @s anchored eyes positioned ^ ^ ^ run $(summon_cmd)
$data modify entity @e[nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.effects set value $(effects)
$execute at @e[tag=magic_projectile,distance=..1.5,nbt={data:{caster_id:$(caster_id)}}] run tp @e[nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] ^ ^ ^ facing entity @s feet
$function magick_reborn:spell/cast/apply_fireball_amplifier {caster_id: $(caster_id), index: 0}

$execute at @s as @e[tag=magic_projectile,distance=..1.5,nbt={data:{caster_id:$(caster_id)}}] run scoreboard players set @s projectileHealth $(health)

execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 1000
execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 1000 

kill @e[tag=aim]

$execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[0] double $(speed) run scoreboard players get @s MotionX
$execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[1] double $(speed) run scoreboard players get @s MotionY
$execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[2] double $(speed) run scoreboard players get @s MotionZ