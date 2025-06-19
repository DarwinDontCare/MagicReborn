scoreboard players add @s createdSpells 1

$data modify storage magick $(uuid) merge from entity @s equipment.offhand.components."minecraft:custom_data"
$data modify storage magick $(uuid).max_damage set from entity @s equipment.offhand.components.minecraft:max_damage
$data modify storage magick $(uuid).damage set from entity @s equipment.offhand.components.minecraft:damage
$data modify storage magick $(uuid).repair_cost set from entity @s equipment.offhand.components.minecraft:repair_cost
$data modify storage magick $(uuid).enchantments set from entity @s equipment.offhand.components.minecraft:enchantments
$execute store result storage magick $(uuid).spell_id int 1 run scoreboard players get @s createdSpells
$execute unless data storage magick $(uuid).enchantments run data modify storage magick $(uuid).enchantments set value {}

$function magick_reborn:utils/get_effect_info with storage magick $(uuid).spell_effects[0]
$data modify storage magick $(uuid) merge from storage magick:data spell_effect_info

$function magick_reborn:spell/spell_creation_menu/generate_lore {index: 0, magick_cost: $(magick_cost), uuid: $(uuid)}

$function magick_reborn:spell/spell_creation_menu/give_wand with storage magick $(uuid)