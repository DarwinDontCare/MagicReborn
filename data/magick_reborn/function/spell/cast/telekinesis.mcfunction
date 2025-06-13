$execute unless entity @e[tag=tk_$(uuid)] run function magick_reborn:spell/cast/pick_tk_entity {uuid: $(uuid), amplifier: $(amplifier)}

$execute unless entity @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}}] anchored eyes positioned ^ ^ ^2 run summon armor_stand ~ ~ ~ {Tags:["tk_target"], data: {caster_id: $(uuid)},Invisible:true,Invulnerable:true,attributes:[{id:scale,modifiers:[{id:samll,amount:0.7,operation:"add_multiplied_base"}]}]}
$execute anchored eyes positioned ^ ^ ^ run tp @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}},limit=1] ^ ^ ^2

# Armazenar posição do falling_block multiplicada por 1000
$execute as @e[type=falling_block,tag=tk_$(uuid),limit=1] store result score #TkDirection x run data get entity @s Pos[0] 1000
$execute as @e[type=falling_block,tag=tk_$(uuid),limit=1] store result score #TkDirection y run data get entity @s Pos[1] 1000
$execute as @e[type=falling_block,tag=tk_$(uuid),limit=1] store result score #TkDirection z run data get entity @s Pos[2] 1000

# Armazenar posição do armor_stand (target) multiplicada por 1000
$execute as @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}}] store result score #TkDirection MotionX run data get entity @s Pos[0] 1000
$execute as @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}}] store result score #TkDirection MotionY run data get entity @s Pos[1] 1000
$execute as @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}}] store result score #TkDirection MotionZ run data get entity @s Pos[2] 1000

scoreboard players operation #TkDirection MotionX -= #TkDirection x
scoreboard players operation #TkDirection MotionY -= #TkDirection y
scoreboard players operation #TkDirection MotionZ -= #TkDirection z

$execute store result entity @e[type=falling_block,tag=tk_$(uuid),limit=1] Motion[0] double .0001 run scoreboard players get #TkDirection MotionX
$execute store result entity @e[type=falling_block,tag=tk_$(uuid),limit=1] Motion[1] double .0001 run scoreboard players get #TkDirection MotionY
$execute store result entity @e[type=falling_block,tag=tk_$(uuid),limit=1] Motion[2] double .0001 run scoreboard players get #TkDirection MotionZ

$execute as @e[tag=tk_$(uuid),type=!falling_block,limit=1] run ride @s mount @e[type=armor_stand, tag=tk_target, nbt={data:{caster_id: $(uuid)}},limit=1]

$scoreboard players set @e[tag=tk_$(uuid)] tkBind 2