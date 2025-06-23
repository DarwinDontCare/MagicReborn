$data modify storage magick $(uuid).change_spell.max_damage set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:max_damage
$data modify storage magick $(uuid).change_spell.damage set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:damage
$data modify storage magick $(uuid).change_spell.repair_cost set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:repair_cost
$data modify storage magick $(uuid).change_spell.enchantments set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:enchantments
$data modify storage magick $(uuid).change_spell.custom_data set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:custom_data
$data modify storage magick $(uuid).change_spell.lore set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components."minecraft:lore"
$data modify storage magick $(uuid).change_spell.spell_name set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components."minecraft:item_name"
$data modify storage magick $(uuid).change_spell.model set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{type:"wand"}}}},distance=..2,sort=nearest,limit=1] Item.components.minecraft:custom_data.model

$execute unless data storage magick $(uuid).change_spell.enchantments run data modify storage magick $(uuid).change_spell.enchantments set value {}
$data modify storage magick $(uuid).change_spell.hand set value "mainhand"

$function magick_reborn:spell/spell_selection/return_wand with storage magick $(uuid).change_spell