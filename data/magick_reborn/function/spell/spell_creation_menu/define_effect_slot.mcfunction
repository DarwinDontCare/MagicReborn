$data modify storage magick $(uuid).spell_creation.current_effect_slot set value $(current_effect_slot)
$data modify storage magick $(uuid).spell_creation.spell_name set value "$(name)"

$function magick_reborn:spell/spell_creation_menu/wand_tier_logic with storage magick $(uuid).spell_creation