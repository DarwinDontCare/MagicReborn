execute if entity @s[type=falling_block] unless block ~ ~-.5 ~ #magick_reborn:ignore_colision if data entity @s {data: {container:true}} run return run function magick_reborn:spell/cast/place_container with entity @s data
$execute if entity @e[tag=!tk_launch,distance=..1.5] run function magick_reborn:spell/cast/tk_damage with storage magick $(uuid).tk
execute if entity @s[type=!falling_block] if predicate magick_reborn:on_ground run tag @s remove tk_launch
execute if entity @s[type=!falling_block,scores={TkLaunchEffect=..0}] run tag @s remove tk_launch
execute if entity @s[type=!falling_block,scores={TkLaunchEffect=1..}] run scoreboard players remove @s TkLaunchEffect 1

execute if entity @s[type=falling_block] if data entity @s {OnGround:true} run data modify entity @s Time set value 1s