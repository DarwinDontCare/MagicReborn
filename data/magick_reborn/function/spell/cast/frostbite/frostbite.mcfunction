$scoreboard players set @s calculationValues $(amplifier)

$data modify storage magick $(uuid).frostbite.amplifier set value $(amplifier)
$execute store result storage magick $(uuid).frostbite.damage double .5 run scoreboard players get @s calculationValues
$data modify storage magick $(uuid).frostbite.index set value 0.5
$data modify storage magick $(uuid).frostbite.particle_amplitude set value 1
$data modify storage magick $(uuid).frostbite.range set value $(range)
$data modify storage magick $(uuid).frostbite.duration set value $(duration)
$data modify storage magick $(uuid).frostbite.uuid set value $(uuid)
$execute at @s anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/frostbite/frostbite_effect with storage magick $(uuid).frostbite

$data remove storage magick $(uuid).frostbite