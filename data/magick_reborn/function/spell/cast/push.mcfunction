$execute rotated as @a[scores={uuid=$(uuid)},limit=1] positioned 0.0 0.0 0.0 align xyz positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Tags:["knockback_direction"]}
$execute rotated as @a[scores={uuid=$(uuid)},limit=1] positioned ^ ^ ^-.2 run summon wind_charge ~ ~ ~ {Tags:["knockback_provider"],LeftOwner:true,HasBeenShot:true}
data modify entity @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] Motion set from entity @e[type=area_effect_cloud,tag=knockback_direction,limit=1] Pos
kill @e[type=area_effect_cloud,tag=knockback_direction,limit=1]