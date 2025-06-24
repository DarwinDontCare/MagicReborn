$scoreboard players set @s calculationResults $(xp_cost)

$execute unless score @s currentLevel >= @s calculationResults unless entity @s[gamemode=creative] \
run return run function magick_reborn:spell/not_enought_xp with storage magick $(uuid).spell_creation

$data modify storage magick $(uuid).spell_creation.spell_name set value "$(name)"

$execute if score @s currentLevel >= @s calculationResults \
run return run function magick_reborn:spell/spell_creation_menu/create_spell with storage magick $(uuid).spell_creation

$function magick_reborn:spell/spell_creation_menu/create_spell with storage magick $(uuid).spell_creation