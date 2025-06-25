$data modify storage magick:data detect_treasure.x set value -$(amplifier)
$data modify storage magick:data detect_treasure.y set value -$(amplifier)
$data modify storage magick:data detect_treasure.z set value -$(amplifier)

$data modify storage magick:data detect_treasure.amplifier set value $(amplifier)
$data modify storage magick:data detect_treasure.duration set value $(duration)

data get block ~ ~ ~ posX

execute positioned ~ ~ ~ align xyz run function magick_reborn:spell/cast/detect_treasure/loop_blocks with storage magick:data detect_treasure