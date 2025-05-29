$scoreboard players set @s calculationResults $(xp_cost)

execute if score @s currentLevel < @s calculationResults unless entity @s[gamemode=creative] \
run function magick_reborn:spell/not_enought_xp with storage magick:data spell

$data modify storage magick $(uuid).spell_name set value "$(name)"

$execute if score @s currentLevel >= @s calculationResults \
unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {enchanted: true}}}}}] \
run function magick_reborn:spell/spell_creation_menu/create_spell with storage magick $(uuid)

$execute unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {enchanted: true}}}}}] \
run function magick_reborn:spell/spell_creation_menu/create_spell with storage magick $(uuid)