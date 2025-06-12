$scoreboard players set #SizeMod calculationValues $(amplifier)
$execute store result storage magick:data sizeManipulation.amplifier double $(scale) run scoreboard players get #SizeMod calculationValues
$data modify storage magick:data sizeManipulation.duration set value $(duration)
$data modify storage magick:data sizeManipulation.uuid set value $(uuid)

$function $(function) with storage magick:data sizeManipulation