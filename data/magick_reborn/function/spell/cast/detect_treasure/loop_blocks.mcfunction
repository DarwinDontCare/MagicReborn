$scoreboard players set #DetectTreasure x $(x)
$scoreboard players set #DetectTreasure y $(y)
$scoreboard players set #DetectTreasure z $(z)

$execute positioned ~$(x) ~$(y) ~$(z) run function magick_reborn:data/loot_rarity/block_loot

$execute unless data storage magick:data {loot_rarity: "ignore"} positioned ~$(x) ~$(y) ~$(z) run function magick_reborn:spell/cast/detect_treasure/summon_loot_marker {duration: $(duration)}

scoreboard players add #DetectTreasure z 1
$execute if score #DetectTreasure z matches $(amplifier).. run scoreboard players add #DetectTreasure y 1
$execute if score #DetectTreasure y matches $(amplifier).. if score #DetectTreasure z matches $(amplifier).. run scoreboard players add #DetectTreasure x 1

$execute if score #DetectTreasure x matches $(amplifier).. run return 1
$execute if score #DetectTreasure y matches $(amplifier).. run scoreboard players set #DetectTreasure y -$(amplifier)
$execute if score #DetectTreasure z matches $(amplifier).. run scoreboard players set #DetectTreasure z -$(amplifier)

execute store result storage magick:data detect_treasure.x int 1 run scoreboard players get #DetectTreasure x
execute store result storage magick:data detect_treasure.y int 1 run scoreboard players get #DetectTreasure y
execute store result storage magick:data detect_treasure.z int 1 run scoreboard players get #DetectTreasure z
$data modify storage magick:data detect_treasure.amplifier set value $(amplifier)
$data modify storage magick:data detect_treasure.duration set value $(duration)

function magick_reborn:spell/cast/detect_treasure/loop_blocks with storage magick:data detect_treasure