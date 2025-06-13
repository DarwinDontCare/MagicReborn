$execute rotated as @a[scores={uuid=$(uuid)},limit=1] positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible: true, Invulnerable:1b,NoGravity:1b,Tags:["aim"]}

execute positioned 0 0 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 100
execute positioned 0 0 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 100
execute positioned 0 0 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 100

kill @e[tag=aim]

$execute store result entity @s Motion[0] double $(speed) run scoreboard players get @s MotionX
$execute store result entity @s Motion[1] double $(speed) run scoreboard players get @s MotionY
$execute store result entity @s Motion[2] double $(speed) run scoreboard players get @s MotionZ