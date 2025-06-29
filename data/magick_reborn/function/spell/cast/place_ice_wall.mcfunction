$summon armor_stand ~ ~ ~ {HasVisualFire:false,Invulnerable:true,NoGravity:true,Tags:["ice_wall_marker"],data:{caster_id: $(caster_id), x: $(x), y: $(y), z: $(z)}, Invisible:true}

$data modify entity @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] Rotation set from entity @s
$execute as @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] run data modify entity @s Rotation[1] set value 0
$scoreboard players set @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] projectileHealth $(duration)
$scoreboard players reset @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] y