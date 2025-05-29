$execute if score @s mageLevel matches ..20 run dialog show @s {\
  type: "minecraft:multi_action_input_form",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        count: $(xp_cost)\
      },\
      description: "XP cost to create spell",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        count: $(magick_cost)\
      },\
      description: "Magick cost to cast",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
        type:"minecraft:text",\
        key:"name",\
        label:"Name",\
        initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      id: "The fist effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 21..40 run dialog show @s {\
  type: "minecraft:multi_action_input_form",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        count: $(xp_cost)\
      },\
      description: "XP cost to create spell",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        count: $(magick_cost)\
      },\
      description: "Magick cost to cast",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
        type:"minecraft:text",\
        key:"name",\
        label:"Name",\
        initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      id: "The fist effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      id: "The second effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 41..60 run dialog show @s {\
  type: "minecraft:multi_action_input_form",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        count: $(xp_cost)\
      },\
      description: "XP cost to create spell",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        count: $(magick_cost)\
      },\
      description: "Magick cost to cast",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
        type:"minecraft:text",\
        key:"name",\
        label:"Name",\
        initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      id: "The fist effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      id: "The second effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "$(effect2)",\
      id: "The third effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 2}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 60.. run dialog show @s {\
  type: "minecraft:multi_action_input_form",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        count: $(xp_cost)\
      },\
      description: "XP cost to create spell",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        count: $(magick_cost)\
      },\
      description: "Magick cost to cast",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
        type:"minecraft:text",\
        key:"name",\
        label:"Name",\
        initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      id: "The fist effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      id: "The second effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "$(effect2)",\
      id: "The third effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 2}"\
      }\
    },\
    {\
      label: "$(effect3)",\
      id: "The forth effect of the spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 3}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      on_submit: {\
        type: "minecraft:command_template",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}