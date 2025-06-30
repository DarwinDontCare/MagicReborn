$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=true}] run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:end_portal"
$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=true}] run data modify entity @s data.position merge value {exit_pos_x: "6", exit_pos_y: "50", exit_pos_z: "0"}
$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=true}] run return run data modify entity @s data.dimension set value "minecraft:the_end"

$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=false}] run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:overworld_portal"
$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=false}] run data modify entity @s data.position merge value {exit_pos_x: "~", exit_pos_y: "~", exit_pos_z: "~"}
$execute if data entity @s {data:{dimension:"minecraft:the_nether"}} if entity @a[scores={uuid=$(uuid)},advancements={story/enter_the_end=false}] run return run data modify entity @s data.dimension set value "minecraft:overworld"

execute if data entity @s {data:{dimension:"minecraft:the_end"}} run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:overworld_portal"
execute if data entity @s {data:{dimension:"minecraft:the_end"}} run data modify entity @s data merge value {exit_pos_x: "~", exit_pos_y: "~", exit_pos_z: "~"}
execute if data entity @s {data:{dimension:"minecraft:the_end"}} run return run data modify entity @s data.dimension set value "minecraft:overworld"

execute if data entity @s {data:{dimension:"minecraft:overworld"}} run data modify entity @s item.components."minecraft:item_model" set value "magick_reborn:portal"
execute if data entity @s {data:{dimension:"minecraft:overworld"}} run data modify entity @s data.position merge value {exit_pos_x: "~", exit_pos_y: "~", exit_pos_z: "~"}
execute if data entity @s {data:{dimension:"minecraft:overworld"}} run return run data modify entity @s data.dimension set value "minecraft:the_nether"