$data modify entity @s data merge value {x:-$(amplifier), y:1, z:-$(amplifier), freeze_coordenate: "y", amplifier: $(amplifier)}

function magick_reborn:spell/cast/plant_growth/loop_layer with entity @s data
$data modify entity @s data merge value {x:-$(amplifier), y:0, z:-$(amplifier)}
function magick_reborn:spell/cast/plant_growth/loop_layer with entity @s data
$data modify entity @s data merge value {x:-$(amplifier), y:-1, z:-$(amplifier)}
function magick_reborn:spell/cast/plant_growth/loop_layer with entity @s data

kill @s