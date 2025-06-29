$scoreboard players set @s index $(index)

$execute positioned ^$(index) ^ ^ run summon evoker_fangs ~ ~ ~
$execute positioned ^$(index) ^ ^ run rotate @e[type=evoker_fangs,sort=nearest,limit=1] facing ^1 ^ ^
$execute positioned ^$(index) ^ ^ run data modify entity @e[type=evoker_fangs,sort=nearest,limit=1] Owner set from entity @a[scores={uuid=$(caster_id)},limit=1] UUID

$execute if score @s index matches $(area).. run return 1

scoreboard players add @s index 1

execute store result entity @s data.index int 1 run scoreboard players get @s index

function magick_reborn:spell/cast/fangs/summon_fang with entity @s data