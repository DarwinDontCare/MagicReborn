$data modify storage magick $(caster_id).cast_effect set from $(nbt_path)[0]
$data modify storage magick $(caster_id).cast_effect.caster_id set value $(caster_id)
$execute as $(subject) run function magick_reborn:spell/apply_effect with storage magick $(caster_id).cast_effect

$data modify storage magick $(caster_id).cast_effect set from $(nbt_path)[1]
$data modify storage magick $(caster_id).cast_effect.caster_id set value $(caster_id)
$execute as $(subject) run function magick_reborn:spell/apply_effect with storage magick $(caster_id).cast_effect

$data modify storage magick $(caster_id).cast_effect set from $(nbt_path)[2]
$data modify storage magick $(caster_id).cast_effect.caster_id set value $(caster_id)
$execute as $(subject) run function magick_reborn:spell/apply_effect with storage magick $(caster_id).cast_effect

$data modify storage magick $(caster_id).cast_effect set from $(nbt_path)[3]
$data modify storage magick $(caster_id).cast_effect.caster_id set value $(caster_id)
$execute as $(subject) run function magick_reborn:spell/apply_effect with storage magick $(caster_id).cast_effect