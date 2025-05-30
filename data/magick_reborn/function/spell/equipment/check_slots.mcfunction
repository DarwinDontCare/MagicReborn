$scoreboard players set #Compare index $(slot)

$execute as @s[nbt={Inventory:[{Slot:$(slot)b, components:{"minecraft:custom_data":{summoned:true}}}]}] run item modify entity @s container.$(slot) magick_reborn:damage_item

$execute store result score @s calculationValues run data get entity @s Inventory[$(slot)].components."minecraft:damage"
$execute store result score @s calculationValues2 run data get entity @s Inventory[$(slot)].components."minecraft:max_damage"

$execute as @s[nbt={Inventory:[{Slot:$(slot)b,components:{"minecraft:custom_data":{summoned:true}}}]}] if score @s calculationValues = @s calculationValues2 run item replace entity @s container.$(slot) with air

$execute if score #Compare index matches $(limit).. run return run scoreboard players reset #Compare index
scoreboard players add #Compare index 1
execute store result storage magick:data slotCheck.slot int 1 run scoreboard players get #Compare index
$data modify storage magick:data slotCheck merge value {limit: $(limit)}

function magick_reborn:spell/equipment/check_slots with storage magick:data slotCheck
