$dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spell Creation",\
  pause: true,\
  after_action: "close",\
  body: [],\
  inputs: [\
    {\
      type: "minecraft:single_option",\
      key: "effect",\
      label: "Effect",\
      options: $(unlocked_effects)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "amplifier",\
      label: "Amplifier",\
      start: 1,\
      end: $(max_amplifier),\
      step: 1,\
      initial: 1\
    },\
    {\
      type: "minecraft:number_range",\
      key: "duration",\
      label: "Duration",\
      start: 1,\
      end: $(max_duration),\
      step: 1,\
      initial: 1\
    }\
  ],\
  actions: [\
    {\
      label: "Add Effect",\
      id: "create_spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/add_effect {$(on_submit), uuid: $(uuid), current_effect_slot: $(current_effect_slot)}"\
      }\
    }\
  ]\
}
