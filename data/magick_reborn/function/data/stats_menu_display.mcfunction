$dialog show @s {\
  type: "minecraft:notice",\
  external_title: {\
    text: "Stats",\
    type: "text",\
    color: "gold",\
    bold: true\
  },\
  title: {\
    text: "Stats",\
    type: "text",\
    color: "gold",\
    bold: true\
  },\
  "body": [\
        {\
            type: "minecraft:plain_message",\
            contents: {\
                text: "Level $(mageLevel)",\
                type: "text",\
                color: "dark_blue",\
                underlined: true,\
                hover_event: {\
                    action: "show_text",\
                    value: "Level atual"\
                }\
            },\
            width: 100\
        },\
        {\
            type: "minecraft:plain_message",\
            contents: {\
                text: "$(levelProgressBar)/$(levelProgressBarMaxValue)",\
                type: "text",\
                color: "dark_aqua",\
                hover_event: {\
                    action: "show_text",\
                    value: "Xp até o próximo level"\
                }\
            },\
            width: 50\
        }\
  ],\
  can_close_with_escape: true\
}