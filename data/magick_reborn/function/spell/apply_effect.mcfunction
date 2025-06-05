data modify storage magick:data effectComparer set value "minecraft:summon_armor"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_armor {duration: $(duration), amplifier: $(amplifier)}

#Summon Weapons
data modify storage magick:data effectComparer set value "minecraft:summon_bow"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_weapon {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:bow", model: "magick_reborn:summoned_bow"}

data modify storage magick:data effectComparer set value "minecraft:summon_sword"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_weapon {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_sword", model: "magick_reborn:summoned_sword"}

#Summon Tools
data modify storage magick:data effectComparer set value "minecraft:summon_pickaxe"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_pickaxe", model: "magick_reborn:summoned_pickaxe"}

data modify storage magick:data effectComparer set value "minecraft:summon_axe"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_axe", model: "magick_reborn:summoned_axe"}

data modify storage magick:data effectComparer set value "minecraft:summon_shovel"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_shovel", model: "magick_reborn:summoned_shovel"}

data modify storage magick:data effectComparer set value "minecraft:summon_hoe"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_hoe", model: "magick_reborn:summoned_hoe"}

data modify storage magick:data effectComparer set value "minecraft:frostbite"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/frostbite {duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}


#Vanilla Effects
$function magick_reborn:spell/cast/apply_vanilla_effects {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}