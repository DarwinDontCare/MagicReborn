$scoreboard players set #ParseEffects index $(index)
scoreboard players set #ParseEffects boolean 0

$execute unless data storage magick $(uuid).unlocked_effects[$(index)] run return 1

execute if score #ParseEffects index matches 0 run data modify storage magick:data spell_creation.effect_selection.unlocked_effects set value []
data modify storage magick:data spell_creation.effect_selection.unlocked_effects append value {action: {type: "minecraft:dynamic/run_command", template: ""}}

$data modify storage magick:data effectInfo.effect set from storage magick $(uuid).unlocked_effects[$(index)].id
function magick_reborn:utils/get_effect_info with storage magick:data effectInfo

data modify storage magick:data spell_creation.effect_selection.unlocked_effects[-1].label set from storage magick:data spell_effect_info.display_name
data modify storage magick:data spell_creation.effect_selection.unlocked_effects[-1].tooltip set from storage magick:data spell_effect_info.description

$data modify storage magick:data spell_creation.effect_selection.macroVars set value {uuid: $(uuid), current_effect_slot: $(current_effect_slot), max_amplifier: $(max_amplifier), max_duration: $(max_duration), max_area: $(max_area)}

data modify storage magick:data stringfy.string_value set from storage magick:data spell_creation.effect_selection.macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_creation_menu/open_effect_settings"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: '$(text)'"

data modify storage magick:data effect_text.str1 set from storage magick:data macroGenerator.var
data modify storage magick:data effect_text.str2 set value ", effect: '"
function magick_reborn:data/concatenate_string with storage magick:data effect_text
data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
$data modify storage magick:data effect_text.str2 set from storage magick $(uuid).unlocked_effects[$(index)].id
function magick_reborn:data/concatenate_string with storage magick:data effect_text
data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
data modify storage magick:data effect_text.str2 set value "'"
function magick_reborn:data/concatenate_string with storage magick:data effect_text

data modify storage magick:data macroGenerator.var set from storage magick:data concatenated_string

function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spell_creation.effect_selection.unlocked_effects[-1].action.template set from storage magick:data macroGenerator.template

scoreboard players add #ParseEffects index 1

execute store result storage magick:data prepare_unlocked_effects.index int 1 run scoreboard players get #ParseEffects index
$data modify storage magick:data prepare_unlocked_effects.max_amplifier set value $(max_amplifier)
$data modify storage magick:data prepare_unlocked_effects.max_duration set value $(max_duration)
$data modify storage magick:data prepare_unlocked_effects.max_area set value $(max_area)
$data modify storage magick:data prepare_unlocked_effects.uuid set value $(uuid)
$data modify storage magick:data prepare_unlocked_effects.current_effect_slot set value $(current_effect_slot)

function magick_reborn:spell/spell_creation_menu/prepare_unlocked_effects with storage magick:data prepare_unlocked_effects
