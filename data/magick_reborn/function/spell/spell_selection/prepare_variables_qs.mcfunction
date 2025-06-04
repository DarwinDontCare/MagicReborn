data modify storage magick:data spell_selection.spells set value []

execute store result score #Compare calculationValues run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components."minecraft:custom_data".tier

$function magick_reborn:spell/spell_selection/parse_spells_for_dialog {index: 0, uuid: $(uuid)}
function magick_reborn:spell/spell_selection/quick_spells_menu with storage magick:data spell_selection