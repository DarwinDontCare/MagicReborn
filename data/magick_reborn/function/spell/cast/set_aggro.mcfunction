$execute if entity @s[team=$(caster_id)] run damage @s 0 cramming by @e[nbt={UUID:$(target_uuid)},limit=1]
$data modify entity @s[team=$(caster_id)] data.target_uuid set value $(target_uuid)