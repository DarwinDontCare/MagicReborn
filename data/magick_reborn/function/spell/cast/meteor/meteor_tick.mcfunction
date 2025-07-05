$execute at @s unless block ^ ^ ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
$execute at @s unless block ^ ^-1 ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
$execute at @s unless block ^ ^1 ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
execute if score @s ticksCount matches ..0 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[360f,360f,0f,1f]}}
execute if score @s ticksCount matches ..0 run scoreboard players set @s ticksCount 10
execute unless score @s ticksCount matches ..0 run scoreboard players remove @s ticksCount 1
$execute if score @s projectileHealth matches ..0 run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
execute if score #global summonCheckTimer matches 20.. unless score @s projectileHealth matches ..0 run scoreboard players remove @s projectileHealth 1
