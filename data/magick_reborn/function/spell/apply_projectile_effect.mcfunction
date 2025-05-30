# Aplica o efeito da flecha mágica na entidade atingida
say applying effect
function magick_reborn:spell/cast/handle_effects {subject: "@s", nbt_path: "entity @e[tag=magic_projectile, distance=2, sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects"}
scoreboard players reset @s hit_by_projectile
$kill @e[tag=magic_projectile, distance=2, sort=nearest, nbt={data: {caster_id: $(caster_id)}}]
