execute unless entity @s[gamemode=creative] unless score @s magickDrainTick matches 1.. run scoreboard players operation @s magick -= @s spellCost
execute unless entity @s[gamemode=creative] unless score @s magickDrainTick matches 1.. run function magick_reborn:spell/cast/damage_wand

$data modify storage magick:data spell.effects set value $(effects)
$execute positioned 0 0 0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effects: $(effects), caster_id: $(caster_id)}}

$execute if entity @e[tag=effect_comparer,nbt={data:{caster_id: $(caster_id)}},predicate=magick_reborn:is_continuous_cast] run data modify storage magick:data spell.is_burst set value 1

$execute at @s unless score @s ticksCount matches 1.. run playsound $(cast_sound) ambient @s ~ ~ ~ 0.8 1 0.3

execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run data modify storage magick:data spell.speed set value 0.002
execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:ice_wall"}]}}] run data modify storage magick:data spell.health set value 10

# Projectile Logic
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/create_projectile with storage magick:data spell
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:shape_shift"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/create_projectile with storage magick:data spell

data modify storage magick:data effectIterator.index set value 0
$data modify storage magick:data effectIterator.caster_id set value $(caster_id)
data modify storage magick:data effectIterator.is_burst set from storage magick:data spell.is_burst
data modify storage magick:data effectIterator.nbt_path set value "entity @s SelectedItem.components.\"minecraft:custom_data\".effects"
data modify storage magick:data effectIterator.subject set value "@s"
$data modify storage magick:data effectIterator.magick_circle set value "$(magick_circle)"

$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:conjure_meteor"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fangs"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:detect_treasure"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:teleknesis"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:frostbite"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:flames"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:sonic_boom"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:lightning_bolt"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:teleport"}], caster_id: $(caster_id)}}] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute if entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s unless entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/create_projectile with storage magick:data spell
