$scoreboard players set @s index $(index)

scoreboard players reset #Compare boolean
$function magick_reborn:magick/check_unlocked_effects {uuid: $(uuid), index: 0, effect_index: $(index)}
$execute if score #Compare boolean matches 1 run data modify storage magick $(uuid).unlocked_effects append from entity @s SelectedItem.components."minecraft:custom_data".effects[$(index)]

execute if score #Compare boolean matches 1 run scoreboard players add @s levelProgressBar 80
execute if score #Compare boolean matches 0 run return fail

title @s title x----x
$title @s subtitle "Unlocked $(display)"

$scoreboard players set #Compare calculationValues $(limit)
execute if score @s index >= #Compare calculationValues run return run scoreboard players reset @s index

scoreboard players add @s index 1
execute store result storage magick:data unlock_effects.index int 1 run scoreboard players get @s index
function magick_reborn:magick/loop_spell_book_effects with storage magick:data unlock_effects