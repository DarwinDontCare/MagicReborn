$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)
execute store result storage magick:data spell.cost int 0.5 run scoreboard players operation @s spell_amplifier *= @s spell_duration
$data modify storage magick:data spell merge value {amplifier: $(amplifier), duration: $(duration), effect: "$(effect)", name: "$(name)"}
function magick_reborn:spell/give_wand with storage magick:data spell