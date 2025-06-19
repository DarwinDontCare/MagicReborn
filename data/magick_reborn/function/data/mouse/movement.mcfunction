execute store result score @s x run data get entity @s Rotation[0]
execute store result score @s y run data get entity @s Rotation[1]

tellraw @s [{score: {objective: x, name: "@s"}}, ", ", {score: {objective: y, name: "@s"}}]