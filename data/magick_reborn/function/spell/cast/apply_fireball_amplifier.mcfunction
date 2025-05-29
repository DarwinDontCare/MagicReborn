scoreboard players set #Compare boolean 0
$execute unless score #Compare index matches 0.. run scoreboard players set #Compare index $(index)

$say current index: $(index)

data modify storage magick:data spell.fireballId set value "minecraft:fireball"
$data modify storage magick:data spell.effectCompare set from entity @e[type=fireball,nbt={data:{caster_id: $(caster_id)}},limit=1,sort=nearest] data.effects[$(index)].effect

execute store result score #Compare boolean run data modify storage magick:data spell.fireballId set from storage magick:data spell.effectCompare
$execute as @e[type=fireball,nbt={data:{caster_id: $(caster_id)}},limit=1,sort=nearest] if score #Compare boolean matches 0 run data modify entity @s ExplosionPower set from entity @s data.effects[$(index)].amplifier
execute if score #Compare boolean matches 0 run return run scoreboard players reset #Compare boolean

execute if score #Compare index matches ..3 run scoreboard players add #Compare index 1
execute store result storage magick:data fireball.index int 1 run scoreboard players get #Compare index
$data modify storage magick:data fireball merge value {caster_id: $(caster_id)}
function magick_reborn:spell/cast/apply_fireball_amplifier with storage magick:data fireball