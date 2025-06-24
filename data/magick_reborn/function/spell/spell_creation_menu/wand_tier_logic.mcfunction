$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 1b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 1, max_duration: 15, max_area: 1}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 2b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 2, max_duration: 30, max_area: 4}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 3b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 4, max_duration: 60, max_area: 6}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 4b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 5, max_duration: 120, max_area: 8}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 5b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 6, max_duration: 180, max_area: 10}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 6b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 8, max_duration: 240, max_area: 12}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 7b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 10, max_duration: 300, max_area: 14}

$execute store result score #Compare calculationValues run data get storage magick $(uuid).spell_creation.magick_cost
$execute store result score #Compare calculationValues2 run data get storage magick $(uuid).spell_creation.xp_cost

$execute if score #Compare calculationValues matches 1.. store result score @s calculationValues run data get storage magick $(uuid).spell_creation.spell_effects[$(current_effect_slot)].magick_cost
$execute if score #Compare calculationValues matches 1.. store result score @s calculationValues2 run data get storage magick $(uuid).spell_creation.magick_cost
$execute if score #Compare calculationValues matches 1.. store result storage magick $(uuid).spell_creation.magick_cost int 1 run scoreboard players operation @s calculationValues2 -= @s calculationValues

$execute if score #Compare calculationValues2 matches 1.. store result score @s calculationValues run data get storage magick $(uuid).spell_creation.spell_effects[$(current_effect_slot)].experience_cost
$execute if score #Compare calculationValues2 matches 1.. store result score @s calculationValues2 run data get storage magick $(uuid).spell_creation.xp_cost
$execute if score #Compare calculationValues2 matches 1.. store result storage magick $(uuid).spell_creation.xp_cost int 1 run scoreboard players operation @s calculationValues2 -= @s calculationValues

$function magick_reborn:spell/spell_creation_menu/open_unlocked_effects with storage magick $(uuid).spell_creation