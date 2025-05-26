execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{type: "wand"}}}},scores={rightClick=1..}] run function magick_reborn:spell/cast

execute as @e[tag=magic_projectile] unless entity @s[tag=fireball] run function magick_reborn:spell/projectile_hit

execute as @a run function magick_reborn:magick/manage_mage_levels
execute as @e run function magick_reborn:magick/regen
execute as @a run function magick_reborn:magick/get_magick_data

scoreboard players reset @e sneaking