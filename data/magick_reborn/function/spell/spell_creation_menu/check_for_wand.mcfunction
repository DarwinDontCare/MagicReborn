execute unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {type: "wand"}}}}}] \
run tell @s i need to hold the wand in my left hand to create spells.

execute if entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {type: "wand"}}}}}] \
run function magick_reborn:spell/spell_creation_menu/data_organizer with storage magick:data