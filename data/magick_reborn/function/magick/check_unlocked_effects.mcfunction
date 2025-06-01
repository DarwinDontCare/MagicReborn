$scoreboard players set #Compare index $(index)

$execute unless data storage magick $(uuid).unlocked_effects[$(index)] run return run scoreboard players get #Compare boolean

$data modify storage magick $(uuid).compare_effect set from storage magick $(uuid).unlocked_effects[$(index)]
$execute store success score #Compare boolean run data modify storage magick $(uuid).compare_effect set from entity @s SelectedItem.components."minecraft:custom_data".effects[$(effect_index)]

execute if score #Compare boolean matches 0 run return fail

scoreboard players add #Compare index 1

$data modify storage magick:data check_unlocked_effects set value {uuid: $(uuid), effect_index: $(effect_index)}
execute store result storage magick:data check_unlocked_effects.index int 1 run scoreboard players get #Compare index

function magick_reborn:magick/check_unlocked_effects with storage magick:data check_unlocked_effects