data modify storage magick:data spell_creation.add_effect set value {}
data modify storage magick:data concatenated_string set value ""
scoreboard players set #FirstElemet boolean 1

data modify storage magick:data compare_string set value ""
$execute store success score #CompareString boolean run data modify storage magick:data compare_string set value "$(amplifier)"
execute if score #CompareString boolean matches 0 run data modify storage magick:data spell_creation.add_effect.amplifier set value 1
execute if score #CompareString boolean matches 1 run say has amplifier
$execute if score #CompareString boolean matches 1 run data modify storage magick:data spell_creation.add_effect.amplifier set value "$(amplifier)"
$execute if score #CompareString boolean matches 1 run data modify storage magick:data concatenated_string set value "Amp: $(amplifier)"
execute if score #CompareString boolean matches 1 run scoreboard players set #FirstElemet boolean 0

data modify storage magick:data compare_string set value ""
$execute store success score #CompareString boolean run data modify storage magick:data compare_string set value "$(duration)"
execute if score #CompareString boolean matches 0 run data modify storage magick:data spell_creation.add_effect.duration set value 1
execute if score #CompareString boolean matches 1 run say has duration
$execute if score #CompareString boolean matches 1 run data modify storage magick:data spell_creation.add_effect.duration set value "$(duration)"
execute if score #CompareString boolean matches 1 run data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
$execute if score #CompareString boolean matches 1 if score #FirstElemet boolean matches 1 run data modify storage magick:data effect_text.str2 set value "Dur: $(duration)"
$execute if score #CompareString boolean matches 1 unless score #FirstElemet boolean matches 1 run data modify storage magick:data effect_text.str2 set value "\nDur: $(duration)"
execute if score #CompareString boolean matches 1 run function magick_reborn:data/concatenate_string with storage magick:data effect_text

data modify storage magick:data compare_string set value ""
$execute store success score #CompareString boolean run data modify storage magick:data compare_string set value "$(area)"
execute if score #CompareString boolean matches 0 run data modify storage magick:data spell_creation.add_effect.area set value 1
execute if score #CompareString boolean matches 1 run say has area
$execute if score #CompareString boolean matches 1 run data modify storage magick:data spell_creation.add_effect.area set value "$(area)"
execute if score #CompareString boolean matches 1 run data modify storage magick:data effect_text.str1 set from storage magick:data concatenated_string
$execute if score #CompareString boolean matches 1 if score #FirstElemet boolean matches 1 run data modify storage magick:data effect_text.str2 set value "Are: $(area)"
$execute if score #CompareString boolean matches 1 unless score #FirstElemet boolean matches 1 run data modify storage magick:data effect_text.str2 set value "\nAre: $(area)"
execute if score #CompareString boolean matches 1 run function magick_reborn:data/concatenate_string with storage magick:data effect_text

$data modify storage magick:data spell_creation.add_effect.effect set value "$(effect)"
$data modify storage magick:data spell_creation.add_effect.current_effect_slot set value $(current_effect_slot)
$data modify storage magick:data spell_creation.add_effect.uuid set value $(uuid)
data modify storage magick:data spell_creation.add_effect.tooltip set from storage magick:data concatenated_string

function magick_reborn:spell/spell_creation_menu/add_effect with storage magick:data spell_creation.add_effect