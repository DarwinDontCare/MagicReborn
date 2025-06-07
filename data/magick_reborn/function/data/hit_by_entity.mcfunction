execute on attacker run data modify storage magick:data summon_aggro.target_uuid set from entity @s UUID
execute store result storage magick:data summon_aggro.caster_id int 1 run scoreboard players get @s uuid

execute as @e[tag=summoned] run function magick_reborn:spell/cast/set_aggro with storage magick:data summon_aggro

advancement revoke @a[distance=..1,limit=1] only magick_reborn:hit_by_entity