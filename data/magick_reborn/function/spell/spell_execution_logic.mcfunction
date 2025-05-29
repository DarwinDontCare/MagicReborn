scoreboard players operation @s magick -= @s spellCost

$say effects: $(effects)

$data modify storage magick:data spell.effects set value $(effects)
execute store result storage magick:data spell.caster_id int 1 run scoreboard players get @s uuid
$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effects: $(effects)}}

# Projectile Logic
data modify storage magick:data spell.summon_cmd set value "summon snowball ~ ~1.5 ~ {Tags: [\"magic_projectile\"], data: {effects: \"$(effects)\", caster_id: $(caster_id)}"

execute if score @s spell_amplifier matches ..1 if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon small_fireball ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"fireball\"], data: {effects: \"$(effects)\", caster_id: $(caster_id)}}"

execute if score @s spell_amplifier matches 2.. if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon fireball ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"fireball\"], data: {effects: \"$(effects)\", caster_id: $(caster_id)}, ExplosionPower: $(amplifier)b}"


execute as @s if entity @s[scores={sneaking=1..}] run function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "SelectedItem.components.\"minecraft:custom_data\".effects"}
execute as @s at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run function magick_reborn:spell/create_projectile with storage magick:data spell
execute as @s at @s unless entity @s[scores={sneaking=1..}] run function magick_reborn:spell/create_projectile with storage magick:data spell

scoreboard players reset #Compare boolean
kill @e[tag=effect_comparer]