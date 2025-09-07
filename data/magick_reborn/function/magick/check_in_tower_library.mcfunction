execute positioned ~-8.5 ~-2 ~-8.5 if entity @a[dx=17,dy=4,dz=17,tag=!in_tower_library,gamemode=survival] unless score @s calculationResults matches 1.. positioned as @s run function magick_reborn:magick/summon_tower_library_guardians
execute positioned ~-8.5 ~-2 ~-8.5 if entity @a[dx=17,dy=4,dz=17,tag=!in_tower_library,gamemode=adventure] unless score @s calculationResults matches 1.. positioned as @s run function magick_reborn:magick/summon_tower_library_guardians

execute positioned ~-8.5 ~-2 ~-8.5 as @a[dx=17,dy=4,dz=17,tag=!in_tower_library,gamemode=survival] run tag @s add in_tower_library
execute positioned ~-8.5 ~-2 ~-8.5 as @a[dx=17,dy=4,dz=17,tag=!in_tower_library,gamemode=adventure] run tag @s add in_tower_library

execute positioned ~-8.5 ~-2 ~-8.5 as @a[tag=in_tower_library] unless entity @s[dx=17,dy=4,dz=17] run tag @s remove in_tower_library

execute if score @s calculationResults matches 1.. run scoreboard players remove @s calculationResults 1
