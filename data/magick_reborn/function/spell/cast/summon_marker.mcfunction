$execute unless entity @e[nbt={UUID:$(summon_uuid)}] run scoreboard players remove @a[scores={uuid=$(caster_id)},limit=1] activeSummons $(proportion)
$execute unless entity @e[nbt={UUID:$(summon_uuid)}] run return run kill @s 
$tp @s @e[nbt={UUID:$(summon_uuid)},limit=1] 