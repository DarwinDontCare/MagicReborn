$dialog show @s {\
  type: "minecraft:notice",\
  title: "$(label)",\
  pause: true,\
  after_action: "close",\
  body: [],\
  inputs: $(inputs),\
  action: $(exit_action)\
}
