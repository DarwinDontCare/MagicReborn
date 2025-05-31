$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "wood"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 1, max_duration: 15}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "stone"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 2, max_duration: 30}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "iron"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 4, max_duration: 60}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "gold"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 5, max_duration: 120}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "emerald"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 6, max_duration: 180}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "diamond"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 8, max_duration: 240}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "netherite"}}}}}] run data modify storage magick $(uuid) merge value {max_amplifier: 10, max_duration: 300}

$execute store result score #Compare calculationValues run data get storage magick $(uuid).magick_cost
$execute store result score #Compare calculationValues2 run data get storage magick $(uuid).xp_cost

$execute if score #Compare calculationValues matches 1.. store result score @s calculationValues run data get storage magick $(uuid).spell_effects[$(current_effect_slot)].magick_cost
$execute if score #Compare calculationValues matches 1.. store result score @s calculationValues2 run data get storage magick $(uuid).magick_cost
$execute if score #Compare calculationValues matches 1.. store result storage magick $(uuid).magick_cost int 1 run scoreboard players operation @s calculationValues2 -= @s calculationValues

$execute if score #Compare calculationValues2 matches 1.. store result score @s calculationValues run data get storage magick $(uuid).spell_effects[$(current_effect_slot)].experience_cost
$execute if score #Compare calculationValues2 matches 1.. store result score @s calculationValues2 run data get storage magick $(uuid).xp_cost
$execute if score #Compare calculationValues2 matches 1.. store result storage magick $(uuid).xp_cost int 1 run scoreboard players operation @s calculationValues2 -= @s calculationValues

$function magick_reborn:spell/spell_creation_menu/spell_dialog_creation with storage magick $(uuid)