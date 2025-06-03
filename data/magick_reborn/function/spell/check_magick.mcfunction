$scoreboard players set @s spellCost $(cost)

execute as @s if score @s spellCost > @s magick unless entity @s[gamemode=creative] run tell @s i don't have enought magick :(
execute as @s unless score @s spellCost > @s magick run function magick_reborn:spell/spell_execution_logic with storage magick:data spell
execute as @s if entity @s[gamemode=creative] run function magick_reborn:spell/spell_execution_logic with storage magick:data spell