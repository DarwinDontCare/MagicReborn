execute if score @s projectileHealth matches 0 run fill ~ ~ ~ ~ ~ ~ air replace light
execute if score @s projectileHealth matches 0 run return run kill

execute if score @s ticksCount matches 1.. run scoreboard players remove @s ticksCount 1
execute if score @s ticksCount matches 0 run scoreboard players remove @s projectileHealth 1
execute unless score @s ticksCount matches 1.. run scoreboard players set @s ticksCount 20