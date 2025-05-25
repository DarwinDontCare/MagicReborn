execute store result storage magick:data magick int 1 run scoreboard players get @s magick
execute store result storage magick:data max_magick int 1 run scoreboard players get @s maxMagick

execute as @s run function magick_reborn:magick/display_magick with storage magick:data