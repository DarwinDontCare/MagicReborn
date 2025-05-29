$item replace entity Darwin_Dont_Care weapon.offhand with minecraft:carrot_on_a_stick[item_name="$(spell_name)",item_model="$(model)"\
,custom_data={cost: $(magick_cost), effects: $(spell_effects), type: "wand", enchanted: true, tier: $(tier), model: "$(model)"},\
lore=[[{"text":"Effect 1: $(effect0)","italic":false}],[{"text":"Effect 2: $(effect1)","italic":false}],[{"text":"Effect 3: $(effect2)","italic":false}],\
[{"text":"Effect 4: $(effect3)","italic":false}],[{"text":"Cost: $(magick_cost)","italic":false}]],enchantment_glint_override=true]

execute unless entity @s[gamemode=creative] run experience add @s -2 levels