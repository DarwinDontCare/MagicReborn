execute store result score @s x run data get entity @s Pos[0] 1000
execute store result score @s y run data get entity @s Pos[1] 1000
execute store result score @s z run data get entity @s Pos[2] 1000

scoreboard players operation @s x -= @s prev_x
scoreboard players operation @s y -= @s prev_y
scoreboard players operation @s z -= @s prev_z


scoreboard players operation @s squared_x = @s x
scoreboard players operation @s squared_x *= @s x

scoreboard players operation @s squared_y = @s y
scoreboard players operation @s squared_y *= @s y

scoreboard players operation @s squared_z = @s z
scoreboard players operation @s squared_z *= @s z


scoreboard players set @s length_sq 0
scoreboard players operation @s length_sq += @s squared_x
scoreboard players operation @s length_sq += @s squared_y
scoreboard players operation @s length_sq += @s squared_z


scoreboard players operation in sqrt = @s length_sq
function magick_reborn:data/math/sqrt


scoreboard players operation @s MotionX = @s x
scoreboard players operation @s MotionY = @s y
scoreboard players operation @s MotionZ = @s z

scoreboard players operation @s MotionX /= out sqrt
scoreboard players operation @s MotionY /= out sqrt
scoreboard players operation @s MotionZ /= out sqrt

scoreboard players operation @s length_sq /= out sqrt

execute store result score @s prev_x run data get entity @s Pos[0] 1000
execute store result score @s prev_y run data get entity @s Pos[1] 1000
execute store result score @s prev_z run data get entity @s Pos[2] 1000