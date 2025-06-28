$scoreboard players set #ShapeShift calculationValues $(amplifier)
scoreboard players set #ShapeShift calculationValues2 10

scoreboard players operation #ShapeShift calculationValues2 *= #ShapeShift calculationValues
scoreboard players operation #ShapeShift calculationValues *= #ShapeShift calculationValues2

execute store result score #ShapeShift calculationResults run data get entity @s Health
$execute if score #ShapeShift calculationValues < #ShapeShift calculationResults run return run tell @a[scores={uuid=$(uuid)},limit=1] "This entity is too strong :("

bossbar add minecraft:shape_shift "Shape Shift Effect"
$bossbar set minecraft:shape_shift players @a[scores={uuid=$(uuid)}, limit=1]
$bossbar set minecraft:shape_shift max $(duration)
$bossbar set minecraft:shape_shift value $(duration)

$data modify storage magick $(uuid).shape_shift.gamemode set from entity @a[scores={uuid=$(uuid)}, limit=1] playerGameType
$attribute @a[scores={uuid=$(uuid)}, limit=1] flying_speed modifier add shape_shift -1 add_multiplied_base
$tag @s add shape_shifted_$(uuid)

$execute as @a[scores={uuid=$(uuid)}, limit=1] run scoreboard players set @s ShapeShiftEffectDuration $(duration)
$execute as @a[scores={uuid=$(uuid)}, limit=1] run gamemode spectator
$spectate @s @a[scores={uuid=$(uuid)}, limit=1]