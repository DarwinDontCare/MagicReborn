data modify storage magick:data spellList set value {}
$function magick_reborn:spell/spell_selection/prepare_spell_list {path: "storage magick $(uuid).quick_spells", uuid: $(uuid), index: 0, vars: {knonw_spells_index: $(index)}}

data modify storage magick:data spellList.exit_action set value {\
    label: "Back",\
    tooltip: "back to spell info",\
    action: {\
        type: "dynamic/run_command",\
        template: ""\
    }\
}

$data modify storage magick:data macroVars set value {index: $(index), uuid: $(uuid)}
data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/open_spell_info"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellList.exit_action.action.template set from storage magick:data macroGenerator.template

function magick_reborn:spell/spell_selection/define_quick_spells with storage magick:data spellList