# Aplica o efeito da flecha mágica na entidade atingida
$function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "entity @e[tag=magic_projectile, distance=..$(range), sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects", caster_id: $(caster_id)}
$execute as @e[tag=magic_projectile, tag=!fireball, sort=nearest, nbt={data: {caster_id: $(caster_id)}}] if entity @s[tag=!freeze] run kill
