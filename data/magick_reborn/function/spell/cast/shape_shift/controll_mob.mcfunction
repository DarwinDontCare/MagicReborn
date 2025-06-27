$execute positioned 0.0 0.0 0.0 rotated as @s run summon armor_stand ^$(x) ^$(y) ^$(z) {Invisible:true, Invulnerable:true, NoGravity:true, Tags:["motion_direction"], data: {caster_id: $(uuid)}}

execute store result score @s speed run attribute @s movement_speed get 1000
execute store result score @s jump_strenght run attribute @s jump_strength get 1000

data modify entity @s[type=!#magick_reborn:flying_mobs] Motion[0] set value 0.0
data modify entity @s[type=!#magick_reborn:flying_mobs] Motion[2] set value 0.0
data modify entity @s[type=#magick_reborn:flying_mobs] Motion set value [0.0, 0.0, 0.0]

$data modify entity @s Rotation set from entity @a[scores={uuid=$(uuid)},limit=1] Rotation

$execute store result score @s MotionX run data get entity @e[tag=motion_direction,nbt={data: {caster_id: $(uuid)}},limit=1] Pos[0] 1000
scoreboard players operation @s MotionX *= @s speed
execute unless entity @s[type=#magick_reborn:slimes,nbt={OnGround:true}] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s MotionZ

$execute store result score @s MotionX run data get entity @e[tag=motion_direction,nbt={data: {caster_id: $(uuid)}},limit=1] Pos[0] 1000
scoreboard players operation @s MotionX *= @s speed
execute unless entity @s[type=#magick_reborn:slimes,nbt={OnGround:true}] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s MotionX

$execute store result score @s MotionY run data get entity @e[tag=motion_direction,nbt={data: {caster_id: $(uuid)}},limit=1] Pos[1] 1000
scoreboard players operation @s MotionY *= @s jump_strenght
execute store result score @s calculationValues2 run attribute @s gravity get 1000
execute store result score @s calculationResults run attribute @s flying_speed get 1000
execute if score @s MotionY matches ..0 run scoreboard players operation @s MotionY -= @s calculationValues2
execute if entity @s[nbt={OnGround:true}] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s MotionY
execute if score @s calculationResults matches 1.. store result entity @s Motion[1] double 0.0001 run scoreboard players get @s MotionY

$execute store result score @s MotionZ run data get entity @e[tag=motion_direction,nbt={data: {caster_id: $(uuid)}},limit=1] Pos[2] 1000
scoreboard players operation @s MotionZ *= @s speed
execute unless entity @s[type=#magick_reborn:slimes,nbt={OnGround:true}] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s MotionZ

$scoreboard players set @s calculationValues2 $(ability)
$execute unless score @s calculationValues2 matches 0 run function magick_reborn:spell/cast/shape_shift/activate_mob_ability {uuid: $(uuid)}

$kill @e[tag=motion_direction,nbt={data: {caster_id: $(uuid)}}]