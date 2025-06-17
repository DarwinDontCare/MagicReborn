scoreboard players add #global ticksCount 1
execute as @a unless score @s uuid matches -999999999..999999999 run function magick_reborn:data/set_uuid
execute as @a unless score @s maxActiveSummons matches 1.. run scoreboard players set @s maxActiveSummons 10

execute as @a[tag=!savedName] run function magick_reborn:data/get_uuid {function: "magick_reborn:data/store_player_name"}

execute as @a[tag=!onboarded] run function magick_reborn:onboarding

execute as @a run function magick_reborn:magick/up_mage_level

execute as @e[tag=magic_projectile] run function magick_reborn:spell/projectile_hit with entity @s data
execute as @a[scores={dropedItem=1..},predicate=magick_reborn:is_sneaking] at @s run function magick_reborn:spell/spell_selection/prepare_quick_spells_vars

execute as @a run function magick_reborn:magick/manage_mage_levels
execute if score #global ticksCount matches 120.. as @a run function magick_reborn:spell/equipment/summoned_items_lifetime
execute as @a run function magick_reborn:spell/equipment/handle_summoned_arrow
execute as @a run function magick_reborn:magick/regen
execute as @a run function magick_reborn:magick/get_magick_data

kill @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{summoned:true}}}}]

scoreboard players reset @a dropedItem

execute as @e[scores={freezeTicks=1..}] at @s anchored eyes positioned ^ ^ ^ run particle end_rod ~ ~ ~ .02 -.02 .02 0.02 1 force
execute as @e[scores={freezeTicks=1..},predicate=magick_reborn:on_fire] run function magick_reborn:magick/unfreeze
execute as @e[scores={freezeTicks=..0}] run function magick_reborn:magick/unfreeze

execute as @e[tag=ice_wall_marker] at @s run function magick_reborn:spell/cast/ice_wall_tick with entity @s data
execute as @e[tag=light] at @s run function magick_reborn:spell/cast/light_tick
execute as @e[tag=summoned] at @s run function magick_reborn:spell/cast/summon_tick
execute as @e[tag=summon_marker,type=marker] if score #global summonCheckTimer matches 20.. at @s run function magick_reborn:spell/cast/summon_marker with entity @s data
execute if score #global summonCheckTimer matches 20.. unless entity @e[tag=summon_marker,type=marker] as @a run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/checkActiveSummons"}

execute if score #global ticksCount matches 120.. as @e[scores={freezeTicks=1..}] run scoreboard players remove @s freezeTicks 1

execute as @e[scores={giantEffectDuration=0..}] at @s run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/giant/giant_effect_tick"}
execute as @a[scores={giantEffectDuration=0..}] unless data entity @s {DeathTime:0s} run function magick_reborn:spell/cast/giant/remove_giant

execute as @e[scores={dwarfEffectDuration=0..}] at @s run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/dwarf/dwarf_effect_tick"}
execute as @a[scores={dwarfEffectDuration=0..}] unless data entity @s {DeathTime:0s} run function magick_reborn:spell/cast/dwarf/remove_dwarf

execute as @a[scores={ShapeShiftEffectDuration=0..}] at @s run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/shape_shift/shape_shift_tick"}
execute as @a[scores={ShapeShiftEffectDuration=0..}] unless data entity @s {DeathTime:0s} run function magick_reborn:spell/cast/shape_shift/remove_shape_shift

execute as @a if entity @e[tag=tk_bind] run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/telekinesis/prepare_tk_tick_data"}
execute as @a if entity @e[tag=tk_launch] run function magick_reborn:data/get_uuid {function: "magick_reborn:spell/cast/telekinesis/prepare_tk_launch_data"}

execute if score #global ticksCount matches 120.. run scoreboard players reset #global ticksCount
execute if score #global summonCheckTimer matches 20.. run scoreboard players reset #global summonCheckTimer
scoreboard players add #global summonCheckTimer 1