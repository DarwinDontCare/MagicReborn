bossbar add minecraft:shape_shift "Shape Shift Effect"
$bossbar set minecraft:shape_shift players @a[scores={uuid=$(uuid)}, limit=1]
$bossbar set minecraft:shape_shift max $(duration)
$bossbar set minecraft:shape_shift value $(duration)

$data modify storage magick $(uuid).shape_shift.gamemode set from entity @a[scores={uuid=$(uuid)}, limit=1] playerGameType
$tag @s add shape_shifted_$(uuid)

$execute as @a[scores={uuid=$(uuid)}, limit=1] run scoreboard players set @s ShapeShiftEffectDuration $(duration)
$execute as @a[scores={uuid=$(uuid)}, limit=1] run gamemode spectator
$spectate @s @a[scores={uuid=$(uuid)}, limit=1]