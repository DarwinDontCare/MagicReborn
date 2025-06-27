scoreboard players reset @s ShapeShiftEffectDuration
bossbar remove minecraft:shape_shift

$tag @e[tag=shape_shifted_$(uuid)] remove shape_shifted_$(uuid)
ride @s dismount
attribute @s flying_speed modifier remove shape_shift

$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 0}}} run gamemode survival
$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 1}}} run gamemode creative
$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 2}}} run gamemode adventure