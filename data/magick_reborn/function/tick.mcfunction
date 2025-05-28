scoreboard players add #global ticksCount 1
execute as @a unless score @s uuid matches -999999999..999999999 run function magick_reborn:data/set_uuid

execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{type: "wand"}}}},scores={rightClick=1..}] run function magick_reborn:spell/cast
execute as @a[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{type: "wand"}}}}},scores={rightClick=1..}] run function magick_reborn:spell/cast

execute as @e[tag=magic_projectile] unless entity @s[tag=fireball] run function magick_reborn:spell/projectile_hit

execute as @a run function magick_reborn:magick/manage_mage_levels
execute as @a run function magick_reborn:spell/equipment/summoned_items_lifetime
execute as @e run function magick_reborn:magick/regen
execute as @a run function magick_reborn:magick/get_magick_data

scoreboard players reset @e sneaking
execute if score #global ticksCount matches 10.. run scoreboard players reset #global ticksCount