$dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Effect Selection",\
  pause: true,\
  after_action: "close",\
  body: [],\
  inputs: [],\
  actions: $(unlocked_effects),\
  exit_action: $(exit_action)\
}
