summon armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Small:true,Tags:["plant_growth"]}

$execute as @e[type=armor_stand,distance=..2,sort=nearest,tag=plant_growth,limit=1] at @s run function magick_reborn:spell/cast/plant_growth/plant_growth_logic {amplifier: $(amplifier)}
