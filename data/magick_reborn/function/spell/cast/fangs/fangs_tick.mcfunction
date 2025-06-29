$data modify entity @s data.index set value -$(area)

execute if block ~ ~-.5 ~ #magick_reborn:ignore_colision run tp @s ~ ~-.5 ~
execute if block ~ ~-.5 ~ #magick_reborn:ignore_colision run tp @s ~ ~-.5 ~
execute unless block ~ ~ ~ #magick_reborn:ignore_colision run tp @s ~ ~.5 ~
execute unless block ~ ~ ~ #magick_reborn:ignore_colision run tp @s ~ ~.5 ~
execute unless score @s ticksCount matches 1.. if block ~ ~-.1 ~ #magick_reborn:ignore_colision run kill @s
execute unless score @s ticksCount matches 1.. unless block ~ ~ ~ #magick_reborn:ignore_colision unless block ~ ~ ~ #slabs run kill @s

execute unless score @s ticksCount matches 1.. run function magick_reborn:spell/cast/fangs/summon_fang with entity @s data

execute unless score @s ticksCount matches 1.. run tp @s ^ ^ ^1

$execute if score @s calculationValues matches $(amplifier).. run kill @s
execute unless score @s ticksCount matches 1.. run scoreboard players add @s calculationValues 1
execute unless score @s ticksCount matches 1.. run scoreboard players set @s ticksCount 5
scoreboard players remove @s ticksCount 1