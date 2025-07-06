$summon marker ~ ~ ~ {Tags:["meteor_spawn"], data: {caster_id: $(uuid)}}
$execute as @e[type=marker,tag=meteor_spawn,nbt={data: {caster_id: $(uuid)}},sort=nearest,limit=1,distance=..3] run rotate @s facing entity @e[type=marker,tag=raycast_hit_meteor,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1]

$data modify storage magick:data magick_circle set value {magick_circle: "magick_reborn:destruction_magick_circle", duration: 60, scale: 5, caster_id: $(uuid), is_burst: 0, effects: [{effect: "minecraft:meteor"}]}
$execute as @e[type=marker,tag=meteor_spawn,nbt={data: {caster_id: $(uuid)}},sort=nearest,limit=1,distance=..3] run data modify storage magick:data magick_circle.rotation set from entity @s Rotation
function magick_reborn:magick/magick_circle/summon_magick_circle with storage magick:data magick_circle

$summon item_display ~ ~ ~ {item_display:"gui",Tags:["meteor"],data:{caster_id:$(uuid)},item:{id:item_frame,components:{item_model:"magick_reborn:meteor"}},transformation:{scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f]}}
$summon armor_stand ~ ~ ~ {Tags:["meteor_ride"],data:{caster_id:$(uuid), amplifier: $(amplifier), motion: [0,0,0]},Invisible:true,Invulnerable:true}

$scoreboard players set @s calculationValues $(amplifier)
execute if score @s calculationValues matches ..3 run data modify entity @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] data.amplifier set value 3

rotate @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] facing entity @s

$execute at @s run tp @s ~$(x) ~ ~$(z)

execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run attribute @s gravity base set 0
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run scoreboard players set @s ticksCount 20

execute as @e[type=item_display,tag=meteor,distance=..3,sort=nearest,limit=1] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{right_rotation:[90f,90f,0f,1f],scale:[3f,3f,3f]}}
execute as @e[type=item_display,tag=meteor,distance=..3,sort=nearest,limit=1] run ride @s mount @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1]

execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result score @s x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result score @s y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result score @s z run data get entity @s Pos[2] 1000

execute store result score @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] MotionX run data get entity @s Pos[0] 1000
execute store result score @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] MotionY run data get entity @s Pos[1] 1000
execute store result score @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] MotionZ run data get entity @s Pos[2] 1000

execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run scoreboard players operation @s MotionX -= @s x
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run scoreboard players operation @s MotionY -= @s y
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run scoreboard players operation @s MotionZ -= @s z

execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result entity @s data.motion[0] double .00002 run scoreboard players get @s MotionX
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result entity @s data.motion[1] double .00002 run scoreboard players get @s MotionY
execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] store result entity @s data.motion[2] double .00002 run scoreboard players get @s MotionZ

execute as @e[type=armor_stand,tag=meteor_ride,distance=..3,sort=nearest,limit=1] run scoreboard players set @s projectileHealth 15

$execute as @e[type=marker,tag=meteor_spawn,nbt={data: {caster_id: $(uuid)}},sort=nearest] run kill @s