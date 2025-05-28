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
    max_amplifier: 1,\
    max_duration: 1\
}