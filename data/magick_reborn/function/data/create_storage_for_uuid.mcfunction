$data modify storage magick $(uuid_data) set value {\
    uuid: $(uuid_data),\
    xp_cost: 0,\
    magick_cost: 0,\
    spell_effects: [\
        {effect: "none", amplifier: 1, duration: 1},\
        {effect: "none", amplifier: 1, duration: 1},\
        {effect: "none", amplifier: 1, duration: 1},\
        {effect: "none", amplifier: 1, duration: 1}\
    ],\
    unlocked_effects: [\
        {id:"minecraft:fireball",display:"Fire Ball",initia:true},\
        {id:"minecraft:speed",display:"Speed",initial:true},\
        {id:"minecraft:instant_health",display:"Instant Health",initial:false}\
    ],\
    known_spells: [],\
    quick_spells: [\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 0\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 1\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 2\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 3\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 4\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 5\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 6\
        },\
        {\
            spell_name: "None",\
            custom_data: {},\
            lore: [[{text: "none"}]],\
            id: 7\
        }\
    ],\
    max_amplifier: 1,\
    max_duration: 1\
}