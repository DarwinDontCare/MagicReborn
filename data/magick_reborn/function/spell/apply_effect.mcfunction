# Coloca o valor a ser comparado no storage temporário
scoreboard players operation @s magick -= @s spellCost
$say $(effect)
$data modify storage magick:data compare_string set value "$(effect)"
data modify storage magick:data special_effects set value "minecraft:fireball"

# Tenta modificar o mesmo storage, e armazena sucesso em #Compare boolean
execute store success score #Compare boolean run data modify storage magick:data compare_string set from storage magick:data special_effects

execute unless score #Compare boolean matches 1 run say fireball
execute if score #Compare boolean matches 1 run say no fireball

$execute if entity @s[scores={sneaking=1..}] if score #Compare boolean matches 1 run effect give @s $(effect) $(duration) $(amplifier)
$execute as @s at @s unless entity @s[scores={sneaking=1..}] run function magick_reborn:spell/create_projectile {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}
$execute as @s at @s unless score #Compare boolean matches 1 run function magick_reborn:spell/create_projectile {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}

scoreboard players reset #Compare boolean