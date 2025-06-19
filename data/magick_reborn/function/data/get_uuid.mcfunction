execute store result storage magick:data run_function.uuid int 1 run scoreboard players get @s uuid
$data modify storage magick:data run_function merge value $(params)
$execute as @s run function $(function) with storage magick:data run_function