# Aplica o efeito da flecha mágica na entidade atingida
$scoreboard players set #BlockDetect boolean $(hit_block)

data modify storage magick:data effectIterator.index set value 0
$data modify storage magick:data effectIterator.caster_id set value $(caster_id)
$data modify storage magick:data effectIterator.nbt_path set value "entity @e[tag=magic_projectile, distance=..$(range), sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects"
data modify storage magick:data effectIterator.subject set value "@s"

execute unless entity @s[nbt={Invisible:true,NoGravity:true}] run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute if score #BlockDetect boolean matches 0 as @e[tag=magic_projectile, tag=!fireball, sort=nearest, nbt={data: {caster_id: $(caster_id)}}] if entity @s[tag=!freeze] run kill
execute if score #BlockDetect boolean matches 1 run kill @s
scoreboard players reset #BlockDetect boolean
