$scoreboard players set @s calculationValues $(amplifier)
execute if score @s calculationValues matches ..4 if entity @s[type=#magick_reborn:medium_projectiles] run return 0
execute if score @s calculationValues matches ..8 if entity @s[type=#magick_reborn:strong_projectiles] run return 0
execute if entity @s[type=item] store result score @s calculationValues2 run data get entity @s data.amplifier
execute if entity @s[type=item] if score @s calculationValues < @s calculationValues2 run return 0

execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionY run data get entity @s Motion[1] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

tp @s ~ ~ ~ facing ^ ^ ^-1

execute store result entity @s Motion[0] double -.001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double -.001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double -.001 run scoreboard players get @s MotionZ

playsound item.shield.block ambient @a[distance=..20] ~ ~ ~ 1 1 0.2
scoreboard players add @s deflectCooldown 5