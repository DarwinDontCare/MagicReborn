$execute unless score @s ShapeShiftEffectDuration matches 1.. run return run function magick_reborn:spell/cast/shape_shift/remove_shape_shift {uuid: $(uuid)}
$execute if entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/cast/shape_shift/remove_shape_shift {uuid: $(uuid)}
$execute if score @s ShapeShiftEffectDuration matches 1.. run spectate @e[tag=shape_shifted_$(uuid),limit=1] @s

$execute unless entity @e[tag=shape_shifted_$(uuid)] run function magick_reborn:spell/cast/shape_shift/remove_shape_shift {uuid: $(uuid)}

execute if score #global summonCheckTimer matches 20.. if score @s ShapeShiftEffectDuration matches 1.. run scoreboard players remove @s ShapeShiftEffectDuration 1
execute if score #global summonCheckTimer matches 20.. store result storage magick:data shape_shift.value int 1 run scoreboard players get @s ShapeShiftEffectDuration
execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data shape_shift.bossbar set value "minecraft:m"

$data modify storage magick $(uuid).shape_shift.x set from storage magick $(uuid).motion_keys[0]
$data modify storage magick $(uuid).shape_shift.y set from storage magick $(uuid).motion_keys[1]
$data modify storage magick $(uuid).shape_shift.z set from storage magick $(uuid).motion_keys[2]
$data modify storage magick $(uuid).shape_shift.speed set from storage magick $(uuid).motion_keys[3]

$data modify storage magick $(uuid).shape_shift.uuid set value $(uuid)

$execute as @e[tag=shape_shifted_$(uuid),limit=1] run function magick_reborn:spell/cast/shape_shift/controll_mob with storage magick $(uuid).shape_shift

execute if score #global summonCheckTimer matches 20.. if score @s ShapeShiftEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data shape_shift