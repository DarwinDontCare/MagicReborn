$scoreboard players set #Iterator index $(index)
$execute store result score #Compare calculationValues2 run data get storage magick $(uuid).$(location)[$(index)].custom_data.tier

scoreboard players add #Iterator index 1
execute store result storage magick:data quick_spells.index int 1 run scoreboard players get #Iterator index
$data modify storage magick:data quick_spells.uuid set value $(uuid)

execute if score #Compare calculationResults < #Compare calculationValues2 run return run function magick_reborn:spell/spell_selection/parse_spells_for_dialog with storage magick:data quick_spells

$execute unless data storage magick $(uuid).$(location)[$(index)] run return 1

$data modify storage magick:data current_spell.id set value "$(index)"

data modify storage magick:data current_spell.label set value ""
$data modify storage magick:data current_spell.label set from storage magick $(uuid).$(location)[$(index)].spell_name

data modify storage magick:data current_spell.initial set value false

data modify storage magick:data spell_selection.var set value "$(text)"
$data modify storage magick:data spell_selection.index set value $(index)

function magick_reborn:spell/spell_selection/generate_template with storage magick:data spell_selection

data modify storage magick:data current_spell.action.type set value "dynamic/run_command"

data modify storage magick:data current_spell.tooltip set value []
$function magick_reborn:spell/spell_selection/generate_lore {uuid: $(uuid), index: $(index), effect_index: 0}
$data modify storage magick:data current_spell.tooltip append from storage magick $(uuid).$(location)[$(index)].lore[4][0].text

data modify storage magick:data spell_selection.spells append from storage magick:data current_spell

function magick_reborn:spell/spell_selection/parse_spells_for_dialog with storage magick:data quick_spells