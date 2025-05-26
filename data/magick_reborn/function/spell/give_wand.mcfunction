$item replace entity Darwin_Dont_Care weapon.offhand with minecraft:carrot_on_a_stick[item_name="$(name)",\
item_model="magick_reborn:wand",use_cooldown={seconds:1}\
,custom_data={amplifier: $(amplifier), duration: $(duration), cost: $(cost), effect: "$(effect)", type: "wand", enchanted: true},\
lore=[[{"text":"Power: $(amplifier)","italic":false}],[{"text":"Duration: $(duration)","italic":false}]\
,[{"text":"Effect: $(effect)","italic":false}],[{"text":"Cost: $(cost)","italic":false}]],enchantment_glint_override=true]

$execute unless entity @s[gamemode=creative] run experience add @s -$(experience_cost)