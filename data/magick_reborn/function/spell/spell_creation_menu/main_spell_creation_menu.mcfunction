$execute if score @s mageLevel matches ..20 run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        components: {\
          "minecraft:item_name": "Xp cost"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(xp_cost)",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        components: {\
          "minecraft:item_name": "Magick cost",\
          "minecraft:rarity": "rare"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(magick_cost)",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
      type: "minecraft:text",\
      key: "name",\
      label: "Name",\
      initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      tooltip: "$(tooltip0)",\
      id: "The first effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 21..40 run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        components: {\
          "minecraft:item_name": "Xp cost"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(xp_cost)",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        components: {\
          "minecraft:item_name": "Magick cost",\
          "minecraft:rarity": "rare"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(magick_cost)",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
      type: "minecraft:text",\
      key: "name",\
      label: "Name",\
      initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      tooltip: "$(tooltip0)",\
      id: "The first effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      tooltip: "$(tooltip1)",\
      id: "The second effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 41..60 run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        components: {\
          "minecraft:item_name": "Xp cost"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(xp_cost)",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        components: {\
          "minecraft:item_name": "Magick cost",\
          "minecraft:rarity": "rare"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(magick_cost)",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
      type: "minecraft:text",\
      key: "name",\
      label: "Name",\
      initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      tooltip: "$(tooltip0)",\
      id: "The first effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      tooltip: "$(tooltip1)",\
      id: "The second effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "$(effect2)",\
      tooltip: "$(tooltip2)",\
      id: "The third effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 2}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}

$execute if score @s mageLevel matches 60.. run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spell Creation",\
  external_title: "Spell Creation",\
  pause: true,\
  after_action: "close",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:experience_bottle",\
        components: {\
          "minecraft:item_name": "Xp cost"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(xp_cost)",\
      show_decorations: true\
    },\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:redstone",\
        components: {\
          "minecraft:item_name": "Magick cost",\
          "minecraft:rarity": "rare"\
        },\
        show_tooltip: true,\
        count: 1\
      },\
      description: "$(magick_cost)",\
      show_decorations: true\
    }\
  ],\
  inputs: [\
    {\
      type: "minecraft:text",\
      key: "name",\
      label: "Name",\
      initial: "$(spell_name)"\
    }\
  ],\
  actions: [\
    {\
      label: "$(effect0)",\
      tooltip: "$(tooltip0)",\
      id: "The first effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 0}"\
      }\
    },\
    {\
      label: "$(effect1)",\
      tooltip: "$(tooltip1)",\
      id: "The second effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 1}"\
      }\
    },\
    {\
      label: "$(effect2)",\
      tooltip: "$(tooltip2)",\
      id: "The third effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 2}"\
      }\
    },\
    {\
      label: "$(effect3)",\
      tooltip: "$(tooltip3)",\
      id: "The fourth effect of the spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/define_effect_slot {$(main_on_submit), uuid: $(uuid), current_effect_slot: 3}"\
      }\
    },\
    {\
      label: "Create Spell",\
      id: "create_spell",\
      action: {\
        type: "dynamic/run_command",\
        template: "function magick_reborn:spell/spell_creation_menu/check_creation_requirements {$(main_on_submit), uuid: $(uuid), xp_cost: $(xp_cost), effect0: \"$(effect0)\", effect1: \"$(effect1)\", effect2: \"$(effect2)\", effect3: \"$(effect3)\"}"\
      }\
    }\
  ]\
}
