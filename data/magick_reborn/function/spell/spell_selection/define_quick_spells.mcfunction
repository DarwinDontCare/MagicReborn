$dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Select Slot",\
  pause: true,\
  after_action: "close",\
  body: [],\
  inputs: [],\
  actions: $(spells_define),\
  exit_action: $(exit_action)\
}