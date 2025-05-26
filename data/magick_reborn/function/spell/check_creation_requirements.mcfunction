$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)
scoreboard players set #Calculation calculationValues 6
execute store result score @s calculationResults run scoreboard players operation @s spell_amplifier *= @s spell_duration
scoreboard players operation @s calculationResults /= #Calculation calculationValues
execute store result storage magick:data spell.experience_cost int 1 run scoreboard players get @s calculationResults

execute if score @s currentLevel < #Calculation calculationResults if entity @s[gamemode=!creative] \
run function magick_reborn:spell/not_enought_xp with storage magick:data spell
$execute if entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {type: "wand"}}}}}] if \
score @s currentLevel < #Calculation calculationResults \
unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {enchanted: true}}}}}]\
run function magick_reborn:spell/create {name:"$(name)", duration:$(duration), amplifier:$(amplifier), effect:"$(effect)"}

$execute if entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {type: "wand"}}}}},gamemode=creative]\
unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {enchanted: true}}}}}]\
run function magick_reborn:spell/create {name:"$(name)", duration:$(duration), amplifier:$(amplifier), effect:"$(effect)"}

execute unless entity @s[nbt={equipment: {offhand: {components: {"minecraft:custom_data": {type: "wand"}}}}}] \
run tell @s i need to hold the wand in my left hand to create spells.