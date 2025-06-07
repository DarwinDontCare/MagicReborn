$summon armor_stand ~ ~ ~ {HasVisualFire:false,Invulnerable:true,NoGravity:true,Tags:["ice_wall_marker"],data:{caster_id: $(caster_id), x: $(x), y: $(y), z: $(z)}, Invisible:true}

$execute as @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] at @s run tp @s ^ ^ ^ facing entity @a[scores={uuid=$(caster_id)},limit=1] feet
$execute as @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] run data modify entity @s Rotation[1] set value 0
$scoreboard players set @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] projectileHealth $(duration)
$scoreboard players reset @e[type=armor_stand,tag=ice_wall_marker,nbt={data:{caster_id:$(caster_id)}},distance=..1,limit=1] y