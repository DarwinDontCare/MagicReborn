execute unless score @s projectileHealth matches 1.. run function magick_reborn:spell/cast/plane_shift/remove_plane_shift
execute as @e[type=interaction,nbt={interaction:{}},sort=nearest,tag=plane_shift] run function magick_reborn:spell/cast/plane_shift/portal_interact with entity @s interaction
execute if score #global summonCheckTimer matches 20.. run scoreboard players remove @s projectileHealth 1
execute if score #global summonCheckTimer matches 20.. run playsound block.portal.ambient ambient @a[distance=..20] ~ ~ ~ 1 1 0.2