tag @s remove tk_bind
$tag @s remove tk_$(uuid)

scoreboard players reset @s tkBind

ride @s dismount
$execute rotated as @a[scores={uuid=$(uuid)},limit=1] at @s anchored eyes positioned ^-.2 ^-.3 ^ run function magick_reborn:spell/cast/push {uuid: $(uuid)}