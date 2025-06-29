$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 1b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 1, max_duration: 15, max_area: 1}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 2b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 2, max_duration: 30, max_area: 4}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 3b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 4, max_duration: 60, max_area: 6}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 4b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 5, max_duration: 120, max_area: 8}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 5b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 6, max_duration: 180, max_area: 10}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 6b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 8, max_duration: 240, max_area: 12}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 7b}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 10, max_duration: 300, max_area: 14}

$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 1}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 1, max_duration: 15, max_area: 1}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 2}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 2, max_duration: 30, max_area: 4}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 3}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 4, max_duration: 60, max_area: 6}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 4}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 5, max_duration: 120, max_area: 8}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 5}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 6, max_duration: 180, max_area: 10}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 6}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 8, max_duration: 240, max_area: 12}
$execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: 7}}}}}] run data modify storage magick $(uuid).spell_creation merge value {max_amplifier: 10, max_duration: 300, max_area: 14}

$function magick_reborn:spell/spell_creation_menu/open_unlocked_effects with storage magick $(uuid).spell_creation