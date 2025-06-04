$dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Quick Spell Selection",\
  pause: true,\
  after_action: "close",\
  body: [],\
  inputs: [],\
  actions: $(spells)\
}
