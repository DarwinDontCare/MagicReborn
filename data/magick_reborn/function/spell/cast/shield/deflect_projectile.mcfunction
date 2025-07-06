execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionY run data get entity @s Motion[1] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

scoreboard players set @s calculationValues -1

scoreboard players operation @s MotionX *= @s calculationValues
scoreboard players operation @s MotionY *= @s calculationValues
scoreboard players operation @s MotionZ *= @s calculationValues

execute store result entity @s Motion[0] double .001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double .001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double .001 run scoreboard players get @s MotionZ

rotate @s facing ^ ^ ^-1