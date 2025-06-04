$data modify storage magick $(uuid) merge from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components
$data modify storage magick $(uuid).max_damage set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:max_damage
$data modify storage magick $(uuid).damage set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:damage
$data modify storage magick $(uuid).repair_cost set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:repair_cost
$data modify storage magick $(uuid).enchantments set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:enchantments
$execute unless data storage magick $(uuid).enchantments run data modify storage magick $(uuid).enchantments set value {}
$data modify storage magick $(uuid).hand set value "mainhand"

$function magick_reborn:spell/spell_selection/return_wand with storage magick $(uuid)