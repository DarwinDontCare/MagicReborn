$data modify storage magick:data spellObject.label set from $(path).spell_name

data modify storage magick:data spellObject.effects set value []
$function magick_reborn:spell/spell_selection/parse_effects {index: 0, path: "$(path).custom_data.effects"}

$data modify storage magick:data spellObject.lore set from $(path).lore

$data modify storage magick:data spellObject.id set from $(path).id