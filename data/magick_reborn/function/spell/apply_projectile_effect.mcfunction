# Aplica o efeito da flecha mágica na entidade atingida
$scoreboard players set #BlockDetect boolean $(hit_block)

$function magick_reborn:utils/play_sound {sound: "$(hit_sound)"}

$execute store result storage magick:data spellHit.area double 1 run data get entity @e[tag=magick_projectile, sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects[0].area
$data modify storage magick:data spellHit.particle set value "$(particle)"
function magick_reborn:spell/spell_explosion with storage magick:data spellHit

data modify storage magick:data effectIterator.index set value 0
$data modify storage magick:data effectIterator.caster_id set value $(caster_id)
$data modify storage magick:data effectIterator.is_burst set value $(is_burst)
$data modify storage magick:data effectIterator.nbt_path set value "entity @e[tag=magick_projectile, sort=nearest, limit=1, nbt={data: {caster_id: $(caster_id)}}] data.effects"
data modify storage magick:data effectIterator.subject set value "@s"

execute unless entity @s[nbt={Invisible:true,NoGravity:true}] run function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator
$execute if score #BlockDetect boolean matches 0 as @e[tag=magick_projectile, tag=!fireball, sort=nearest, nbt={data: {caster_id: $(caster_id)}}] if entity @s[tag=!freeze] run kill
execute if score #BlockDetect boolean matches 1 run kill @s
$execute as @e[tag=magick_projectile, sort=nearest, nbt={data: {caster_id: $(caster_id)}},scores={projectileHealth=..0}] run kill @s
scoreboard players reset #BlockDetect boolean
