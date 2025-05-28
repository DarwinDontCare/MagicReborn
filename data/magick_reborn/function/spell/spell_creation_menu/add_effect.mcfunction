$data modify storage magick $(uuid).spell_effects[$(current_effect_slot)] merge value [{effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}]
$data modify storage magick $(uuid).effect$(current_effect_slot) set value "$(effect)"

$function magick_reborn:spell/spell_creation_menu/calculate_spell_cost {uuid: $(uuid), current_effect_slot: $(current_effect_slot), effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}

$function magick_reborn:spell/spell_creation_menu/main_spell_creation_menu with storage magick $(uuid)