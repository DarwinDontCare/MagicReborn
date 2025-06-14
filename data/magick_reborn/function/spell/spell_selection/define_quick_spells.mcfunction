dialog show @s {\
    title: "$(spell_name)",\
    type: "multi_action",\
    actions: $(quick_spells),\
    exit_action: {\
        label: "Back",\
        tooltip: "back to spell info",\
        action: {\
            type: "run_command",\
            command: "function magick_reborn:spell/spell_selection/spell_info"\
        }\
    }\
}