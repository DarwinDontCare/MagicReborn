execute if entity @s[type=falling_block] if score @s tkBind matches ..0 run return run function magick_reborn:spell/cast/launch_block with entity @s data
$execute unless entity @s[type=falling_block] if score @s tkBind matches ..0 run function magick_reborn:spell/cast/tk_launch_entity with storage magick $(uuid).tk

execute if score @s tkBind matches 1.. run scoreboard players remove @s tkBind 1