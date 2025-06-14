$dialog show @s {\
    title: "$(label)",\
    type: "multi_action",\
    body: $(effects),\
    actions: $(actions),\
    exit_action: $(exit_action)\
}