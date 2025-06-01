data modify storage magick:data unlock_effects set from entity @s SelectedItem.components."minecraft:custom_data".effects[0]
$data modify storage magick:data unlock_effects merge value {index: 0, limit: 1, uuid: $(uuid)}
function magick_reborn:magick/loop_spell_book_effects with storage magick:data unlock_effects

scoreboard players reset @s index

scoreboard players reset #Compare boolean