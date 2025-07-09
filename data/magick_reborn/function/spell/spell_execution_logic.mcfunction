execute unless entity @s[gamemode=creative] unless score @s magickDrainTick matches 1.. run scoreboard players operation @s magick -= @s spellCost
execute unless entity @s[gamemode=creative] unless score @s magickDrainTick matches 1.. run function magick_reborn:spell/cast/damage_wand

$data modify storage magick:data spell.effects set value $(effects)
execute store result storage magick:data spell.is_burst int 1 run function magick_reborn:spell/is_continuous_cast

$execute at @s unless score @s ticksCount matches 1.. run playsound $(cast_sound) ambient @s ~ ~ ~ 0.8 1 0.3

execute if data storage magick:data {spell:{effects:[{effect:"minecraft:fireball"}]}} run data modify storage magick:data spell.speed set value 0.002
execute if data storage magick:data {spell:{effects:[{effect:"minecraft:ice_wall"}]}} run data modify storage magick:data spell.health set value 10

# Projectile Logic
execute at @s if data storage magick:data {spell:{effects:[{effect: "minecraft:fireball"}]}} run return run function magick_reborn:spell/create_projectile with storage magick:data spell
execute at @s if data storage magick:data {spell:{effects:[{effect: "minecraft:shape_shift"}]}} run return run function magick_reborn:spell/create_projectile with storage magick:data spell

data modify storage magick:data effectIterator.index set value 0
$data modify storage magick:data effectIterator.caster_id set value $(caster_id)
data modify storage magick:data effectIterator.is_burst set from storage magick:data spell.is_burst
data modify storage magick:data effectIterator.nbt_path set value "entity @s SelectedItem.components.\"minecraft:custom_data\".effects"
data modify storage magick:data effectIterator.subject set value "@s"
$data modify storage magick:data effectIterator.magick_circle set value "$(magick_circle)"

execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:conjure_meteor"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:fangs"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:detect_treasure"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:teleknesis"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:frostbite"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:flames"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:sonic_boom"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:lightning_bolt"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s if data storage magick:data {spell:{effects:[{effect:"minecraft:teleport"}]}} run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute if entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
execute at @s unless entity @s[predicate=magick_reborn:is_sneaking] run return run function magick_reborn:spell/create_projectile with storage magick:data spell
