$execute store success score @s boolean run data modify entity @s data.target_uuid set from entity @e[distance=..$(range),type=#magick_reborn:hostile_mobs,limit=1,sort=nearest,team=!$(caster_id)] UUID

execute if score @s boolean matches 1 run function magick_reborn:spell/cast/set_aggro with entity @s data