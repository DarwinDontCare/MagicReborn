execute if score #global summonCheckTimer matches 20.. if score @s dwarfEffectDuration matches ..0 run return run function magick_reborn:spell/cast/dwarf/remove_dwarf

execute if score #global summonCheckTimer matches 20.. if score @s dwarfEffectDuration matches 1.. run scoreboard players remove @s dwarfEffectDuration 1
execute if score #global summonCheckTimer matches 20.. store result storage magick:data dwarfEffect.value int 1 run scoreboard players get @s dwarfEffectDuration
execute if score #global summonCheckTimer matches 20.. run data modify storage magick:data dwarfEffect.bossbar set value "minecraft:m"

execute if score #global summonCheckTimer matches 20.. if score @s dwarfEffectDuration matches 1.. run function magick_reborn:data/update_bossbar with storage magick:data dwarfEffect