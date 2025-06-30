$execute in $(dimension) run tp @s $(exit_pos_x) $(exit_pos_y) $(exit_pos_z)

scoreboard players set @s boolean 0
data modify storage magick:data plane_shift.find_empty_spot.index set from entity @s Pos[1]
$execute in $(dimension) run function magick_reborn:spell/cast/plane_shift/find_empty_spot with storage magick:data plane_shift.find_empty_spot

$execute at @s in $(dimension) run playsound block.portal.travel
tag @s add recentily_plane_shifted
scoreboard players set @s ticksCount 2