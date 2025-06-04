execute unless entity @s[gamemode=creative] run scoreboard players operation @s magick -= @s spellCost
execute unless entity @s[gamemode=creative] run function magick_reborn:spell/cast/damage_wand

$data modify storage magick:data spell.effects set value $(effects)
$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effects: $(effects), caster_id: $(caster_id)}}

$execute if entity @e[tag=effect_comparer,nbt={data:{caster_id: $(caster_id)}},predicate=magick_reborn:is_continuous_cast] run data modify storage magick:data spell.is_burst set value 1

$execute at @s as @s run function magick_reborn:spell/spell_sounds {caster_id: $(caster_id)}

# Projectile Logic
$data modify storage magick:data spell.summon_cmd set value "summon item ~ ~1.5 ~ {Tags: [\"magic_projectile\"], data: {caster_id: $(caster_id)}, NoGravity:true, HasVisualFire:false, Invulnerable:true, PickupDelay:100000, Item:{id:\"stone_button\"}}"

$execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}], caster_id: $(caster_id)}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon fireball ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"fireball\"], data: {caster_id: $(caster_id)}}"

execute as @s if entity @s[predicate=magick_reborn:is_sneaking] run function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "entity @s SelectedItem.components.\"minecraft:custom_data\".effects"}
execute as @s at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run function magick_reborn:spell/create_projectile with storage magick:data spell
execute as @s at @s unless entity @s[predicate=magick_reborn:is_sneaking] unless entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run function magick_reborn:spell/create_projectile with storage magick:data spell

kill @e[tag=effect_comparer]