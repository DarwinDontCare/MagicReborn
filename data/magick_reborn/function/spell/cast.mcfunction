# Armazena os valores do item no storage
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{type: "wand"}}}}}] run data modify storage magick:data spell set from entity @s equipment.offhand.components.minecraft:custom_data
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{type: "wand"}}}}] run data modify storage magick:data spell set from entity @s SelectedItem.components.minecraft:custom_data

execute unless data storage magick:data spell.enchantments run data modify storage magick:data spell.enchantments set value {}

execute store result storage magick:data spell.caster_id int 1 run scoreboard players get @s uuid

# Executa a função apply_effect com os dados
execute as @s unless score @s wandCooldown matches 1.. run function magick_reborn:spell/check_magick with storage magick:data spell

execute store result score #Compare boolean run data get storage magick:data spell.is_burst

data remove storage magick:data spell

execute unless score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:use_wand
execute unless score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:wand_cooldown_impulse

execute if score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:wand_cooldown_burst
scoreboard players set @s wandCooldown 1