execute store result storage magick:data spell_selection.uuid int 1 run scoreboard players get @s uuid
execute if entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{type:"wand",enchanted:true}}}}] run function magick_reborn:spell/spell_selection/prepare_wand_data with storage magick:data spell_selection

execute if entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{type:"wand",enchanted:true}}}}] run function magick_reborn:spell/spell_selection/prepare_variables_qs with storage magick:data spell_selection
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1]