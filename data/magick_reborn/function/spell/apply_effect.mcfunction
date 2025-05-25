
$execute if entity @s[scores={sneaking=1..}] run effect give @s $(effect) $(duration) $(amplifier)
$execute as @s at @s unless entity @s[scores={sneaking=1..}] run function magick_reborn:spell/create_projectile {effect: "$(effect)", duration: $(duration), amplifier: $(amplifier), caster_id: $(caster_id)}
