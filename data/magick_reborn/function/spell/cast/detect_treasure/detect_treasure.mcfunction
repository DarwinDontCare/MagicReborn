$kill @e[type=marker,tag=detect_treasure_center,nbt={data:{caster_id: $(uuid)}}]
$execute rotated 0.0 0.0 run summon marker ~ ~ ~ {Tags:["detect_treasure_center"], Invulnerable:true,NoGravity:true,data:{caster_id:$(uuid)}}
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] run data modify entity @s data.detect_treasure.index set value 0
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] run data modify entity @s data.detect_treasure.index set value 0

effect give @s darkness 3 255 true

$scoreboard players set #DetectTreasure calculationValues2 $(amplifier)
scoreboard players set #DetectTreasure calculationValues 2

scoreboard players operation #DetectTreasure calculationValues2 *= #DetectTreasure calculationValues
execute if score #DetectTreasure calculationValues2 matches 7.. run scoreboard players set #DetectTreasure calculationValues2 7
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] store result entity @s data.detect_treasure.amplifier int 1 run scoreboard players get #DetectTreasure calculationValues2
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] store result entity @s data.detect_treasure.max_y int 1.5 run scoreboard players get #DetectTreasure calculationValues2
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] run data modify entity @s data.detect_treasure.duration set value $(duration)

execute store result score #DetectTreasure x run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[0]
execute store result score #DetectTreasure y run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[1]
execute store result score #DetectTreasure z run data get entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[2]

scoreboard players set #DetectTreasure calculationValues 10
$execute as @e[tag=detect_treasure_center,nbt={data:{caster_id:$(uuid)}},limit=1] store result score #DetectTreasure calculationValues2 run data get entity @s data.detect_treasure.max_y 0.15
scoreboard players operation #DetectTreasure y += #DetectTreasure calculationValues2

scoreboard players operation #DetectTreasure x *= #DetectTreasure calculationValues
scoreboard players operation #DetectTreasure y *= #DetectTreasure calculationValues
scoreboard players operation #DetectTreasure z *= #DetectTreasure calculationValues

scoreboard players add #DetectTreasure x 5
scoreboard players add #DetectTreasure z 5

execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[0] double .1 run scoreboard players get #DetectTreasure x
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[1] double .1 run scoreboard players get #DetectTreasure y
execute store result entity @e[type=marker,tag=detect_treasure_center,sort=nearest,limit=1] Pos[2] double .1 run scoreboard players get #DetectTreasure z

scoreboard players reset #DetectTreasure x
scoreboard players reset #DetectTreasure y
scoreboard players reset #DetectTreasure z