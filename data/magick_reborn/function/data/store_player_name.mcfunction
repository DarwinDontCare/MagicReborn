$summon item_display ~ ~ ~ {Invisible:true,NoGravity:true,Invulnerable:true,data:{uuid: $(uuid)},Tags:["player_name_getter"]}
$loot replace entity @e[tag=player_name_getter,nbt={data:{uuid:$(uuid)}},limit=1] container.0 loot magick_reborn:player_head

$data modify storage magick $(uuid).name set from entity @e[tag=player_name_getter,nbt={data:{uuid:$(uuid)}},limit=1] item.components."minecraft:profile".name
tag @s add savedName
$kill @e[tag=player_name_getter,nbt={data:{uuid:$(uuid)}},limit=1]