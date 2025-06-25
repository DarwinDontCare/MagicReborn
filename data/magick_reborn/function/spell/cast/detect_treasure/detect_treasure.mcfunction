data modify storage magick:data detect_treasure set value {}
$data modify storage magick:data detect_treasure.x set value -$(amplifier)
$data modify storage magick:data detect_treasure.y set value -$(amplifier)
$data modify storage magick:data detect_treasure.z set value -$(amplifier)

$data modify storage magick:data detect_treasure.amplifier set value $(amplifier)
$data modify storage magick:data detect_treasure.duration set value $(duration)

execute store result score #DetectTreasure x run data get entity @s Pos[0]
execute store result score #DetectTreasure y run data get entity @s Pos[1]
execute store result score #DetectTreasure z run data get entity @s Pos[2]

$scoreboard players remove #DetectTreasure x $(amplifier)
$scoreboard players remove #DetectTreasure y $(amplifier)
$scoreboard players remove #DetectTreasure z $(amplifier)

summon marker ~ ~ ~ {Tags:["detect_treasure_center"]}

execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[0] int 1 run scoreboard players get #DetectTreasure x
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[1] int 1 run scoreboard players get #DetectTreasure y
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[2] int 1 run scoreboard players get #DetectTreasure z

scoreboard players reset #DetectTreasure x
scoreboard players reset #DetectTreasure y
scoreboard players reset #DetectTreasure z

execute at @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] run function magick_reborn:spell/cast/detect_treasure/loop_blocks with storage magick:data detect_treasure
kill @e[type=marker,tag=detect_treasure_center,sort=nearest]