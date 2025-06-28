execute if score @s projectileHealth matches 1.. if score #global summonCheckTimer matches 20.. run scoreboard players remove @s projectileHealth 1
execute unless score @s projectileHealth matches 1.. run function magick_reborn:spell/cast/detect_treasure/remove_treasure_marker

execute at @s if block ~ ~ ~ #magick_reborn:ignore_colision run function magick_reborn:spell/cast/detect_treasure/remove_treasure_marker