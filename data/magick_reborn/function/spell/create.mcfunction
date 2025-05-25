$scoreboard players set @s spell_amplifier $(amplifier)
$scoreboard players set @s spell_duration $(duration)
execute store result storage magick:data spell.cost int 0.3 run scoreboard players operation @s spell_amplifier *= @s spell_duration
execute store result score @s spellCost run data get storage magick:data spell.cost
execute if score @s spellCost matches ..0 run data modify storage magick:data spell.cost set value 1

$data modify storage magick:data spell merge value {amplifier: $(amplifier), duration: $(duration), effect: "$(effect)", name: "$(name)"}
function magick_reborn:spell/give_wand with storage magick:data spell