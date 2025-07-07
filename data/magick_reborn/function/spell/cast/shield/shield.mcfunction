$function magick_reborn:spell/cast/shield/remove_shield {uuid: $(uuid)}

bossbar add minecraft:shield "Shield Effect"
bossbar set minecraft:shield players @s
$bossbar set minecraft:shield max $(duration)
$bossbar set minecraft:shield value $(duration)

playsound item.shield.block ambient @a[distance=..20] ~ ~ ~ 1 1 0.5
execute anchored eyes positioned ^ ^ ^ run particle dust{color:[66, 203, 245],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 20 force

$scoreboard players set @s shieldEffectDuration $(duration)
$scoreboard players set @s calculationValues $(amplifier)

$data modify storage magick $(uuid).shield.amplifier set value $(amplifier)
$execute store result storage magick $(uuid).shield.knockback_resistance double 0.1 run scoreboard players get @s calculationValues
$execute store result storage magick $(uuid).shield.armor double 2 run scoreboard players get @s calculationValues
$execute store result storage magick $(uuid).shield.armor_toughness double 1.5 run scoreboard players get @s calculationValues

$function magick_reborn:spell/cast/shield/add_modifiers with storage magick $(uuid).shield

$execute anchored eyes run summon marker ~ ~ ~ {Tags:["shield_center"],data:{caster_id:$(uuid)}}

$execute positioned ~ ~ ~1 run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^ ^ ^1"}
$execute if score @s calculationValues matches 4.. positioned ~ ~ ~-1 run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^ ^ ^-1"}
$execute if score @s calculationValues matches 8.. positioned ~1 ~ ~ run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^1 ^ ^"}
$execute if score @s calculationValues matches 10.. positioned ~-1 ~ ~ run function magick_reborn:spell/cast/shield/summon_shield {uuid: $(uuid), amplifier: $(amplifier), position: "^-1 ^ ^"}