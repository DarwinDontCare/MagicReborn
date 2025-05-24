# Aplica o efeito da flecha mágica na entidade atingida
$effect give @s $(effect) $(duration) $(amplifier)
scoreboard players reset @s hit_by_projectile
kill @e[tag=magic_projectile, distance=2]
