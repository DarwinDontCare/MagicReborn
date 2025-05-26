$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {data:{effect: "$(effect)"}, Tags:["cost_calc"]}

execute if entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_5] run scoreboard players set @s baseCost 5
execute if entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 10
execute unless entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_5] unless entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 1

scoreboard players set #Scale spell_duration 10
scoreboard players operation @s spell_duration /= #Scale spell_duration
execute if score @s spell_duration matches ..0 run scoreboard players set @s spell_duration 1

scoreboard players operation @s baseCost *= @s spell_amplifier
scoreboard players operation @s baseCost *= @s spell_duration
scoreboard players operation @s spellCost = @s baseCost
execute store result storage magick:data spell.cost int 1 run scoreboard players get @s spellCost
execute if score @s spellCost matches ..0 run data modify storage magick:data spell.cost set value 1

$data modify storage magick:data spell merge value {amplifier: $(amplifier), duration: $(duration), effect: "$(effect)", name: "$(name)"}

execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "wood"}}}}}] run data modify storage magick:data spell.discount set value 0
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "stone"}}}}}] run data modify storage magick:data spell.discount set value 5
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "iron"}}}}}] run data modify storage magick:data spell.discount set value 10
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "gold"}}}}}] run data modify storage magick:data spell.discount set value 15
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "emerald"}}}}}] run data modify storage magick:data spell.discount set value 20
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "diamond"}}}}}] run data modify storage magick:data spell.discount set value 30
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "netherite"}}}}}] run data modify storage magick:data spell.discount set value 50

function magick_reborn:spell/give_wand with storage magick:data spell

kill @e[tag=cost_calc]