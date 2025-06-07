summon armor_stand ~ ~ ~ {NoGravity:true,Invulnerable:true,Small:true,Invisible:true,Tags:["light"]}
execute as @e[type=armor_stand,tag=light,distance=..1,limit=1] run data modify entity @s Rotation[1] set value 0
$scoreboard players set @e[tag=light,distance=..1, limit=1] projectileHealth $(duration)
$fill ~ ~ ~ ~ ~ ~ light[level=$(amplifier)] replace #air
kill @s