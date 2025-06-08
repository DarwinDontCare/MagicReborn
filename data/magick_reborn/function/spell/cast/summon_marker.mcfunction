$execute on vehicle unless data entity @s {DeathTime:0s} run scoreboard players remove @a[scores={uuid=$(caster_id)},limit=1] activeSummons $(proportion)
execute on vehicle unless data entity @s {DeathTime:0s} run say killed
execute on vehicle unless data entity @s {DeathTime:0s} run kill @s