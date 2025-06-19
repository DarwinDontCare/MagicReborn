$scoreboard players set #LoreGenerator index $(index)

$execute unless score #LoreGenerator index matches 1.. run data modify storage magick $(uuid).lore set value []

$execute unless data storage magick $(uuid).spell_effects[$(index)] run return run data modify storage magick $(uuid).lore append value "Cost: $(magick_cost)"

$function magick_reborn:utils/get_effect_info with storage magick $(uuid).spell_effects[$(index)]

execute if score #NoneEffect boolean matches 0 run scoreboard players add #LoreGenerator index 1
$execute if score #NoneEffect boolean matches 0 run data modify storage magick:data lore_text.uuid set value $(uuid)
execute if score #NoneEffect boolean matches 0 run execute store result storage magick:data lore_text.index int 1 run scoreboard players get #LoreGenerator index
$execute if score #NoneEffect boolean matches 0 run data modify storage magick:data lore_text.magick_cost set value $(magick_cost)
execute if score #NoneEffect boolean matches 0 run return run function magick_reborn:spell/spell_creation_menu/generate_lore with storage magick:data lore_text

data modify storage magick:data lore_text.str1 set from storage magick:data spell_effect_info.display_name
data modify storage magick:data lore_text.str2 set value " (D: "
function magick_reborn:data/concatenate_string with storage magick:data lore_text
data modify storage magick:data lore_text.str1 set from storage magick:data concatenated_string
$data modify storage magick:data lore_text.str2 set from storage magick $(uuid).spell_effects[$(index)].duration
function magick_reborn:data/concatenate_string with storage magick:data lore_text

data modify storage magick:data lore_text.str1 set from storage magick:data concatenated_string
data modify storage magick:data lore_text.str2 set value ", A: "
function magick_reborn:data/concatenate_string with storage magick:data lore_text
data modify storage magick:data lore_text.str1 set from storage magick:data concatenated_string
$data modify storage magick:data lore_text.str2 set from storage magick $(uuid).spell_effects[$(index)].amplifier
function magick_reborn:data/concatenate_string with storage magick:data lore_text
data modify storage magick:data lore_text.str1 set from storage magick:data concatenated_string
data modify storage magick:data lore_text.str2 set value ")"
function magick_reborn:data/concatenate_string with storage magick:data lore_text

$data modify storage magick $(uuid).lore append from storage magick:data concatenated_string

scoreboard players add #LoreGenerator index 1

$data modify storage magick:data lore_text.uuid set value $(uuid)
execute store result storage magick:data lore_text.index int 1 run scoreboard players get #LoreGenerator index
$data modify storage magick:data lore_text.magick_cost set value $(magick_cost)

function magick_reborn:spell/spell_creation_menu/generate_lore with storage magick:data lore_text