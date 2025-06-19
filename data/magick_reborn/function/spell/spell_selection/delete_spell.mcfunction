$function magick_reborn:spell/spell_selection/remove_known_spell {uuid: $(uuid), id: $(id), index: 0}
$function magick_reborn:spell/spell_selection/remove_quick_spell {uuid: $(uuid), id: $(id), index: 0}

data remove storage magick:data deleteSpell
data remove storage magick:data deleteQuickSpell

$function magick_reborn:spell/spell_selection/open_known_spells {uuid: $(uuid)}