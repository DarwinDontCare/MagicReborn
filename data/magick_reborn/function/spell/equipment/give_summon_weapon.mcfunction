data modify storage magick:data effectComparer set value "minecraft:bow"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(tool)"

$execute if score #Compare boolean matches 0 unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{summon_type: "$(tool)"}}}]}] run give @s $(tool)[enchantment_glint_override=true,item_model="$(model)",enchantments={binding_curse:1,vanishing_curse:1,unbreaking:5,infinity:1},custom_data={summoned:true, summon_type: "$(tool)"},max_damage=$(duration),attribute_modifiers=[{type:attack_damage,amount:$(amplifier),operation:add_value,id:"1748357971244"}]]

$execute unless score #Compare boolean matches 0 unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{summon_type: "$(tool)"}}}]}] run give @s $(tool)[enchantment_glint_override=true,item_model="$(model)",enchantments={binding_curse:1,vanishing_curse:1,unbreaking:5},custom_data={summoned:true, summon_type: "$(tool)"},max_damage=$(duration),attribute_modifiers=[{type:attack_damage,amount:$(amplifier),operation:add_value,id:"1748357971244"}]]

scoreboard players reset #Compare boolean
execute at @s run particle minecraft:dust{color:[0.6,0.1,0.8],scale:1} ~ ~1 ~ .2 .2 .2 0 50 force