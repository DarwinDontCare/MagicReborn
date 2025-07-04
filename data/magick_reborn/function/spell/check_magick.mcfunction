$scoreboard players set @s spellCost $(cost)
execute store result score #Broken boolean run function magick_reborn:data/detect_broken

execute as @s if score @s spellCost > @s magick unless entity @s[gamemode=creative] run return run tell @s i don't have enought magick :(
execute as @s if score #Broken boolean matches 1 unless entity @s[gamemode=creative] run return run tell @s my wand is broken :(
data modify storage magick:data spell.nothing set value ""
function magick_reborn:spell/spell_execution_logic with storage magick:data spell
kill @e[tag=effect_comparer]