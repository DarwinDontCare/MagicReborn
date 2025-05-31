execute if score @s enchant matches 1.. run scoreboard players add @s levelProgressBar 40

execute store result storage magick:data uuid int 1 run scoreboard players get @s uuid

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spell_book:true}}}}] \
if score @s readBook matches 1.. run function magick_reborn:magick/handle_spell_book_read with storage magick:data


execute if score @s levelProgressBar >= @s levelProgressBarMaxValue run scoreboard players add @s mageLevel 1
execute if score @s levelProgressBar >= @s levelProgressBarMaxValue run scoreboard players operation @s levelProgressBar -= @s levelProgressBarMaxValue

scoreboard players reset @s enchant
scoreboard players reset @s readBook