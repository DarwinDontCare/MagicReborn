function magick_reborn:spell/cast/shield/remove_shield with entity @s

$execute if entity @s[type=player] run data modify storage magick:data createBossbar set value {name: "Shield Effect", id: "minecraft:shield", target: "@s", max_value: $(duration), value: $(duration)}
execute if entity @s[type=player] run function magick_reborn:data/stringify_uuid
execute if entity @s[type=player] run data modify storage magick:data createBossbar.target_uuid set from storage magick:data uuid_string

execute if entity @s[type=player] run function magick_reborn:data/create_bossbar with storage magick:data createBossbar

playsound item.shield.block ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle dust{color:[66, 203, 245],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 20 force

$scoreboard players set @s shieldEffectDuration $(duration)
$scoreboard players set @s calculationValues $(amplifier)
data modify storage magick:data shieldEffect set value {}
execute store result storage magick:data shieldEffect.value int 1 run scoreboard players get @s shieldEffectDuration
execute if score #global summonCheckTimer matches 20.. run function magick_reborn:data/stringify_uuid

execute run data modify storage magick:data bossbarId set value {}
execute run data modify storage magick:data bossbarId.str1 set value "minecraft:shield"
execute run data modify storage magick:data bossbarId.str2 set string storage magick:data uuid_string
execute run function magick_reborn:data/concatenate_string with storage magick:data bossbarId

$execute if entity @s[type=player] run data modify storage magick $(uuid).shield.amplifier set value $(amplifier)
$execute if entity @s[type=player] store result storage magick $(uuid).shield.knockback_resistance double 0.1 run scoreboard players get @s calculationValues
$execute if entity @s[type=player] store result storage magick $(uuid).shield.armor double 2 run scoreboard players get @s calculationValues
$execute if entity @s[type=player] store result storage magick $(uuid).shield.armor_toughness double 1.5 run scoreboard players get @s calculationValues

$execute unless entity @s[type=player] run data modify entity @s data.shield.amplifier set value $(amplifier)
execute unless entity @s[type=player] run data modify entity @s data.shield.bossbar set string storage magick:data concatenated_string
execute unless entity @s[type=player] store result entity @s data.shield.knockback_resistance double 0.1 run scoreboard players get @s calculationValues
execute unless entity @s[type=player] store result entity @s data.shield.armor double 2 run scoreboard players get @s calculationValues
execute unless entity @s[type=player] store result entity @s data.shield.armor_toughness double 1.5 run scoreboard players get @s calculationValues

$execute if entity @s[type=player] run function magick_reborn:spell/cast/shield/add_modifiers with storage magick $(uuid).shield
execute unless entity @s[type=player] run function magick_reborn:spell/cast/shield/add_modifiers with entity @s data.shield

$execute anchored eyes run summon marker ~ ~ ~ {Tags:["shield_center"],data:{caster_id:$(uuid)}}
data modify entity @e[type=marker,distance=..1,sort=nearest,tag=shield_center,limit=1] data.target_uuid set from entity @s UUID

$execute positioned ~ ~ ~1 run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^ ^ ^1"}
$execute if score @s calculationValues matches 4.. positioned ~ ~ ~-1 run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^ ^ ^-1"}
$execute if score @s calculationValues matches 8.. positioned ~1 ~ ~ run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^1 ^ ^"}
$execute if score @s calculationValues matches 10.. positioned ~-1 ~ ~ run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^-1 ^ ^"}