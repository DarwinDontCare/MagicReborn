$data modify storage magick $(uuid).spell_effects[$(current_effect_slot)] merge value {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}
$function magick_reborn:utils/get_effect_info {effect: "$(effect)"}
$data modify storage magick $(uuid).effect$(current_effect_slot) set from storage magick:data spell_effect_info.display_name

$function magick_reborn:spell/spell_creation_menu/calculate_spell_cost {uuid: $(uuid), current_effect_slot: $(current_effect_slot), effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}

$function magick_reborn:spell/spell_creation_menu/main_spell_creation_menu with storage magick $(uuid)