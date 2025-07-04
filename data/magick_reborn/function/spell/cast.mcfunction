# Armazena os valores do item no storage
data modify storage magick:data spell set value {}

execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{type: "wand"}}}}}] run data modify storage magick:data spell merge from entity @s equipment.offhand.components.minecraft:custom_data
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{type: "wand"}}}}] run data modify storage magick:data spell merge from entity @s SelectedItem.components.minecraft:custom_data

function magick_reborn:utils/get_effect_info with storage magick:data spell.effects[0]
data modify storage magick:data spell merge from storage magick:data spell_effect_info

execute unless data storage magick:data spell.enchantments run data modify storage magick:data spell.enchantments set value {}

execute store result storage magick:data spell.caster_id int 1 run scoreboard players get @s uuid

data modify storage magick:data spell.speed set value 0.001
data modify storage magick:data spell.health set value 200
data modify storage magick:data spell.is_burst set value 0

# Executa a função apply_effect com os dados
execute as @s unless score @s wandCooldown matches 1.. run function magick_reborn:spell/check_magick with storage magick:data spell

execute store result score #Compare boolean run data get storage magick:data spell.is_burst

#data remove storage magick:data spell

execute unless score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:use_wand
execute unless score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:wand_cooldown_impulse

execute unless entity @e[tag=tk_bind] run kill @e[tag=tk_target,type=armor_stand]

execute if score #Compare boolean matches 1 run advancement revoke @s only magick_reborn:wand_cooldown_burst
execute unless score #Compare boolean matches 1 run scoreboard players set @s wandCooldown 10
execute if score #Compare boolean matches 1 run scoreboard players set @s wandCooldown 1
execute if score #Compare boolean matches 1 unless score @s magickDrainTick matches 1.. run scoreboard players set @s magickDrainTick 22