scoreboard players operation @s magick -= @s spellCost

$data modify storage magick:data spell.effects set value $(effects)
$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effects: $(effects), caster_id: $(caster_id)}}

$execute at @s as @s run function magick_reborn:spell/spell_sounds {caster_id: $(caster_id)}

# Projectile Logic
$data modify storage magick:data spell.summon_cmd set value "summon snowball ~ ~1.5 ~ {Tags: [\"magic_projectile\"], data: {caster_id: $(caster_id)}, NoGravity:true, HasVisualFire:false}"

$execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}], caster_id: $(caster_id)}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon fireball ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"fireball\"], data: {caster_id: $(caster_id)}}"

execute as @s if entity @s[scores={sneaking=1..}] run function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "entity @s SelectedItem.components.\"minecraft:custom_data\".effects"}
execute as @s at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run function magick_reborn:spell/create_projectile with storage magick:data spell
execute as @s at @s unless entity @s[scores={sneaking=1..}] unless entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run function magick_reborn:spell/create_projectile with storage magick:data spell

kill @e[tag=effect_comparer]