$scoreboard players set @s x $(x)
$scoreboard players set @s y $(y)
$scoreboard players set @s z $(z)

execute unless entity @s run return 1

$execute positioned ~$(x) ~$(y) ~$(z) run function magick_reborn:spell/cast/plant_growth/grow_plants

execute if data entity @s {data: {freeze_coordenate: "x"}} run scoreboard players add @s y 1
$execute if data entity @s {data: {freeze_coordenate: "x"}} if score @s y matches $(amplifier).. run scoreboard players add @s z 1
$execute if data entity @s {data: {freeze_coordenate: "x"}} if score @s y matches $(amplifier).. if score @s z matches $(amplifier).. run return 1
$execute if data entity @s {data: {freeze_coordenate: "x"}} if score @s y matches $(amplifier).. run scoreboard players set @s y -$(amplifier)
$execute if data entity @s {data: {freeze_coordenate: "x"}} if score @s z matches $(amplifier).. run scoreboard players set @s z -$(amplifier)

execute if data entity @s {data: {freeze_coordenate: "y"}} run scoreboard players add @s x 1
$execute if data entity @s {data: {freeze_coordenate: "y"}} if score @s x matches $(amplifier).. run scoreboard players add @s z 1
$execute if data entity @s {data: {freeze_coordenate: "y"}} if score @s x matches $(amplifier).. if score @s z matches $(amplifier).. run return 1
$execute if data entity @s {data: {freeze_coordenate: "y"}} if score @s x matches $(amplifier).. run scoreboard players set @s x -$(amplifier)
$execute if data entity @s {data: {freeze_coordenate: "y"}} if score @s z matches $(amplifier).. run scoreboard players set @s z -$(amplifier)

execute if data entity @s {data: {freeze_coordenate: "z"}} run scoreboard players add @s y 1
$execute if data entity @s {data: {freeze_coordenate: "z"}} if score @s y matches $(amplifier).. run scoreboard players add @s x 1
$execute if data entity @s {data: {freeze_coordenate: "z"}} if score @s y matches $(amplifier).. if score @s x matches $(amplifier).. run return 1
$execute if data entity @s {data: {freeze_coordenate: "z"}} if score @s y matches $(amplifier).. run scoreboard players set @s y -$(amplifier)
$execute if data entity @s {data: {freeze_coordenate: "z"}} if score @s x matches $(amplifier).. run scoreboard players set @s x -$(amplifier)

execute store result entity @s data.x int 1 run scoreboard players get @s x
execute store result entity @s data.y int 1 run scoreboard players get @s y
execute store result entity @s data.z int 1 run scoreboard players get @s z

function magick_reborn:spell/cast/plant_growth/loop_layer with entity @s data