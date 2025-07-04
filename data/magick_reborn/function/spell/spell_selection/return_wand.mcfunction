$item replace entity @s weapon.$(hand) with minecraft:clock[\
    item_name="$(spell_name)",\
    item_model="$(model)",\
    custom_data=$(custom_data),\
    lore=$(lore),\
    enchantment_glint_override=true,\
    consumable={\
        animation:"bow",\
        consume_seconds:2147483647,\
        has_consume_particles:false,\
        sound:"block.enchantment_table.use"\
    },\
    use_cooldown={\
        seconds:2,\
        cooldown_group:"minecraft:none"\
    },\
    food={\
        nutrition:0,\
        saturation:0,\
        can_always_eat:true\
    },\
    max_stack_size=1,\
    max_damage=$(max_damage),\
    damage=$(damage),\
    enchantments=$(enchantments),\
    repairable={items: ["lapis_lazuli"]},\
    repair_cost=$(repair_cost)\
]