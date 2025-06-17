$scoreboard players set @s calculationValues $(amplifier)
$scoreboard players set @s calculationValues2 $(duration)

$data modify storage magick $(uuid).flames.amplifier set value $(amplifier)
$execute store result storage magick $(uuid).flames.damage double .5 run scoreboard players get @s calculationValues2
$data modify storage magick $(uuid).flames.index set value 0.5
$data modify storage magick $(uuid).flames.particle_amplitude set value 1
$data modify storage magick $(uuid).flames.range set value $(range)
$execute store result storage magick $(uuid).flames.duration double 20 run scoreboard players get @s calculationValues2
$data modify storage magick $(uuid).flames.uuid set value $(uuid)
$execute at @s anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/flames/flames/flames_effect with storage magick $(uuid).flames

$data remove storage magick $(uuid).flames

tag @s[tag=melting_ice] remove melting_ice