$scoreboard players set #IterateEffects index $(index)

$execute store result score #IterateEffects calculationValues run data get storage magick $(uuid).dispell_magick.active_effects[$(index)].amplifier
$scoreboard players set #IterateEffects calculationValues2 $(amplifier)

$execute unless score #IterateEffects calculationValues > #IterateEffects calculationValues2 run function magick_reborn:spell/cast/dispell_magick/remove_effect with storage magick $(uuid).dispell_magick.active_effects[$(index)]

scoreboard players add #IterateEffects index 1

$execute store result storage magick $(uuid).dispell_magick.index int 1 run scoreboard players get #IterateEffects index
$function magick_reborn:spell/cast/dispell_magick/iterate_active_effects with storage magick $(uuid).dispell_magick