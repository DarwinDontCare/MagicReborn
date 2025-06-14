execute store result storage magick:data quick_spells.uuid int 1 run scoreboard players get @s uuid

execute if entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{type:"wand",enchanted:true}}}}] run function magick_reborn:spell/spell_selection/prepare_wand_data with storage magick:data quick_spells
execute if entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{type:"wand",enchanted:true}}}}] run function magick_reborn:spell/spell_selection/open_quick_spells with storage magick:data quick_spells

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1]