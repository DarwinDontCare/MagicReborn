data modify storage magick:data spellObject set value {}
$function magick_reborn:spell/spell_selection/prepare_spell_object {path: "storage magick $(uuid).known_spells[$(knonw_spells_index)]"}

$data modify storage magick $(uuid).quick_spells[$(index)].spell_name set from storage magick:data spellObject.label
$data modify storage magick $(uuid).quick_spells[$(index)].custom_data set from storage magick:data spellObject.custom_data
$data modify storage magick $(uuid).quick_spells[$(index)].lore set from storage magick:data spellObject.lore
$data modify storage magick $(uuid).quick_spells[$(index)].id set from storage magick:data spellObject.id

$function magick_reborn:spell/spell_selection/open_known_spells {uuid: $(uuid)}