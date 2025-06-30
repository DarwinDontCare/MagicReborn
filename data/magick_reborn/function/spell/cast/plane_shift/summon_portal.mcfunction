summon interaction ~ ~ ~ {width:.7,height:2,interaction:{},Tags:["plane_shift"]}
$summon item_display ~ ~1 ~ {item_display:"head",item:{id:item_frame,components:{item_model:"magick_reborn:portal"}}, Tags:["plane_shift"],data:{uuid: $(uuid), dimension: "$(dimension)", exit_pos_x: "$(exit_pos_x)", exit_pos_y: "$(exit_pos_y)", exit_pos_z: "$(exit_pos_z)"}}
execute as @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,nbt={data:{dimension:"minecraft:overworld"}}] run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:overworld_portal"
execute as @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,nbt={data:{dimension:"minecraft:the_end"}}] run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:end_portal"

execute at @e[type=item_display,tag=plane_shift,sort=nearest,limit=1] run particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.1 30 force @a
data modify entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=interaction,tag=plane_shift,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
$scoreboard players set @e[type=item_display,tag=plane_shift,sort=nearest,limit=1] projectileHealth $(duration)