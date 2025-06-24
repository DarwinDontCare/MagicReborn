execute store result score #Compare calculationValues run data get entity @s SelectedItem.components."minecraft:custom_data".tier
$execute store result score #Compare calculationValues2 run data get storage magick $(uuid).quick_spells[$(index)].custom_data.tier

execute if score #Compare calculationValues < #Compare calculationValues2 run return run say "This spell is too powerful for my wand :("

$data modify storage magick $(uuid).change_spell.custom_data set from storage magick $(uuid).quick_spells[$(index)].custom_data
$data modify storage magick $(uuid).change_spell.model set from storage magick $(uuid).quick_spells[$(index)].custom_data.model
$data modify storage magick $(uuid).change_spell.spell_name set from storage magick $(uuid).quick_spells[$(index)].spell_name
$data modify storage magick $(uuid).change_spell.lore set from storage magick $(uuid).quick_spells[$(index)].lore
$data modify storage magick $(uuid).change_spell.enchantments set from storage magick $(uuid).quick_spells[$(index)].enchantments

$execute unless data storage magick $(uuid).change_spell.enchantments run data modify storage magick $(uuid).change_spell.enchantments set value {}

$function magick_reborn:spell/spell_selection/return_wand with storage magick $(uuid).change_spell