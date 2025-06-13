$scoreboard players set #DeleteSpell index $(index)

$execute unless data storage magick $(uuid).known_spells[$(index)] run return 1
$data modify storage magick:data compareSpellId set value $(id)

$execute store success score #DeleteSpell boolean run data modify storage magick:data compareSpellId set from storage magick $(uuid).known_spells[$(index)].id

$execute if score #DeleteSpell boolean matches 0 run return run data remove storage magick $(uuid).known_spells[$(index)]

scoreboard players add #DeleteSpell index 1
execute store result storage magick:data deleteSpell.index int 1 run scoreboard players get #DeleteSpell index
$data modify storage magick:data deleteSpell.uuid set value $(uuid)
$data modify storage magick:data deleteSpell.id set value $(id)

function magick_reborn:spell/spell_selection/remove_known_spell with storage magick:data deleteSpell