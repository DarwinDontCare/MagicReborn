#execute if entity @s[advancements={magick_reborn:use_wand=false}] run return 0
#scoreboard players remove @s wandCooldown 1
#execute if score @s wandCooldown matches 1.. run return run advancement revoke @s only magick_reborn:wand_cooldwon
#scoreboard players reset @s wandCooldown
#advancement revoke @s only magick_reborn:use_wand

scoreboard players remove @s wandCooldown 1
execute if score @s wandCooldown matches 1.. run return run advancement revoke @s only magick_reborn:wand_cooldwon
scoreboard players reset @s wandCooldown