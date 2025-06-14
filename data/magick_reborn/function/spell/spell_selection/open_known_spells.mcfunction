data modify storage magick:data spellList set value {}
$function magick_reborn:spell/spell_selection/prepare_spell_list {path: "storage magick $(uuid).known_spells", uuid: $(uuid), index: 0, vars: {}}

function magick_reborn:spell/spell_selection/known_spells_menu with storage magick:data spellList