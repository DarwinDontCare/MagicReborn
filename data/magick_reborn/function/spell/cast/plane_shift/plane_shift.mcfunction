$execute as @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] at @s run function magick_reborn:spell/cast/plane_shift/change_target_plain {uuid: $(uuid)}

$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage magick $(uuid).plane_shift.dimension set value "minecraft:the_nether"
$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage magick $(uuid).plane_shift.dimension set value "minecraft:the_end"
$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage magick $(uuid).plane_shift.dimension set value "minecraft:overworld"

$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage magick $(uuid).plane_shift merge value {exit_pos_x: "~", exit_pos_y: "~", exit_pos_z: "~"}
$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage magick $(uuid).plane_shift merge value {exit_pos_x: "6", exit_pos_y: "50", exit_pos_z: "0"}
$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage magick $(uuid).plane_shift merge value {exit_pos_x: "~", exit_pos_y: "~", exit_pos_z: "~"}

$data modify storage magick $(uuid).plane_shift merge value {duration: $(duration), uuid: $(uuid)}

$execute unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] at @s run function magick_reborn:spell/cast/plane_shift/summon_portal with storage magick $(uuid).plane_shift

$data modify storage magick $(uuid).plane_shift.dimension set from entity @s Dimension
$data modify storage magick $(uuid).plane_shift.exit_pos_x set from entity @s Pos[0]
$data modify storage magick $(uuid).plane_shift.exit_pos_y set from entity @s Pos[1]
$data modify storage magick $(uuid).plane_shift.exit_pos_z set from entity @s Pos[2]
$data modify storage magick $(uuid).plane_shift merge value {duration: $(duration), uuid: $(uuid)}
