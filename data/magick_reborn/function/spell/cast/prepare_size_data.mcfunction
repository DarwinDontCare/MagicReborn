$scoreboard players set #SizeMod calculationValues $(amplifier)
$execute store result storage magick:data sizeManipulation.amplifier double $(scale) run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.gravity double $(scale) run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.speed double $(scale) run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.jump double $(scale) run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.fallHeight double $(scale) run scoreboard players get #SizeMod calculationValues
$data modify storage magick:data sizeManipulation.duration set value $(duration)
$data modify storage magick:data sizeManipulation.uuid set value $(uuid)

execute store result storage magick:data sizeManipulation.break_speed double 0.4 run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.break_speed double $(scale) run data get storage magick:data sizeManipulation.break_speed

execute store result storage magick:data sizeManipulation.interaction double 0.4 run scoreboard players get #SizeMod calculationValues
$execute store result storage magick:data sizeManipulation.interaction double $(scale) run data get storage magick:data sizeManipulation.interaction

execute store result score #SizeMod calculationValues run data get storage magick:data sizeManipulation.gravity 10
execute if score #SizeMod calculationValues matches 7.. run data modify storage magick:data sizeManipulation.gravity set value 0.7

execute store result score #SizeMod calculationValues run data get storage magick:data sizeManipulation.speed 10
execute if score #SizeMod calculationValues matches 7.. run data modify storage magick:data sizeManipulation.speed set value 0.7

execute store result score #SizeMod calculationValues run data get storage magick:data sizeManipulation.jump 10
execute if score #SizeMod calculationValues matches 7.. run data modify storage magick:data sizeManipulation.jump set value 0.7

execute store result score #SizeMod calculationValues run data get storage magick:data sizeManipulation.fallHeight 100
execute if score #SizeMod calculationValues matches 96.. run data modify storage magick:data sizeManipulation.fallHeight set value 0.96

$function $(function) with storage magick:data sizeManipulation