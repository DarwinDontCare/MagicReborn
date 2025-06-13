tag @s remove tk_bind
$tag @s remove tk_$(uuid)

tag @s add tk_launch

scoreboard players reset @s tkBind
$scoreboard players set #TkLaunch calculationValues $(amplifier)

execute store result storage magick:data tk_launch_entity.speed double .01 run scoreboard players get #TkLaunch calculationValues
$data modify storage magick:data tk_launch_entity.uuid set value $(uuid)

ride @s dismount
$execute if entity @s[type=player] run return run function magick_reborn:spell/cast/push {uuid: $(uuid)}
execute if entity @s[type=!player] run return run function magick_reborn:spell/cast/push_mob with storage magick:data tk_launch_entity