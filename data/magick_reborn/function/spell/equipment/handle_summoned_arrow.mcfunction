execute unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow", components:{"minecraft:custom_data":{summoned:true}}}]}] \
if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{summon_type:"minecraft:bow"}}}]}] \
run give @s arrow[custom_data={summoned: true},enchantment_glint_override=true, item_model="magick_reborn:summoned_arrow"]

execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{summon_type:"minecraft:bow"}}}]}] \
run function magick_reborn:spell/equipment/remove_summoned_arrow {slot: 0, limit: 35}