data modify storage magick:data compare_effect set value "none"

$execute unless data storage magick $(uuid).known_spells[$(index)].custom_data.effects[$(effect_index)] run return 0
$execute store success score #Compare boolean run data modify storage magick:data compare_effect set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[$(effect_index)].effect

scoreboard players add #Compare index 1

execute store result storage magick:data compare_variables.effect_index int 1 run scoreboard players get #Compare index
$data modify storage magick:data compare_variables.index set value $(index)
$data modify storage magick:data compare_variables.uuid set value $(uuid)

execute if score #Compare boolean matches 0 run return run function magick_reborn:spell/spell_selection/generate_lore with storage magick:data compare_variables

$data modify storage magick:data current_spell.tooltip append from storage magick $(uuid).known_spells[$(index)].lore[$(effect_index)][0].text
data modify storage magick:data current_spell.tooltip append value ", a: "

$data modify storage magick:data string_value set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[$(effect_index)].amplifier
function magick_reborn:spell/spell_selection/stringfy with storage magick:data

data modify storage magick:data current_spell.tooltip append from storage magick:data string_value
data modify storage magick:data current_spell.tooltip append value ", d: "

$data modify storage magick:data string_value set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[$(effect_index)].duration
function magick_reborn:spell/spell_selection/stringfy with storage magick:data

data modify storage magick:data current_spell.tooltip append from storage magick:data string_value
data modify storage magick:data current_spell.tooltip append value "\n"

function magick_reborn:spell/spell_selection/generate_lore with storage magick:data compare_variables