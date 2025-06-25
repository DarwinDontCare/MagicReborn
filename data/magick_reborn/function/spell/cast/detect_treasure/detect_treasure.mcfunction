data modify storage magick:data detect_treasure set value {}

data modify storage magick:data detect_treasure.x set value 0
data modify storage magick:data detect_treasure.y set value 0
data modify storage magick:data detect_treasure.z set value 0

$scoreboard players set #DetectTreasure calculationValues2 $(amplifier)
scoreboard players add #DetectTreasure calculationValues2 1
execute store result storage magick:data detect_treasure.amplifier int 2 run scoreboard players get #DetectTreasure calculationValues2
$data modify storage magick:data detect_treasure.duration set value $(duration)

$summon marker ~-$(amplifier) ~-$(amplifier) ~-$(amplifier) {Tags:["detect_treasure_center"]}

execute store result score #DetectTreasure x run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[0]
execute store result score #DetectTreasure y run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[1]
execute store result score #DetectTreasure z run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[2]

scoreboard players set #DetectTreasure calculationValues 10

scoreboard players operation #DetectTreasure x *= #DetectTreasure calculationValues
scoreboard players operation #DetectTreasure y *= #DetectTreasure calculationValues
scoreboard players operation #DetectTreasure z *= #DetectTreasure calculationValues

scoreboard players add #DetectTreasure x 5
scoreboard players add #DetectTreasure z 5

execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[0] double .1 run scoreboard players get #DetectTreasure x
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[1] double .1 run scoreboard players get #DetectTreasure y
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[2] double .1 run scoreboard players get #DetectTreasure z

execute as @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] at @s run tp @s ~-1 ~-1 ~-1

scoreboard players reset #DetectTreasure x
scoreboard players reset #DetectTreasure y
scoreboard players reset #DetectTreasure z

execute at @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] run function magick_reborn:spell/cast/detect_treasure/loop_blocks with storage magick:data detect_treasure
kill @e[type=marker,tag=detect_treasure_center,sort=nearest]