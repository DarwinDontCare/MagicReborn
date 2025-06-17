tag @s add tk_bind
$tag @s add tk_$(uuid)

$data modify storage magick $(uuid).tk.amplifier set value $(amplifier)
$data modify storage magick $(uuid).tk.uuid set value $(uuid)

$kill @e[tag=raycast_hit_tk,nbt={data:{caster_id: $(uuid)}}]