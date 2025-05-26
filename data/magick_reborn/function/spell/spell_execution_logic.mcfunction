scoreboard players operation @s magick -= @s spellCost

$data modify storage magick:data compare_string set value "$(effect)"
$execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~ ~ {Tags:["effect_comparer"], data: {effect: "$(effect)"}}

execute as @s unless entity @e[tag=effect_comparer, predicate=magick_reborn:special_spell] run function magick_reborn:spell/apply_effect with storage magick:data spell
$execute as @s at @s if entity @e[tag=effect_comparer, predicate=magick_reborn:special_spell] run function magick_reborn:spell/create_projectile {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}

scoreboard players reset #Compare boolean
kill @e[tag=effect_comparer]