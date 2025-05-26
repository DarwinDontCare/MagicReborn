$item replace entity Darwin_Dont_Care weapon.offhand with minecraft:carrot_on_a_stick[item_name="$(name)",item_model="$(model)"\
,custom_data={amplifier: $(amplifier), duration: $(duration), cost: $(cost), effect: "$(effect)", type: "wand", enchanted: true, tier: $(tier), model: "$(model)"},\
lore=[[{"text":"Power: $(amplifier)","italic":false}],[{"text":"Duration: $(duration)","italic":false}]\
,[{"text":"Effect: $(effect)","italic":false}],[{"text":"Cost: $(cost)","italic":false}]],enchantment_glint_override=true]

execute unless entity @s[gamemode=creative] run experience add @s -2 levels