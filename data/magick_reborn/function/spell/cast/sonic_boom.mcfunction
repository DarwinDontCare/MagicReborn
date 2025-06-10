playsound entity.warden.sonic_boom ambient @a[distance=..20] ~ ~ ~ 1 1 0.5

$scoreboard players set @s calculationValues $(amplifier)
$execute store result storage magick $(uuid).sonic_boom.amplifier double 5 run scoreboard players get @s calculationValues
$execute store result storage magick $(uuid).sonic_boom.current_damage double 5 run scoreboard players get @s calculationValues
$data modify storage magick $(uuid).sonic_boom.index set value 0.5
$data modify storage magick $(uuid).sonic_boom.range set value $(range)
$execute store result storage magick $(uuid).sonic_boom.damage_interval double 1 run data get storage magick $(uuid).sonic_boom.range .01
$data modify storage magick $(uuid).sonic_boom.uuid set value $(uuid)
$execute at @s anchored eyes positioned ^ ^ ^ run function magick_reborn:spell/cast/sonic_boom_effect with storage magick $(uuid).sonic_boom

$tag @e[tag=sonic_boom_$(uuid)] remove sonic_boom_$(uuid)

$data remove storage magick $(uuid).sonic_boom