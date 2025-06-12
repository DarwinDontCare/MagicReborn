execute if entity @s[type=falling_block] if score @s tkBind matches ..0 run return run function magick_reborn:spell/cast/launch_block with entity @s data

execute if score @s tkBind matches 1.. run scoreboard players remove @s tkBind 1