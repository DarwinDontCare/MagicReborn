execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:flames"}]}} run data modify storage magick:data magick_circle.rotation set from entity @s Rotation
execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:frostbite"}]}} run data modify storage magick:data magick_circle.rotation set from entity @s Rotation
execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:teleknesis"}]}} run data modify storage magick:data magick_circle.rotation set from entity @s Rotation

execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:flames"}]}} run data modify storage magick:data magick_circle.scale set value 1.5
execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:frostbite"}]}} run data modify storage magick:data magick_circle.scale set value 1.5
execute if data storage magick:data {magick_circle: {effects: [{effect: "minecraft:teleknesis"}]}} run data modify storage magick:data magick_circle.scale set value 1.5

$execute if score #IterateEffects index matches 0 at @s $(position) run function magick_reborn:magick/magick_circle/summon_magick_circle with storage magick:data magick_circle