# Sumona a flecha como "projétil mágico"
execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible: true, Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
$execute at @s run summon minecraft:snowball ~ ~1.5 ~ {Tags: ["magic_projectile"], data: {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}, HasVisualFire:false, NoGravity:true}

execute at @s as @e[tag=magic_projectile,distance=..1.5] run effect give @s invisibility infinite 1 true
execute at @s as @e[tag=magic_projectile,distance=..1.5] run scoreboard players set @s projectileHealth 200

execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 1000
execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute at @s positioned ~ ~1.5 ~ as @e[distance=..2,sort=nearest,tag=magic_projectile] positioned 0 0 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 1000 

kill @e[tag=aim]

execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute at @s as @e[tag=magic_projectile, distance=..2,sort=nearest] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ