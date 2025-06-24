$data modify storage magick $(uuid).spell_creation.spell_effects[$(current_effect_slot)] merge value {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), area: $(area)}
$function magick_reborn:utils/get_effect_info {effect: "$(effect)"}
$data modify storage magick $(uuid).spell_creation.effect$(current_effect_slot) set from storage magick:data spell_effect_info.display_name
$data modify storage magick $(uuid).spell_creation.tooltip$(current_effect_slot) set value "$(tooltip)"

$function magick_reborn:spell/spell_creation_menu/calculate_spell_cost {uuid: $(uuid), index: 0}

$function magick_reborn:spell/spell_creation_menu/main_spell_creation_menu with storage magick $(uuid).spell_creation