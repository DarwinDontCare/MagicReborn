summon armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Tags:["web_placer"],NoGravity:true}
execute as @e[tag=web_placer,sort=nearest,limit=1] run attribute @s minecraft:scale base set 0.1

$scoreboard players set @e[tag=web_placer,sort=nearest,limit=1] calculationValues $(amplifier)
execute as @e[tag=web_placer,sort=nearest,limit=1] store result entity @s data.amplifier double 0.5 run scoreboard players get @s calculationValues

execute as @e[tag=web_placer,sort=nearest,limit=1] at @s run function magick_reborn:spell/cast/web/place_web with entity @s data
$execute as @e[tag=web_placer,sort=nearest,limit=1] run scoreboard players set @s webHealth $(duration)