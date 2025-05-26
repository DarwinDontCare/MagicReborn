$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {data:{effect: "$(effect)"}, Tags:["cost_calc"]}

execute if entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_5] run scoreboard players set @s baseCost 5
execute if entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 10
execute unless entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_5] unless entity @e[tag=cost_calc,predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 1

# Normaliza duração
scoreboard players set #Scale spell_duration 10
scoreboard players operation @s spell_duration /= #Scale spell_duration
execute if score @s spell_duration matches ..0 run scoreboard players set @s spell_duration 1

# Calcula custo base com amplificador e duração
scoreboard players operation @s baseCost *= @s spell_amplifier
scoreboard players operation @s baseCost *= @s spell_duration

# Aplica custo base a spellCost
scoreboard players operation @s spellCost = @s baseCost

# Detecta redução conforme a tier da varinha
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "wood"}}}}}] run scoreboard players set @s calculationValues 0
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "stone"}}}}}] run scoreboard players set @s calculationValues 5
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "iron"}}}}}] run scoreboard players set @s calculationValues 10
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "gold"}}}}}] run scoreboard players set @s calculationValues 15
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "emerald"}}}}}] run scoreboard players set @s calculationValues 20
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "diamond"}}}}}] run scoreboard players set @s calculationValues 30
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "netherite"}}}}}] run scoreboard players set @s calculationValues 50

# Aplica redução: spellCost = spellCost * (100 - calculationValues) / 100
scoreboard players set #Percent calculationValues 100
scoreboard players operation #Percent calculationValues -= @s calculationValues

# spellCost = rawSpellCost * #Percent
scoreboard players operation @s spellCost *= #Percent calculationValues

# spellCost = spellCost / 100
scoreboard players set #Divisor calculationValues 100
scoreboard players operation @s spellCost /= #Divisor calculationValues

# Garante que nunca será 0
execute if score @s spellCost matches ..0 run scoreboard players set @s spellCost 1

# Armazena resultado no storage
execute store result storage magick:data spell.cost int 1 run scoreboard players get @s spellCost

# Mescla spell com parâmetros
$data modify storage magick:data spell merge value {amplifier: $(amplifier), duration: $(duration), effect: "$(effect)", name: "$(name)"}
data modify storage magick:data spell merge from entity @s equipment.offhand.components."minecraft:custom_data"


function magick_reborn:spell/give_wand with storage magick:data spell

kill @e[tag=cost_calc]