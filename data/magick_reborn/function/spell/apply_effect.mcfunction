data modify storage magick:data effectComparer set value "none"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
execute if score #Compare boolean matches 0 run return 0

data modify storage magick:data effectComparer set value "minecraft:summon_armor"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_armor {duration: $(duration), amplifier: $(amplifier)}

#Summon Weapons
data modify storage magick:data effectComparer set value "minecraft:summon_bow"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_weapon {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:bow", model: "magick_reborn:summoned_bow", name: "Summoned Bow"}

data modify storage magick:data effectComparer set value "minecraft:summon_sword"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_weapon {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_sword", model: "magick_reborn:summoned_sword", name: "Summoned Sword"}

#Summon Tools
data modify storage magick:data effectComparer set value "minecraft:summon_pickaxe"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_pickaxe", model: "magick_reborn:summoned_pickaxe", name: "Summoned Pickaxe"}

data modify storage magick:data effectComparer set value "minecraft:summon_axe"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_axe", model: "magick_reborn:summoned_axe", name: "Summoned Axe"}

data modify storage magick:data effectComparer set value "minecraft:summon_shovel"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_shovel", model: "magick_reborn:summoned_shovel", name: "Summoned Shovel"}

data modify storage magick:data effectComparer set value "minecraft:summon_hoe"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_tool {duration: $(duration), amplifier: $(amplifier), tool: "minecraft:wooden_hoe", model: "magick_reborn:summoned_hoe", name: "Summoned Hoe"}

#Destruction Spells
data modify storage magick:data effectComparer set value "minecraft:frostbite"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/frostbite {duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}

data modify storage magick:data effectComparer set value "minecraft:ice_wall"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/ice_wall {duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}

data modify storage magick:data effectComparer set value "minecraft:glowing"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 if score #BlockDetect boolean matches 1 run return run function magick_reborn:spell/cast/light {duration: $(duration), amplifier: $(amplifier)}

data modify storage magick:data effectComparer set value "minecraft:lightning_bolt"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/lightning_bolt {uuid: $(caster_id), amplifier: $(amplifier)}

#Summon Entities
data modify storage magick:data effectComparer set value "minecraft:summon_skeleton"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 1, mob: "skeleton", sound: "entity.skeleton.converted_to_stray", equipment: "{head:{id:leather_helmet}, mainhand:{id:bow}}", range: 15, nbt: "", name: "$(caster_name)'s Skeleton"}

data modify storage magick:data effectComparer set value "minecraft:summon_zombie"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 1, mob: "zombie", sound: "entity.zombie.converted_to_drowned", equipment: "{head:{id:leather_helmet}}", range: 15, nbt: "", name: "$(caster_name)'s Zombie"}

data modify storage magick:data effectComparer set value "minecraft:summon_blaze"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 2, mob: "blaze", sound: "minecraft:item.firecharge.use", equipment: "{}", range: 15, nbt: "", name: "$(caster_name)'s Blaze"}

data modify storage magick:data effectComparer set value "minecraft:summon_wither_skeleton"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 2, mob: "wither_skeleton", sound: "minecraft:item.firecharge.use", equipment: "{mainhand:{id:stone_sword}}", range: 15, nbt: "", name: "$(caster_name)'s Wither Skeleton"}

data modify storage magick:data effectComparer set value "minecraft:summon_creeper"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 3, mob: "creeper", sound: "minecraft:entity.creeper.death", equipment: "{}", range: 15, nbt: "", name: "$(caster_name)'s Creeper"}

data modify storage magick:data effectComparer set value "minecraft:summon_ghast"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 4, mob: "ghast", sound: "minecraft:block.dried_ghast.break", equipment: "{}", range: 50, nbt: "", name: "$(caster_name)'s Ghast"}

data modify storage magick:data effectComparer set value "minecraft:summon_iron_golem"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 4, mob: "iron_golem", sound: "minecraft:block.anvil.place", equipment: "{}", range: 0, nbt: "", name: "$(caster_name)'s Iron Golem"}

data modify storage magick:data effectComparer set value "minecraft:summon_wolf"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 2, mob: "wolf", sound: "minecraft:entity.wolf.growl", equipment: "{}", range: 0, nbt: "", name: "$(caster_name)'s Wolf"}

data modify storage magick:data effectComparer set value "minecraft:summon_snow_golem"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 1, mob: "snow_golem", sound: "minecraft:block.snow.place", equipment: "{}", range: 0, nbt: "", name: "$(caster_name)'s Snow Golem"}

data modify storage magick:data effectComparer set value "minecraft:summon_warden"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 10, mob: "warden", sound: "minecraft:entity.warden.spawn", equipment: "{}", range: 0, nbt: ",Brain:{memories:{\"minecraft:dig_cooldown\":{value:{},ttl:1200L}}}", name: "$(caster_name)'s Warden"}

data modify storage magick:data effectComparer set value "minecraft:summon_wither"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {  duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 10, mob: "wither", sound: "minecraft:entity.wither.spawn", equipment: "{}", range: 30, nbt: "", name: "$(caster_name)'s Wither"}

data modify storage magick:data effectComparer set value "minecraft:summon_magma_cube"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/summon_creature {  duration: $(duration), amplifier: $(amplifier), uuid: $(caster_id), index: 1, x: 0, proportion: 10, mob: "magma_cube", sound: "minecraft:entity.magma_cube.squish", equipment: "{}", range: 15, nbt: ", Size:4", name: "$(caster_name)'s Magma Cube"}

#Movimentation
data modify storage magick:data effectComparer set value "minecraft:teleport"
$execute store success score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"
$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/cast/teleport {uuid: $(caster_id), amplifier: $(amplifier)}

execute if score #BlockDetect boolean matches 1 run return 0

#Vanilla Effects
$function magick_reborn:spell/cast/apply_vanilla_effects {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}