# Armazena os valores do item no storage
data modify storage magick:data spell set from entity @s SelectedItem.components.minecraft:custom_data

# Armazena o UUID do caster em spell.caster_id
data modify storage magick:data spell.caster_id set from entity @s UUID

# Executa a função apply_effect com os dados
execute as @s run function magick_reborn:spell/apply_effect with storage magick:data spell

# Reseta o rightClick
scoreboard players reset @s rightClick
