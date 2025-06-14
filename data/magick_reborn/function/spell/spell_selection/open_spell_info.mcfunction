data modify storage magick:data spellObject set value {}
$function magick_reborn:spell/spell_selection/prepare_spell_object {path: "storage magick $(uuid).known_spells[$(index)]"}

data modify storage magick:data spellObject.actions set value [\
    {\
        label: "Set Quick Spell",\
        tooltip: "set spell in quick spells list",\
        action: {\
            type: "dynamic/run_command",\
            template: ""\
        }\
    },\
    {\
        label: "Delete",\
        tooltip: "delete spell",\
        action: {\
            type: "dynamic/run_command",\
            template: ""\
        }\
    }\
]

$data modify storage magick:data macroVars set value {uuid: $(uuid), index: $(index)}
data modify storage magick:data macroVars.id set from storage magick:data spellObject.id

data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/open_define_quick_spells"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellObject.actions[0].action.template set from storage magick:data macroGenerator.template


$data modify storage magick:data macroVars set value {uuid: $(uuid)}
data modify storage magick:data macroVars.id set from storage magick:data spellObject.id

data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/delete_spell"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellObject.actions[1].action.template set from storage magick:data macroGenerator.template


data modify storage magick:data spellObject.exit_action set value {\
    label: "Back",\
    tooltip: "back to known spells list",\
    action: {\
        type: "dynamic/run_command",\
        template: ""\
    }\
}

$data modify storage magick:data macroVars set value {uuid: $(uuid)}
data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/open_known_spells"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -1
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellObject.exit_action.action.template set from storage magick:data macroGenerator.template



function magick_reborn:spell/spell_selection/spell_info with storage magick:data spellObject