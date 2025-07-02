tag @s remove tk_bind
$tag @s remove tk_$(uuid)
tag @s add tk_launch
data modify entity @s NoGravity set value false

$kill @e[type=marker, tag=tk_target, nbt={data:{caster_id: $(uuid)}}]

$execute rotated as @a[scores={uuid=$(uuid)},limit=1] positioned 0.0 -64.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible: true, Invulnerable:1b,NoGravity:1b,Tags:["aim"]}

execute positioned 0 -64 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 1000
execute positioned 0 -64 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute positioned 0 -64 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 1000 

kill @e[tag=aim]

$execute store result entity @s Motion[0] double $(speed) run scoreboard players get @s MotionX
$execute store result entity @s Motion[1] double $(speed) run scoreboard players get @s MotionY
$execute store result entity @s Motion[2] double $(speed) run scoreboard players get @s MotionZ