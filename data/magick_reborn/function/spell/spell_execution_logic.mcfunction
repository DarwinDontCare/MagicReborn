scoreboard players operation @s magick -= @s spellCost

$data modify storage magick:data compare_string set value "$(effect)"
data modify storage magick:data special_effects set value "minecraft:fireball"

# Tenta modificar o mesmo storage, e armazena sucesso em #Compare boolean
execute store success score #Compare boolean run data modify storage magick:data compare_string set from storage magick:data special_effects

execute as @s if score #Compare boolean matches 1 run function magick_reborn:spell/apply_effect with storage magick:data spell
$execute as @s at @s unless score #Compare boolean matches 1 run function magick_reborn:spell/create_projectile {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}

scoreboard players reset #Compare boolean