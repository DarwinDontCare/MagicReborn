data modify storage magick:data spell_creation.effect_settings set value {}
$function magick_reborn:utils/get_effect_info {effect: "$(effect)"}

data modify storage magick:data spell_creation.effect_settings.inputs set value []
data modify storage magick:data spell_creation.effect_settings.label set from storage magick:data spell_effect_info.display_name

$execute if data storage magick:data {spell_effect_info: {use_amplifier: true}} run data modify storage magick:data spell_creation.effect_settings.inputs append value {\
    type: "minecraft:number_range",\
    key: "amplifier",\
    label: "Amplifier",\
    start: 1,\
    end: $(max_amplifier),\
    step: 1,\
    initial: 1\
}

$execute if data storage magick:data {spell_effect_info: {use_duration: true}} run data modify storage magick:data spell_creation.effect_settings.inputs append value {\
    type: "minecraft:number_range",\
    key: "duration",\
    label: "Duration",\
    start: 1,\
    end: $(max_duration),\
    step: 1,\
    initial: 1\
}

$execute if data storage magick:data {spell_effect_info: {use_area: true}} run data modify storage magick:data spell_creation.effect_settings.inputs append value {\
    type: "minecraft:number_range",\
    key: "area",\
    label: "Area",\
    start: 1,\
    end: $(max_area),\
    step: 1,\
    initial: 1\
}

data modify storage magick:data spell_creation.effect_settings.exit_action set value {\
    label: "Add Effect",\
    id: "add_effect",\
    action: {\
        type: "dynamic/run_command",\
        template: ""\
    }\
}

$data modify storage magick:data macroVars set value {uuid: $(uuid), current_effect_slot: $(current_effect_slot)}
data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_creation_menu/prepare_effect_vars"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: '$(text)', amplifier: '$(amplifier)', duration: '$(duration)', area: '$(area)'"

data modify storage magick:data effect_text.str1 set from storage magick:data macroGenerator.var
$data modify storage magick:data effect_text.str2 set value ", effect: '$(effect)'"
function magick_reborn:data/concatenate_string with storage magick:data effect_text

data modify storage magick:data macroGenerator.var set from storage magick:data concatenated_string

function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spell_creation.effect_settings.exit_action.action.template set from storage magick:data macroGenerator.template

function magick_reborn:spell/spell_creation_menu/effect_settings with storage magick:data spell_creation.effect_settings