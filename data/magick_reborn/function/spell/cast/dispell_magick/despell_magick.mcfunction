$data modify storage magick $(uuid).dispell_magick set value {}
$data modify storage magick $(uuid).dispell_magick.active_effects set from entity @s active_effects
$data modify storage magick $(uuid).dispell_magick.uuid set value $(uuid)
$data modify storage magick $(uuid).dispell_magick.amplifier set value $(amplifier)
$data modify storage magick $(uuid).dispell_magick.index set value 0

$function magick_reborn:spell/cast/dispell_magick/iterate_active_effects with storage magick $(uuid).dispell_magick