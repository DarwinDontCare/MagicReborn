$scoreboard players set #ParseEffects index $(index)

$execute unless data $(path)[$(index)] run return 1

data modify storage magick:data spellObject.effects prepend value {type: "plain_message", contents: {}}
$data modify storage magick:data spellObject.effects[-1].contents.text set from $(path)[$(index)].effect

data modify storage magick:data spellObject.effects[-1].contents.hover_event.action set value "show_text"
data modify storage magick:data spellObject.effects[-1].contents.hover_event.values set value []

data modify storage magick:data spellObject.effects[-1].contents.hover_event.values append value "Amplifier: "
$data modify storage magick:data spellObject.effects[-1].contents.hover_event.values append from $(path)[$(index)].amplifer
data modify storage magick:data spellObject.effects[-1].contents.hover_event.values append value "\n"

data modify storage magick:data spellObject.effects[-1].contents.hover_event.values append value "Duration: "
$data modify storage magick:data spellObject.effects[-1].contents.hover_event.values append from $(path)[$(index)].duration

scoreboard players add #ParseEffects index 1

execute store result storage magick:data parseEffects.index int 1 run scoreboard players get #ParseEffects index
$data modify storage magick:data parseEffects.path set value $(value)

function magick_reborn:spell/spell_selection/parse_effects with storage magick:data parseEffects