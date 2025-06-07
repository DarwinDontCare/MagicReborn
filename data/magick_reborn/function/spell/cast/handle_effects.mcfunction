$scoreboard players set #IterateEffects index $(index)

$execute unless data $(nbt_path)[$(index)] run return 0

$data modify storage magick $(caster_id).cast_effect set from $(nbt_path)[$(index)]
$data modify storage magick $(caster_id).cast_effect.caster_id set value $(caster_id)
$execute as $(subject) store success score #IterateEffects boolean run function magick_reborn:spell/apply_effect with storage magick $(caster_id).cast_effect

execute if score #IterateEffects boolean matches 0 run return 0

scoreboard players add #IterateEffects index 1
execute store result storage magick:data effectIterator.index int 1 run scoreboard players get #IterateEffects index

function magick_reborn:spell/cast/handle_effects with storage magick:data effectIterator