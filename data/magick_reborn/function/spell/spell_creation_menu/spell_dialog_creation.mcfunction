$dialog show @s {\
    type:"minecraft:simple_input_form",\
    title:"Spell Creation",\
    inputs:[\
        {\
            type:"minecraft:single_option",\
            key:"effect",\
            label:"Effect",\
            options: $(unlocked_effects)\
        },\
        {\
            type:"minecraft:number_range",\
            key:"amplifier",\
            label:"Amplifier",\
            start:1,\
            end:$(max_amplifier),\
            step:1,\
            initial:1\
        },\
        {\
            type:"minecraft:number_range",\
            key:"duration",\
            label:"Duration",\
            start:1,\
            end:$(max_duration),\
            step:1,\
            initial:1\
        }\
    ],\
    action:{\
        label:"Add Effect",\
        id:"create_spell",\
        on_submit: {\
            type:"minecraft:command_template",\
            template:"function magick_reborn:spell/spell_creation_menu/add_effect {$(on_submit), uuid: $(uuid), current_effect_slot: $(current_effect_slot)}"\
        }\
    }\
}