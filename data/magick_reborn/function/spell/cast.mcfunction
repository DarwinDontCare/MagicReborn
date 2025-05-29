# Armazena os valores do item no storage
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{type: "wand"}}}}] run data modify storage magick:data spell set from entity @s SelectedItem.components.minecraft:custom_data
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{type: "wand"}}}}}] run data modify storage magick:data spell set from entity @s equipment.offhand.components.minecraft:custom_data
execute store result storage magick:data spell.caster_id int 1 run scoreboard players get @s uuid

# Executa a função apply_effect com os dados
execute as @s run function magick_reborn:spell/check_magick with storage magick:data spell

data remove storage magick:data spell

# Reseta o rightClick
scoreboard players reset @s rightClick
