$summon minecraft:item_display ~ ~1.5 ~ {item_display:"gui",item:{id:"item_frame",components:{item_model:"magick_reborn:shield"}},data:{caster_id:$(uuid),position:"$(position)",amplifier: $(amplifier)},Tags:["shield"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]}}
$summon armor_stand ~ ~ ~ {Small:true,NoGravity:true,Invisible:true,Invulnerable:true,Tags:["shield_ride"],data:{caster_id:$(uuid),position:"$(position)",amplifier: $(amplifier)},Silent:false}
$execute as @e[type=item_display,distance=..2,sort=nearest,limit=1,nbt={data:{caster_id:$(uuid)}},tag=shield] run attribute @s scale modifier add size -0.9 add_multiplied_base

$execute as @e[type=item_display,distance=..2,sort=nearest,limit=1,nbt={data:{caster_id:$(uuid)}},tag=shield] run ride @s mount @e[type=armor_stand,distance=..2,sort=nearest,tag=shield_ride,nbt={data:{caster_id:$(uuid)}},limit=1]
$execute as @e[type=item_display,distance=..2,sort=nearest,limit=1,nbt={data:{caster_id:$(uuid)}},tag=shield] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[1f,1f,1f]}}

$data modify entity @e[type=item_display,distance=..2,sort=nearest,limit=1,nbt={data:{caster_id:$(uuid)}},tag=shield] data.target_uuid set from entity @s UUID
$data modify entity @e[type=armor_stand,distance=..2,sort=nearest,tag=shield_ride,nbt={data:{caster_id:$(uuid)}},limit=1] data.target_uuid set from entity @s UUID