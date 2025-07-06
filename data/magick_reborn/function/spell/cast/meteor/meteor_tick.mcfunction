$execute at @s unless block ^ ^ ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
$execute at @s unless block ^ ^-1 ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
$execute at @s unless block ^ ^1 ^1 #magick_reborn:ignore_colision run return run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
execute if score @s ticksCount matches ..0 on passengers run function magick_reborn:spell/cast/meteor/rotate

particle flame ~ ~ ~ 1 1 1 0.1 10 force @a
particle smoke ~ ~ ~ 1.5 1.5 1.5 0.1 10 force @a

execute if score @s ticksCount matches ..0 run scoreboard players set @s ticksCount 20
execute unless score @s ticksCount matches ..0 run scoreboard players remove @s ticksCount 1
$execute if score @s projectileHealth matches ..13 run data modify entity @s Motion set value $(motion)
$execute if score @s projectileHealth matches ..0 run function magick_reborn:spell/cast/meteor/explode {uuid: $(caster_id), amplifier: $(amplifier)}
execute if score #global summonCheckTimer matches 20.. unless score @s projectileHealth matches ..0 run scoreboard players remove @s projectileHealth 1
