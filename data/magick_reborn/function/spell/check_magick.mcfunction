$scoreboard players set @s spellCost $(cost)
execute as @s unless score @s spellCost > @s magick run function magick_reborn:spell/apply_effect with storage magick:data spell
execute as @s if score @s spellCost > @s magick run tell @s i don't have enought magick :(