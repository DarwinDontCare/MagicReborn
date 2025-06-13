$dialog show @s {\
    title: "$(spell_name)",\
    type: "multi_action",\
    actions: [\
        {\
            label: "Set Quick Spell",\
            tooltip: "set spell in quick spells list",\
            action: {\
                type: "run_command",\
                command: "function magick_reborn:spell/spell_selection/define_quick_spells {$(macro_vars), uuid: $(uuid), id: $(id))}"\
            }\
        },\
        {\
            label: "Delete",\
            tooltip: "delete spell",\
            action: {\
                type: "run_command",\
                command: "function magick_reborn:spell/spell_selection/delete_spell {$(macro_vars), uuid: $(uuid), id: $(id)}"\
            }\
        }\
    ],\
    exit_action: {\
        label: "Back",\
        tooltip: "back to known spells list",\
        action: {\
            type: "run_command",\
            command: "function magick_reborn:spell/spell_selection/known_spells_menu"\
        }\
    }\
}