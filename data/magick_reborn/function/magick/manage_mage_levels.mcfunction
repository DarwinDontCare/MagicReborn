execute as @s[scores={mageLevel=..1}] run scoreboard players set @s baseMaxMagick 50

# Nível 1-10
execute as @s[scores={mageLevel=2..10}, tag=!Apprendice] run tellraw @s {"text":"You just started your Mage Journey, you are now an Apprendice"}
execute as @s[scores={mageLevel=2..10}, tag=!Apprendice] run scoreboard players set @s baseMaxMagick 60
execute as @s[scores={mageLevel=2..10}, tag=!Apprendice] run scoreboard players set @s baseMagickRegen 2
execute as @s[tag=Apprendice] unless score @s mageLevel matches 2..10 run tag @s remove Apprendice
execute as @s[scores={mageLevel=2..10}] run tag @s add Apprendice
execute as @s[scores={mageLevel=11..}] run tag @s remove Apprendice

# Nível 11-20
execute as @s[scores={mageLevel=11..20}, tag=!Adept] run tellraw @s {"text":"Your skills grow. You are now an Adept Mage."}
execute as @s[scores={mageLevel=11..20}, tag=!Adept] run scoreboard players set @s baseMaxMagick 100
execute as @s[scores={mageLevel=11..20}, tag=!Adept] run scoreboard players set @s baseMagickRegen 3
execute as @s[tag=Adept] unless score @s mageLevel matches 11..20 run tag @s remove Adept
execute as @s[scores={mageLevel=11..20}] run tag @s add Adept
execute as @s[scores={mageLevel=21..}] run tag @s remove Adept

# Nível 21-30
execute as @s[scores={mageLevel=21..30}, tag=!Expert] run tellraw @s {"text":"You have become an Expert Mage!"}
execute as @s[scores={mageLevel=21..30}, tag=!Expert] run scoreboard players set @s baseMaxMagick 150
execute as @s[scores={mageLevel=21..30}, tag=!Expert] run scoreboard players set @s baseMagickRegen 4
execute as @s[tag=Expert] unless score @s mageLevel matches 21..30 run tag @s remove Expert
execute as @s[scores={mageLevel=21..30}] run tag @s add Expert
execute as @s[scores={mageLevel=31..}] run tag @s remove Expert

# Nível 31-40
execute as @s[scores={mageLevel=31..40}, tag=!Master] run tellraw @s {"text":"Mastery achieved. You are now a Master Mage."}
execute as @s[scores={mageLevel=31..40}, tag=!Master] run scoreboard players set @s baseMaxMagick 200
execute as @s[scores={mageLevel=31..40}, tag=!Master] run scoreboard players set @s baseMagickRegen 5
execute as @s[tag=Master] unless score @s mageLevel matches 31..40 run tag @s remove Master
execute as @s[scores={mageLevel=31..40}] run tag @s add Master
execute as @s[scores={mageLevel=41..}] run tag @s remove Master

# Nível 41-50
execute as @s[scores={mageLevel=41..50}, tag=!Archmage] run tellraw @s {"text":"You transcend normal magic. Welcome, Archmage!"}
execute as @s[scores={mageLevel=41..50}, tag=!Archmage] run scoreboard players set @s baseMaxMagick 250
execute as @s[scores={mageLevel=41..50}, tag=!Archmage] run scoreboard players set @s baseMagickRegen 6
execute as @s[tag=Archmage] unless score @s mageLevel matches 41..50 run tag @s remove Archmage
execute as @s[scores={mageLevel=41..50}] run tag @s add Archmage
execute as @s[scores={mageLevel=51..}] run tag @s remove Archmage

# Nível 51-60
execute as @s[scores={mageLevel=51..60}, tag=!Elementalist] run tellraw @s {"text":"The elements obey you. You are now an Elementalist."}
execute as @s[scores={mageLevel=51..60}, tag=!Elementalist] run scoreboard players set @s baseMaxMagick 300
execute as @s[scores={mageLevel=51..60}, tag=!Elementalist] run scoreboard players set @s baseMagickRegen 7
execute as @s[tag=Elementalist] unless score @s mageLevel matches 51..60 run tag @s remove Elementalist
execute as @s[scores={mageLevel=51..60}] run tag @s add Elementalist
execute as @s[scores={mageLevel=61..}] run tag @s remove Elementalist

# Nível 61-70
execute as @s[scores={mageLevel=61..70}, tag=!Sorcerer] run tellraw @s {"text":"Dark forces and arcane knowledge make you a Sorcerer."}
execute as @s[scores={mageLevel=61..70}, tag=!Sorcerer] run scoreboard players set @s baseMaxMagick 350
execute as @s[scores={mageLevel=61..70}, tag=!Sorcerer] run scoreboard players set @s baseMagickRegen 8
execute as @s[tag=Sorcerer] unless score @s mageLevel matches 61..70 run tag @s remove Sorcerer
execute as @s[scores={mageLevel=61..70}] run tag @s add Sorcerer
execute as @s[scores={mageLevel=71..}] run tag @s remove Sorcerer

# Nível 71-80
execute as @s[scores={mageLevel=71..80}, tag=!Warlock] run tellraw @s {"text":"You now wield forbidden magic as a Warlock."}
execute as @s[scores={mageLevel=71..80}, tag=!Warlock] run scoreboard players set @s baseMaxMagick 400
execute as @s[scores={mageLevel=71..80}, tag=!Warlock] run scoreboard players set @s baseMagickRegen 9
execute as @s[tag=Warlock] unless score @s mageLevel matches 71..80 run tag @s remove Warlock
execute as @s[scores={mageLevel=71..80}] run tag @s add Warlock
execute as @s[scores={mageLevel=81..}] run tag @s remove Warlock

# Nível 81-90
execute as @s[scores={mageLevel=81..90}, tag=!Grandmaster] run tellraw @s {"text":"You have become a Grandmaster of magic!"}
execute as @s[scores={mageLevel=81..90}, tag=!Grandmaster] run scoreboard players set @s baseMaxMagick 450
execute as @s[scores={mageLevel=81..90}, tag=!Grandmaster] run scoreboard players set @s baseMagickRegen 10
execute as @s[tag=Grandmaster] unless score @s mageLevel matches 81..90 run tag @s remove Grandmaster
execute as @s[scores={mageLevel=81..90}] run tag @s add Grandmaster
execute as @s[scores={mageLevel=91..}] run tag @s remove Grandmaster

# Nível 91-100
execute as @s[scores={mageLevel=91..}, tag=!Supreme] run tellraw @s {"text":"You have ascended to the Supreme Mage. None rival your power!"}
execute as @s[scores={mageLevel=91..}, tag=!Supreme] run scoreboard players set @s baseMaxMagick 500
execute as @s[scores={mageLevel=91..}, tag=!Supreme] run scoreboard players set @s baseMagickRegen 11
execute as @s[tag=Supreme] unless score @s mageLevel matches 91.. run tag @s remove Supreme
execute as @s[scores={mageLevel=91..}] run tag @s add Supreme

scoreboard players set #Calculation calculationValues 100
scoreboard players set @s levelProgressBarMaxValue 1000
scoreboard players operation @s levelProgressBarMaxValue *= @s mageLevel
scoreboard players operation @s levelProgressBarMaxValue /= #Calculation calculationValues

scoreboard players reset #Calculation calculationValues
