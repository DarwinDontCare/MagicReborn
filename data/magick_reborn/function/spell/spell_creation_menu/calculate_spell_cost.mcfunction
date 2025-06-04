$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)

execute if score @s spell_amplifier matches 0 run scoreboard players set @s spell_amplifier 1
execute if score @s spell_duration matches 0 run scoreboard players set @s spell_duration 1

scoreboard players set @s spellCost 0


$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {data:{effect: "$(effect)"}, Tags:["cost_calc$(uuid)"]}

scoreboard players set @s baseCost 1
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_5] run scoreboard players set @s baseCost 5
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_10] run scoreboard players set @s baseCost 10
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_15] run scoreboard players set @s baseCost 15
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_20] run scoreboard players set @s baseCost 20
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_25] run scoreboard players set @s baseCost 25
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_30] run scoreboard players set @s baseCost 30
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_35] run scoreboard players set @s baseCost 35
$execute if entity @e[tag=cost_calc$(uuid),predicate=magick_reborn:cost_base_40] run scoreboard players set @s baseCost 40

scoreboard players set #Calculation calculationValues 80
scoreboard players set #Calculation calculationValues2 10
scoreboard players operation @s spell_amplifier *= #Calculation calculationValues
scoreboard players operation @s spell_duration *= #Calculation calculationValues2

scoreboard players operation @s spell_amplifier *= @s baseCost
scoreboard players operation @s spell_duration *= @s baseCost

scoreboard players operation @s spell_amplifier /= #Calculation calculationValues
scoreboard players operation @s spell_duration /= #Calculation calculationValues

scoreboard players operation @s spellCost += @s spell_amplifier
scoreboard players operation @s spellCost += @s spell_duration

execute if score #Calculation spellCost matches ..0 run scoreboard players set #Calculation spellCost 1

execute if score @s spellCost < @s baseCost run scoreboard players operation @s spellCost = @s baseCost

scoreboard players set #Calculation calculationValues 4
scoreboard players operation #Calculation calculationResults = @s spellCost
scoreboard players operation #Calculation calculationResults /= #Calculation calculationValues

execute if score #Calculation calculationResults matches ..4 run scoreboard players set #Calculation calculationResults 5

$execute store result score #Calculation calculationValues run data get storage magick $(uuid).xp_cost
$execute store result storage magick $(uuid).spell_effects[$(current_effect_slot)].experience_cost int 1 run scoreboard players get #Calculation calculationResults

scoreboard players operation #Calculation calculationResults += #Calculation calculationValues

$execute store result storage magick $(uuid).xp_cost int 1 run scoreboard players get #Calculation calculationResults

# Aplica custo base a spellCost
execute if score @s spellCost < @s baseCost run scoreboard players operation @s spellCost = @s baseCost

# Detecta redução conforme a tier da varinha
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "wood"}}}}}] run scoreboard players set #Calculation calculationValues 0
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "stone"}}}}}] run scoreboard players set #Calculation calculationValues 5
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "iron"}}}}}] run scoreboard players set #Calculation calculationValues 10
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "gold"}}}}}] run scoreboard players set #Calculation calculationValues 15
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "emerald"}}}}}] run scoreboard players set #Calculation calculationValues 20
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "diamond"}}}}}] run scoreboard players set #Calculation calculationValues 30
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tier: "netherite"}}}}}] run scoreboard players set #Calculation calculationValues 50

# spellCost = rawSpellCost * #Percent
scoreboard players operation @s spellCost *= #Calculation calculationValues

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