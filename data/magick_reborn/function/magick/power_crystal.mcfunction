rotate @s facing ^.1 ^ ^10

execute unless data entity @s data.original_x store result entity @s data.original_x double 1 run data get entity @s Pos[1]

execute unless entity @s[nbt={data:{move_up:true}}] run tp @s ~ ~-.01 ~
execute if entity @s[nbt={data:{move_up:true}}] run tp @s ~ ~.01 ~

execute store result score @s calculationValues run data get entity @s data.original_x 1000
execute store result score @s calculationValues2 run data get entity @s Pos[1] 1000
scoreboard players operation @s calculationValues -= @s calculationValues2

execute if score @s calculationValues matches 500.. run data modify entity @s data.move_up set value true
execute if score @s calculationValues matches ..-500 run data modify entity @s data.move_up set value false

particle portal ~ ~ ~ .1 .1 .1 .3 2 force @a

function magick_reborn:magick/check_in_tower_library
