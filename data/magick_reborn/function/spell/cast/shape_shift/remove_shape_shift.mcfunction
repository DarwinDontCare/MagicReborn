scoreboard players reset @s ShapeShiftEffectDuration
bossbar remove minecraft:m

$tag @e[tag=shape_shifted_$(uuid)] remove shape_shifted_$(uuid)

$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 0}}} run gamemode survival
$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 1}}} run gamemode creative
$execute if data storage magick {$(uuid): {shape_shift: {gamemode: 2}}} run gamemode adventure