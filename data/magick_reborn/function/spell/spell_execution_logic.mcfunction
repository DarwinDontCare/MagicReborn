execute unless entity @s[gamemode=creative] run scoreboard players operation @s magick -= @s spellCost
execute unless entity @s[gamemode=creative] run function magick_reborn:spell/cast/damage_wand

$data modify storage magick:data spell.effects set value $(effects)
$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effects: $(effects), caster_id: $(caster_id)}}

$execute if entity @e[tag=effect_comparer,nbt={data:{caster_id: $(caster_id)}},predicate=magick_reborn:is_continuous_cast] run data modify storage magick:data spell.is_burst set value 1

$execute at @s as @s run function magick_reborn:spell/spell_sounds {caster_id: $(caster_id)}

data modify storage magick:data spell.speed set value 0.001
execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:frostbite"}]}}] run data modify storage magick:data spell.speed set value 0.002
execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run data modify storage magick:data spell.speed set value 0.002


data modify storage magick:data spell.health set value 200
execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:frostbite"}]}}] run data modify storage magick:data spell.health set value 10
execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:ice_wall"}]}}] run data modify storage magick:data spell.health set value 10

# Projectile Logic
$data modify storage magick:data spell.summon_cmd set value "summon item ~ ~1.5 ~ {Tags: [\"magic_projectile\"], data: {caster_id: $(caster_id)}, NoGravity:true, HasVisualFire:false, Invulnerable:true, PickupDelay:100000, Item:{id:\"stone_button\",components:{\"minecraft:item_model\":air}}}"

$execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}], caster_id: $(caster_id)}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon fireball ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"fireball\"], data: {caster_id: $(caster_id)}}"

$execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:frostbite"}], caster_id: $(caster_id)}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon item ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"freeze\", \"frostbite\"], data: {caster_id: $(caster_id)}, NoGravity:true, HasVisualFire:false, Invulnerable:true, PickupDelay:100000, Item:{id:\"stone_button\",components:{\"minecraft:item_model\":air}}}"

$execute if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:ice_wall"}], caster_id: $(caster_id)}}] \
 run data modify storage magick:data spell.summon_cmd set value "summon item ~ ~1.5 ~ {Tags: [\"magic_projectile\", \"freeze\", \"ice_wall\"], data: {caster_id: $(caster_id)}, NoGravity:true, HasVisualFire:false, Invulnerable:true, PickupDelay:100000, Item:{id:\"stone_button\",components:{\"minecraft:item_model\":air}}}"

execute as @s at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:fireball"}]}}] run return run function magick_reborn:spell/create_projectile with storage magick:data spell
execute as @s at @s if entity @e[tag=effect_comparer, nbt={data:{effects: [{effect: "minecraft:frostbite"}]}}] run return run function magick_reborn:spell/create_projectile with storage magick:data spell

data modify storage magick:data effectIterator.index set value 0
$data modify storage magick:data effectIterator.caster_id set value $(caster_id)
data modify storage magick:data effectIterator.nbt_path set value "entity @s SelectedItem.components.\"minecraft:custom_data\".effects"
data modify storage magick:data effectIterator.subject set value "@s"

execute as @s if entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute as @s at @s unless entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/create_projectile with storage magick:data spell
