# Aplica o efeito da flecha mágica na entidade atingida
$function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "entity @e[tag=magic_projectile, distance=..2, sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects"}
$kill @e[tag=magic_projectile, distance=2, sort=nearest, nbt={data: {caster_id: $(caster_id)}}]
