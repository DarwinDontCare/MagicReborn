tellraw @a {"text":"Datapack carregado com sucesso!","color":"green"}

scoreboard objectives add spell_effect dummy
scoreboard objectives add spell_duration dummy
scoreboard objectives add spell_amplifier dummy
scoreboard objectives add rightClick minecraft.used:carrot_on_a_stick
scoreboard objectives add MotionX dummy
scoreboard objectives add MotionY dummy
scoreboard objectives add MotionZ dummy
scoreboard objectives add boolean dummy
scoreboard objectives add projectileHealth dummy
scoreboard objectives add hit_by_projectile dummy
scoreboard objectives add magick dummy Magick
scoreboard objectives add maxMagick dummy
scoreboard objectives add magickRegen dummy
scoreboard objectives add spellCost dummy
scoreboard objectives add baseCost dummy
scoreboard objectives add magickRegenDelay dummy
scoreboard objectives add calculationResults dummy
scoreboard objectives add currentLevel level
scoreboard objectives add calculationValues dummy
scoreboard objectives add calculationValues2 dummy
scoreboard objectives add baseMaxMagick dummy
scoreboard objectives add baseMagickRegen dummy
scoreboard objectives add mageLevel dummy
scoreboard objectives add maxMagickMod dummy
scoreboard objectives add magickRegenMod dummy
scoreboard objectives add spellDiscount dummy
scoreboard objectives add ticksCount dummy
scoreboard objectives add uuid dummy
scoreboard objectives add index dummy
scoreboard objectives add levelProgressBar dummy
scoreboard objectives add levelProgressBarMaxValue dummy
scoreboard objectives add enchant custom:enchant_item
scoreboard objectives add readBook used:written_book
scoreboard objectives add wandCooldown dummy
scoreboard objectives add dropedItem dropped:clock
scoreboard objectives add freezeTicks dummy
scoreboard objectives add burnTicks dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add prev_x dummy
scoreboard objectives add prev_y dummy
scoreboard objectives add prev_z dummy

gamerule commandBlockOutput false
#gamerule sendCommandFeedback false
execute as @e unless entity @s[scores={magick=1..}] run scoreboard players set @s magick 1
execute as @e unless entity @s[scores={magickRegen=1..}] run scoreboard players set @s magickRegen 1
execute as @e unless entity @s[scores={maxMagick=1..}] run scoreboard players set @s maxMagick 50
execute as @e unless entity @s[scores={baseMaxMagick=1..}] run scoreboard players set @s baseMaxMagick 50
execute as @e unless entity @s[scores={mageLevel=1..}] run scoreboard players set @s mageLevel 1
execute as @e unless entity @s[scores={maxMagickMod=1..}] run scoreboard players set @s maxMagickMod 0
execute as @e unless entity @s[scores={magickRegenMod=1..}] run scoreboard players set @s magickRegenMod 0
execute as @a unless score @s uuid matches -999999999..999999999 run function magick_reborn:data/set_uuid
scoreboard objectives setdisplay list mageLevel
