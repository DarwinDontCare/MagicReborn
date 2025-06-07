execute if score @s ticksCount matches 1.. run scoreboard players remove @s ticksCount 1
execute if score @s projectileHealth matches 0 run kill @s

execute if score @s ticksCount matches 0 run scoreboard players remove @s projectileHealth 1
execute unless score @s ticksCount matches 1.. run scoreboard players set @s ticksCount 20