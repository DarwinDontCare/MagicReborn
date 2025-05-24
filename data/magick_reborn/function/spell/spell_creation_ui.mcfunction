dialog show @p {\
"type":"minecraft:simple_input_form",\
"title":"Spell Creation",\
"inputs":[\
  {\
    "type":"minecraft:text",\
    "key":"name",\
    "label":"Name"\
  },\
  {\
    "type":"minecraft:single_option",\
    "key":"effect",\
    "label":"Effect",\
    "options":[\
      {"id":"minecraft:speed","display":"Speed","initial":true},\
      {"id":"minecraft:jump_boost","display":"Jump","initial":false},\
      {"id":"minecraft:strength","display":"Strength","initial":false},\
      {"id":"minecraft:instant_health","display":"Instant Health","initial":false}\
    ]\
  },\
  {\
    "type":"minecraft:number_range",\
    "key":"amplifier",\
    "label":"Amplifier",\
    "start":1,\
    "end":10,\
    "step":1,\
    "initial":1\
  },\
  {\
    "type":"minecraft:number_range",\
    "key":"duration",\
    "label":"Duration",\
    "start":1,\
    "end":3600,\
    "step":1,\
    "initial":1\
  }\
],\
"action":{\
  "label":"Create Spell",\
  "id":"create_spell",\
  "on_submit":{\
    "type":"minecraft:command_template",\
    "template":"function magick_reborn:spell/create {name:\"$(name)\", duration:$(duration), amplifier:$(amplifier), effect:\"$(effect)\"}"\
  }\
}\
}
