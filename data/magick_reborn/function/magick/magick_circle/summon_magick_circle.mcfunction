$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},distance=..1.5,sort=nearest,limit=1] run return run function magick_reborn:magick/magick_circle/reposition_magick_circle {rotation: $(rotation), caster_id: $(caster_id)}

$summon item_display ~ ~1 ~ {item_display:"gui", item:{id:item_frame,components:{item_model:"$(magick_circle)"}}, data: {caster_id: $(caster_id), is_burst: $(is_burst), effects: $(effects)}, Tags:["magick_circle"],Glowing:true,transformation:{scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] run scoreboard players set @s calculationValues $(duration)
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{is_burst: 1}} store result entity @s data.duration int 1.4 run scoreboard players get @s calculationValues
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] unless data entity @s data.duration store result entity @s data.duration int 1.4 run scoreboard players get @s calculationValues

$data merge entity @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] {data:{scale:$(scale), magick_circle: "$(magick_circle)"}}
$data merge entity @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] {start_interpolation:0,transformation:{right_rotation:[0f,0f,45f,1f],scale:[$(scale)f,$(scale)f,$(scale)f]}}

$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] store result entity @s interpolation_duration int 1 run data get entity @s data.duration 0.5
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] store result entity @s data.first_quarter_duration int 1 run data get entity @s data.duration 0.25
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] store result entity @s data.second_quarter_duration int 1 run data get entity @s data.duration 0.75
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] store result entity @s data.half_duration int 1 run data get entity @s data.duration 0.5

$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{magick_circle: "magick_reborn:destruction_magick_circle"}} run team join destruction
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{magick_circle: "magick_reborn:illusion_magick_circle"}} run team join illusion
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{magick_circle: "magick_reborn:alteration_magick_circle"}} run team join alteration
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{magick_circle: "magick_reborn:conjuration_magick_circle"}} run team join conjuration
$execute as @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] if data entity @s {data:{magick_circle: "magick_reborn:restoration_magick_circle"}} run team join restoration

$data modify entity @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] Rotation set value $(rotation)
$scoreboard players set @e[type=item_display,tag=magick_circle,nbt={data: {caster_id: $(caster_id), effects: $(effects)}},sort=nearest,limit=1] projectileHealth $(duration)