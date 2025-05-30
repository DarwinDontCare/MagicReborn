data modify storage magick:data effectComparer set value "minecraft:summon_armor"
$execute store result score #Compare boolean run data modify storage magick:data effectComparer set value "$(effect)"

$execute as @s if score #Compare boolean matches 0 run return run function magick_reborn:spell/equipment/summon_armor {duration: $(duration), amplifier: $(amplifier)}

$function magick_reborn:spell/cast/apply_vanilla_effects {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier)}