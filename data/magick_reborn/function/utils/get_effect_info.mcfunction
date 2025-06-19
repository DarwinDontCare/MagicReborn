data modify storage magick:data effectComparer set value "none"
$execute store success score #NoneEffect boolean run data modify storage magick:data effectComparer set value "$(effect)"
execute if score #NoneEffect boolean matches 0 run return run data modify storage magick:data spell_effect_info set value {display_name: "None", particle: "None", idle_sound: "None", cast_sound: "None", hit_sound: "None", use_duration: false, use_amplifier: false, use_area: false}
$data modify storage magick:data spell_effect_info set from storage magick:data spell_effects."$(effect)"