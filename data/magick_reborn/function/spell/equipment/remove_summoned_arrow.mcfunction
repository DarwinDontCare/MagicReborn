$scoreboard players set #Compare index $(slot)

$execute if entity @s[nbt={Inventory:[{Slot:$(slot)b, id:"minecraft:arrow", components:{"minecraft:custom_data":{summoned:true}}}]}] run item replace entity @s container.$(slot) with air

$execute if score #Compare index matches $(limit).. run return run scoreboard players reset #Compare index
scoreboard players add #Compare index 1
execute store result storage magick:data slotCheck.slot int 1 run scoreboard players get #Compare index
$data modify storage magick:data slotCheck merge value {limit: $(limit)}

function magick_reborn:spell/equipment/remove_summoned_arrow with storage magick:data slotCheck