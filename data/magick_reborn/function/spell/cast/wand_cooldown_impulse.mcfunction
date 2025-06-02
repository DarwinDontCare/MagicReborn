scoreboard players remove @s wandCooldown 1
execute if score @s wandCooldown matches 1.. run return run advancement revoke @s only magick_reborn:wand_cooldown_impulse
scoreboard players reset @s wandCooldown