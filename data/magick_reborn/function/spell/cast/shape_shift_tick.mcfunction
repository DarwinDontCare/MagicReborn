$execute unless score @s ShapeShiftEffectDuration matches 1.. run return run function magick_reborn:spell/cast/remove_shape_shift {uuid: $(uuid)}
$execute if score @s ShapeShiftEffectDuration matches 1.. run spectate @e[tag=shape_shifted_$(uuid),limit=1] @s

$execute unless entity @e[tag=shape_shifted_$(uuid)] run function magick_reborn:spell/cast/remove_shape_shift {uuid: $(uuid)}

execute if score #global summonCheckTimer matches 20.. if score @s ShapeShiftEffectDuration matches 1.. run scoreboard players remove @s ShapeShiftEffectDuration 1
execute if score #global summonCheckTimer matches 20.. store result storage magick:data giantEffect.value int 1 run scoreboard players get @s ShapeShiftEffectDuration
execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data giantEffect.bossbar set value "minecraft:m"

execute if score #global summonCheckTimer matches 20.. if score @s ShapeShiftEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data giantEffect