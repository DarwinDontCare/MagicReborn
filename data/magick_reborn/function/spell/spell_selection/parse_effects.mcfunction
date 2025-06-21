$scoreboard players set #ParseEffects index $(index)

$execute unless data $(path)[$(index)] run return 1

data modify storage magick:data spellObject.effects append value {type: "plain_message", contents: {}}
$data modify storage magick:data spellObject.effects[-1].contents.text set from $(path)[$(index)].effect

data modify storage magick:data spellObject.effects[-1].contents.hover_event.action set value "show_text"

data modify storage magick:data concatenated_string set value ""

data modify storage magick:data effect_text.str1 set value "Amplifier: "
$data modify storage magick:data effect_text.str2 set from $(path)[$(index)].amplifer
function magick_reborn:data/concatenate_string with storage magick:data effect_text
data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string

data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
data modify storage magick:data effect_text.str2 set value "\nDuration: "
function magick_reborn:data/concatenate_string with storage magick:data effect_text
data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
$data modify storage magick:data effect_text.str2 set from $(path)[$(index)].duration
function magick_reborn:data/concatenate_string with storage magick:data effect_text

data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
data modify storage magick:data effect_text.str2 set value "\nArea: "
function magick_reborn:data/concatenate_string with storage magick:data effect_text
data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
$data modify storage magick:data effect_text.str2 set from $(path)[$(index)].area
function magick_reborn:data/concatenate_string with storage magick:data effect_text

data modify storage magick:data spellObject.effects[-1].contents.hover_event.value append from storage magick:data concatenated_string 

scoreboard players add #ParseEffects index 1

execute store result storage magick:data parseEffects.index int 1 run scoreboard players get #ParseEffects index
$data modify storage magick:data parseEffects.path set value "$(path)"

function magick_reborn:spell/spell_selection/parse_effects with storage magick:data parseEffects