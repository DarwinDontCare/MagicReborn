execute as @s if score @s magick < @s maxMagick run scoreboard players add @s magickRegenDelay 1

execute as @s if score @s magick < @s maxMagick if score @s magickRegenDelay matches 10.. run scoreboard players operation @s magick += @s magickRegen
execute as @s if score @s magick > @s maxMagick run scoreboard players operation @s magick = @s maxMagick
execute as @s if score @s magick matches ..-1 run scoreboard players set @s magick 0

execute if score @s magickRegenDelay matches 10.. run scoreboard players reset @s magickRegenDelay