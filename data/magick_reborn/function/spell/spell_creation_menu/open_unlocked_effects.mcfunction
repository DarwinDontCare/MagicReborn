data modify storage magick:data spell_creation.effect_selection set value {}
data modify storage magick:data macroGenerator set value {}
$function magick_reborn:spell/spell_creation_menu/prepare_unlocked_effects {max_amplifier: $(max_amplifier), max_duration: $(max_duration), max_area: $(max_area), uuid: $(uuid), current_effect_slot: $(current_effect_slot), index: 0}

data modify storage magick:data spell_creation.effect_selection.exit_action set value {\
    label: "Back",\
    tooltip: "back to spell info",\
    action: {\
        type: "dynamic/run_command",\
        template: ""\
    }\
}

$data modify storage magick:data macroVars set value {uuid: $(uuid)}
data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_creation_menu/return_main_spell_creation"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spell_creation.effect_selection.exit_action.action.template set from storage magick:data macroGenerator.template

function magick_reborn:spell/spell_creation_menu/unlocked_effects with storage magick:data spell_creation.effect_selection