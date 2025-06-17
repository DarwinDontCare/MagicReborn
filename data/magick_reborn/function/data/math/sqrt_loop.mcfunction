scoreboard players operation out sqrt += tmp sqrt
scoreboard players operation out sqrt /= 2 sqrt

scoreboard players operation tmp sqrt = in sqrt
scoreboard players operation tmp sqrt /= out sqrt

execute if score out sqrt > tmp sqrt run function magick_reborn:data/math/sqrt_loop