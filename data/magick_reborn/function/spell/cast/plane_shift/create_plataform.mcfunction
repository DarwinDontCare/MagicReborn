$execute if score @s ticksCount matches ..0 at @s unless entity @e[type=item_display,tag=plane_shift,sort=nearest,limit=1,distance=..1.5] run function magick_reborn:spell/cast/plane_shift/summon_portal with storage magick $(uuid).plane_shift

execute if score @s ticksCount matches ..0 at @s in minecraft:the_nether run playsound block.portal.travel
execute if score @s ticksCount matches ..0 at @s if block ~ ~-1 ~ #air run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 gray_stained_glass replace #air
execute if score @s ticksCount matches ..0 at @s if block ~ ~-1 ~ lava run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 gray_stained_glass replace lava
execute if score @s ticksCount matches ..0 at @s if block ~ ~-1 ~ water run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 gray_stained_glass replace water
execute if score @s ticksCount matches ..0 at @s at @e[type=item_display,tag=plane_shift,sort=nearest,limit=1] run particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.1 30 force @a
execute if score @s ticksCount matches ..0 run tag @s remove recentily_plane_shifted
execute if score @s ticksCount matches ..0 run scoreboard players reset @s ticksCount
execute if score @s ticksCount matches 1.. run scoreboard players remove @s ticksCount 1