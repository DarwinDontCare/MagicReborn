$data modify storage magick:data magick_circle set value {magick_circle: "$(magick_circle)", duration: 15, scale: 1.5, caster_id: $(caster_id), is_burst: $(is_burst), effects: $(effects)}
data modify storage magick:data magick_circle.rotation set from entity @s Rotation
execute at @s anchored eyes positioned ^ ^-1 ^.2 run function magick_reborn:magick/magick_circle/summon_magick_circle with storage magick:data magick_circle

execute rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible: true, Invulnerable:1b,NoGravity:1b,Tags:["aim"]}

$function magick_reborn:spell/summon_projectile {caster_id: $(caster_id)}

$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.effects set value $(effects)
$execute at @e[tag=magick_projectile,sort=nearest,nbt={data:{caster_id:$(caster_id)}}, limit=1] run tp @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] ^ ^ ^ facing entity @s feet
$function magick_reborn:spell/cast/apply_fireball_amplifier {caster_id: $(caster_id), index: 0}

$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.cast_sound set value "$(cast_sound)"
$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.idle_sound set value "$(idle_sound)"
$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.hit_sound set value "$(hit_sound)"
$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.particle set value "$(particle)"
$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.magick_circle set value "$(magick_circle)"
$data modify entity @e[tag=magick_projectile,nbt={data:{caster_id: $(caster_id)}}, limit=1, sort=nearest] data.is_burst set value "$(is_burst)"

$execute at @s as @e[tag=magick_projectile,sort=nearest,nbt={data:{caster_id:$(caster_id)}},limit=1] run scoreboard players set @s projectileHealth $(health)

$execute at @s positioned ~ ~1.5 ~ as @e[sort=nearest,tag=magick_projectile,limit=1,nbt={data:{caster_id: $(caster_id)}}] positioned 0 0 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 1000
$execute at @s positioned ~ ~1.5 ~ as @e[sort=nearest,tag=magick_projectile,limit=1,nbt={data:{caster_id: $(caster_id)}}] positioned 0 0 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 1000
$execute at @s positioned ~ ~1.5 ~ as @e[sort=nearest,tag=magick_projectile,limit=1,nbt={data:{caster_id: $(caster_id)}}] positioned 0 0 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 1000 

kill @e[tag=aim]

$execute at @s as @e[tag=magick_projectile, sort=nearest,limit=1,nbt={data:{caster_id: $(caster_id)}}] store result entity @s Motion[0] double $(speed) run scoreboard players get @s MotionX
$execute at @s as @e[tag=magick_projectile, sort=nearest,limit=1,nbt={data:{caster_id: $(caster_id)}}] store result entity @s Motion[1] double $(speed) run scoreboard players get @s MotionY
$execute at @s as @e[tag=magick_projectile, sort=nearest,limit=1,nbt={data:{caster_id: $(caster_id)}}] store result entity @s Motion[2] double $(speed) run scoreboard players get @s MotionZ