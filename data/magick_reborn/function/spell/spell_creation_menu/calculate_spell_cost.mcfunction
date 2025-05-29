$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)

execute if score @s spell_amplifier matches 0 run scoreboard players set @s spell_amplifier 1
execute if score @s spell_duration matches 0 run scoreboard players set @s spell_duration 1

$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {data:{effect: "$(effect)"}, Tags:["cost_calc$(uuid)"]}

scoreboard players set @s baseCost 1
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_5] run scoreboard players set @s baseCost 5
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 10
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_20] run scoreboard players set @s baseCost 20

scoreboard players set #Calculation calculationValues 6
execute store result score @s calculationResults run scoreboard players operation @s spell_amplifier *= @s spell_duration
scoreboard players operation @s calculationResults /= #Calculation calculationValues

execute if score @s calculationResults < @s baseCost run scoreboard players operation @s calculationResults = @s baseCost

$execute store result score #Calculation calculationValues run data get storage magick $(uuid).xp_cost
$execute store result storage magick $(uuid).spell_effects[$(current_effect_slot)].experience_cost int 1 run scoreboard players get @s calculationResults

scoreboard players operation @s calculationResults += #Calculation calculationValues

$execute store result storage magick $(uuid).xp_cost int 1 run scoreboard players get @s calculationResults

$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)

execute if score @s spell_amplifier matches 0 run scoreboard players set @s spell_amplifier 1
execute if score @s spell_duration matches 0 run scoreboard players set @s spell_duration 1

# Normaliza duração
scoreboard players set #Scale spell_duration 10
scoreboard players operation @s spell_duration /= #Scale spell_duration
execute if score @s spell_duration matches ..0 run scoreboard players set @s spell_duration 1

# Calcula custo base com amplificador e duração
scoreboard players operation @s spellCost *= @s spell_amplifier
scoreboard players operation @s spellCost *= @s spell_duration

# Aplica custo base a spellCost
execute if score @s spellCost < @s baseCost run scoreboard players operation @s spellCost = @s baseCost

# Detecta redução conforme a tier da varinha
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "wood"}}}}}] run scoreboard players set @s calculationValues 0
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "stone"}}}}}] run scoreboard players set @s calculationValues 5
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "iron"}}}}}] run scoreboard players set @s calculationValues 10
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "gold"}}}}}] run scoreboard players set @s calculationValues 15
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "emerald"}}}}}] run scoreboard players set @s calculationValues 20
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "diamond"}}}}}] run scoreboard players set @s calculationValues 30
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "netherite"}}}}}] run scoreboard players set @s calculationValues 50

# spellCost = rawSpellCost * #Percent
scoreboard players operation @s spellCost *= @s calculationValues

# spellCost = spellCost / 100
scoreboard players set #Divisor calculationValues 100
scoreboard players operation @s spellCost /= #Divisor calculationValues

# Garante que nunca será 0
execute if score @s spellCost matches ..0 run scoreboard players set @s spellCost 1

$execute store result score #Calculation spellCost run data get storage magick $(uuid).magick_cost

# Armazena resultado no storage
$execute store result storage magick $(uuid).spell_effects[$(current_effect_slot)].magick_cost int 1 run scoreboard players get @s spellCost
scoreboard players operation @s spellCost += #Calculation spellCost
$execute store result storage magick $(uuid).magick_cost int 1 run scoreboard players get @s spellCost

$kill @e[tag=cost_calc$(uuid)]