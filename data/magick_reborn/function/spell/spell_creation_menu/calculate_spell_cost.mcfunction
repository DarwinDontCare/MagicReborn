$scoreboard players set #SpellCost index $(index)
$execute if score #SpellCost index matches 0 run data modify storage magick $(uuid).spell_creation.magick_cost set value 0
$execute if score #SpellCost index matches 0 run data modify storage magick $(uuid).spell_creation.xp_cost set value 0
$execute unless data storage magick $(uuid).spell_creation.spell_effects[$(index)] run return 1

data modify storage magick:data effectCost set value {}
$data modify storage magick:data effectCost merge from storage magick $(uuid).spell_creation.spell_effects[$(index)]
$data modify storage magick:data effectCost.uuid set value $(uuid)
$data modify storage magick:data effectCost.current_effect_slot set value $(index)

function magick_reborn:spell/spell_creation_menu/calculate_effect_cost with storage magick:data effectCost

scoreboard players add #SpellCost index 1

$data modify storage magick:data calculateSpellCost.uuid set value $(uuid)
execute store result storage magick:data calculateSpellCost.index int 1 run scoreboard players get #SpellCost index

function magick_reborn:spell/spell_creation_menu/calculate_spell_cost with storage magick:data calculateSpellCost