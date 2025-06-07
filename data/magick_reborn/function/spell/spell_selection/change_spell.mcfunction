$data modify storage magick $(uuid).magick_cost set from storage magick $(uuid).known_spells[$(index)].custom_data.cost
$data modify storage magick $(uuid).spell_effects set from storage magick $(uuid).known_spells[$(index)].custom_data.effects
$data modify storage magick $(uuid).tier set from storage magick $(uuid).known_spells[$(index)].custom_data.tier
$data modify storage magick $(uuid).model set from storage magick $(uuid).known_spells[$(index)].custom_data.model
$data modify storage magick $(uuid).spell_name set from storage magick $(uuid).known_spells[$(index)].spell_name
$data modify storage magick $(uuid).enchantments set from storage magick $(uuid).known_spells[$(index)].enchantments
$execute unless data storage magick $(uuid).enchantments run data modify storage magick $(uuid).enchantments set value {}

$data modify storage magick $(uuid).effect0 set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[0].effect
$data modify storage magick $(uuid).effect1 set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[1].effect
$data modify storage magick $(uuid).effect2 set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[2].effect
$data modify storage magick $(uuid).effect3 set from storage magick $(uuid).known_spells[$(index)].custom_data.effects[3].effect

$function magick_reborn:spell/spell_selection/return_wand with storage magick $(uuid)