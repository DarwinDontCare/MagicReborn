particle end_rod ~ ~1 ~ .2 .2 .2 .01 5 force @a
execute if score #global summonCheckTimer matches 20.. run playsound ambient.basalt_deltas.loop ambient @a[distance=..5] ~ ~ ~ 1 1 .2

$execute if score #global summonCheckTimer matches 20.. if score @s spectralFormEffectDuration matches ..0 run function magick_reborn:spell/cast/spectral_form/remove_spectral_form {uuid: $(uuid)}
execute if score #global summonCheckTimer matches 20.. if score @s spectralFormEffectDuration matches 1.. run scoreboard players remove @s spectralFormEffectDuration 1

execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data spectralFormEffect set value {}
execute if score #global summonCheckTimer matches 20.. store result storage magick:data spectralFormEffect.value int 1 run scoreboard players get @s spectralFormEffectDuration
$execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data spectralFormEffect.bossbar set value "minecraft:spectral_form$(uuid)"

execute if score #global summonCheckTimer matches 20.. if score @s spectralFormEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data spectralFormEffect