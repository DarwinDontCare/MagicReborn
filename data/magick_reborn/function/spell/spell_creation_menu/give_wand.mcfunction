$item replace entity @s weapon.offhand with minecraft:clock[\
    item_name="$(spell_name)",\
    item_model="$(model)",\
    custom_data={\
        cost: $(magick_cost),\
        effects: $(spell_effects),\
        type: "wand",\
        enchanted: true,\
        tier: $(tier),\
        model: "$(model)",\
        idle_sound: "$(idle_sound)",\
        cast_sound: "$(cast_sound)",\
        hit_sound: "$(hit_sound)",\
        use_duration: $(use_duration),\
        use_area: $(use_area),\
        use_amplifier: $(use_amplifier),\
        id: $(spell_id)\
    },\
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

$execute unless data storage magick $(uuid).known_spells run data modify storage magick $(uuid).known_spells set value []
$data modify storage magick $(uuid).known_spells append value {\
    spell_name: "$(spell_name)",\
    custom_data: {\
        cost: $(magick_cost),\
        effects: $(spell_effects),\
        type: "wand",\
        enchanted: true,\
        tier: $(tier),\
        model: "$(model)",\
        idle_sound: "$(idle_sound)",\
        cast_sound: "$(cast_sound)",\
        hit_sound: "$(hit_sound)",\
        use_duration: $(use_duration),\
        use_area: $(use_area),\
        use_amplifier: $(use_amplifier),\
        id: $(spell_id)\
    },\
    lore: $(lore),\
    id: $(spell_id)\
}

$data modify storage magick $(uuid).magick_cost set value 0

$scoreboard players set #Calculation calculationValues $(xp_cost)
scoreboard players set #Calculation calculationValues2 2
scoreboard players operation #Calculation calculationValues /= #Calculation calculationValues2
scoreboard players operation @s levelProgressBar += #Calculation calculationValues

scoreboard players reset #Calculation calculationValues
scoreboard players reset #Calculation calculationValues2

execute unless entity @s[gamemode=creative] run experience add @s -2 levels