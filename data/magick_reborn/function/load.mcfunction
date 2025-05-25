tellraw @a {"text":"Datapack carregado com sucesso!","color":"green"}

scoreboard objectives add spell_effect dummy
scoreboard objectives add spell_duration dummy
scoreboard objectives add spell_amplifier dummy
scoreboard objectives add rightClick minecraft.used:carrot_on_a_stick
scoreboard objectives add sneaking custom:sneak_time
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

execute as @e unless entity @s[scores={magick=1..}] run scoreboard players set @s magick 1
execute as @e unless entity @s[scores={magickRegen=1..}] run scoreboard players set @s magickRegen 1
execute as @e unless entity @s[scores={maxMagick=1..}] run scoreboard players set @s maxMagick 100
