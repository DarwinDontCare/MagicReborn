$scoreboard players set @s index $(index)

execute if score @s index matches 7.. run return run kill @s

data modify entity @s data.detect_treasure.freeze_coordenate set value "x"
$data modify entity @s data.detect_treasure.x set value $(index)
$data modify entity @s data.detect_treasure.y set value -$(index)
$data modify entity @s data.detect_treasure.z set value -$(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

data modify entity @s data.detect_treasure.freeze_coordenate set value "y"
$data modify entity @s data.detect_treasure.x set value -$(index)
$data modify entity @s data.detect_treasure.y set value $(index)
$data modify entity @s data.detect_treasure.z set value -$(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

data modify entity @s data.detect_treasure.freeze_coordenate set value "z"
$data modify entity @s data.detect_treasure.x set value -$(index)
$data modify entity @s data.detect_treasure.y set value -$(index)
$data modify entity @s data.detect_treasure.z set value $(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

data modify entity @s data.detect_treasure.freeze_coordenate set value "x"
$data modify entity @s data.detect_treasure.x set value -$(index)
$data modify entity @s data.detect_treasure.y set value -$(index)
$data modify entity @s data.detect_treasure.z set value -$(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

data modify entity @s data.detect_treasure.freeze_coordenate set value "y"
$data modify entity @s data.detect_treasure.x set value -$(index)
$data modify entity @s data.detect_treasure.y set value -$(index)
$data modify entity @s data.detect_treasure.z set value -$(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

data modify entity @s data.detect_treasure.freeze_coordenate set value "z"
$data modify entity @s data.detect_treasure.x set value -$(index)
$data modify entity @s data.detect_treasure.y set value -$(index)
$data modify entity @s data.detect_treasure.z set value -$(index)
function magick_reborn:spell/cast/detect_treasure/loop_layer with entity @s data.detect_treasure

$execute if score @s index matches $(amplifier).. run return run kill @s
scoreboard players add @s index 1

execute store result entity @s data.detect_treasure.index int 1 run scoreboard players get @s index

scoreboard players set @s ticksCount 1