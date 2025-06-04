scoreboard players add #global ticksCount 1
execute as @a unless score @s uuid matches -999999999..999999999 run function magick_reborn:data/set_uuid

execute as @a[tag=!onboarded] run function magick_reborn:onboarding

execute as @a run function magick_reborn:magick/up_mage_level

execute as @e[tag=magic_projectile] run function magick_reborn:spell/projectile_hit with entity @s data
execute as @a[scores={dropedItem=1..},predicate=magick_reborn:is_sneaking] at @s run function magick_reborn:spell/spell_selection/open_quick_spells

execute as @a run function magick_reborn:magick/manage_mage_levels
execute if score #global ticksCount matches 120.. as @a run function magick_reborn:spell/equipment/summoned_items_lifetime
execute as @a run function magick_reborn:spell/equipment/handle_summoned_arrow
execute as @a run function magick_reborn:magick/regen
execute as @a run function magick_reborn:magick/get_magick_data

kill @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{summoned:true}}}}]

scoreboard players reset @a dropedItem

execute if score #global ticksCount matches 120.. run scoreboard players reset #global ticksCount