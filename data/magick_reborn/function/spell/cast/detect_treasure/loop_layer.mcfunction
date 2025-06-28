$scoreboard players set @s x $(x)
$scoreboard players set @s y $(y)
$scoreboard players set @s z $(z)

execute unless entity @s run return 1

$execute positioned ~$(x) ~$(y) ~$(z) run function magick_reborn:data/loot_rarity/block_loot
$execute positioned ~$(x) ~$(y) ~$(z) run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.02 1 force @a

$execute unless data storage magick:data {loot_rarity: "ignore"} positioned ~$(x) ~$(y) ~$(z) run function magick_reborn:spell/cast/detect_treasure/summon_loot_marker {duration: $(duration)}

execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "x"}}} run scoreboard players add @s y 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "x"}}} if score @s y matches $(index).. run scoreboard players add @s z 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "x"}}} if score @s y matches $(index).. if score @s z matches $(index).. run return 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "x"}}} if score @s y matches $(index).. run scoreboard players set @s y -$(index)
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "x"}}} if score @s z matches $(index).. run scoreboard players set @s z -$(index)

execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "y"}}} run scoreboard players add @s x 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "y"}}} if score @s x matches $(index).. run scoreboard players add @s z 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "y"}}} if score @s x matches $(index).. if score @s z matches $(index).. run return 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "y"}}} if score @s x matches $(index).. run scoreboard players set @s x -$(index)
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "y"}}} if score @s z matches $(index).. run scoreboard players set @s z -$(index)

execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "z"}}} run scoreboard players add @s y 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "z"}}} if score @s y matches $(index).. run scoreboard players add @s x 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "z"}}} if score @s y matches $(index).. if score @s x matches $(index).. run return 1
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "z"}}} if score @s y matches $(index).. run scoreboard players set @s y -$(index)
$execute if data entity @s {data: {detect_treasure: {freeze_coordenate: "z"}}} if score @s x matches $(index).. run scoreboard players set @s x -$(index)

execute store result entity @s data.detect_treasure.x int 1 run scoreboard players get @s x
execute store result entity @s data.detect_treasure.y int 1 run scoreboard players get @s y
execute store result entity @s data.detect_treasure.z int 1 run scoreboard players get @s z

function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure