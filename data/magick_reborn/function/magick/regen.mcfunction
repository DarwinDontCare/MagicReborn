scoreboard players set @s maxMagickMod 0
scoreboard players set @s magickRegenMod 0
execute unless score @s baseMagickRegen matches 1.. run scoreboard players set @s baseMagickRegen 1
execute unless score @s baseMaxMagick matches 1.. run scoreboard players set @s baseMaxMagick 1

execute if data entity @s equipment.head.components."minecraft:enchantments"."magick_reborn:boost_magick" run function magick_reborn:magick/apply_modifiers {path: "equipment.head.components.\"minecraft:enchantments\".\"magick_reborn:boost_magick\"", score: "maxMagickMod", multiplier: 10}
execute if data entity @s equipment.chest.components."minecraft:enchantments"."magick_reborn:boost_magick" run function magick_reborn:magick/apply_modifiers {path: "equipment.chest.components.\"minecraft:enchantments\".\"magick_reborn:boost_magick\"", score: "maxMagickMod", multiplier: 10}
execute if data entity @s equipment.legs.components."minecraft:enchantments"."magick_reborn:boost_magick" run function magick_reborn:magick/apply_modifiers {path: "equipment.legs.components.\"minecraft:enchantments\".\"magick_reborn:boost_magick\"", score: "maxMagickMod", multiplier: 10}
execute if data entity @s equipment.feet.components."minecraft:enchantments"."magick_reborn:boost_magick" run function magick_reborn:magick/apply_modifiers {path: "equipment.feet.components.\"minecraft:enchantments\".\"magick_reborn:boost_magick\"", score: "maxMagickMod", multiplier: 10}

execute if data entity @s equipment.head.components."minecraft:enchantments"."magick_reborn:magick_regen" run function magick_reborn:magick/apply_modifiers {path: "equipment.head.components.\"minecraft:enchantments\".\"magick_reborn:magick_regen\"", score: "magickRegenMod", multiplier: 2}
execute if data entity @s equipment.chest.components."minecraft:enchantments"."magick_reborn:magick_regen" run function magick_reborn:magick/apply_modifiers {path: "equipment.chest.components.\"minecraft:enchantments\".\"magick_reborn:magick_regen\"", score: "magickRegenMod", multiplier: 2}
execute if data entity @s equipment.legs.components."minecraft:enchantments"."magick_reborn:magick_regen" run function magick_reborn:magick/apply_modifiers {path: "equipment.legs.components.\"minecraft:enchantments\".\"magick_reborn:magick_regen\"", score: "magickRegenMod", multiplier: 2}
execute if data entity @s equipment.feet.components."minecraft:enchantments"."magick_reborn:magick_regen" run function magick_reborn:magick/apply_modifiers {path: "equipment.feet.components.\"minecraft:enchantments\".\"magick_reborn:magick_regen\"", score: "magickRegenMod", multiplier: 2}

scoreboard players operation @s calculationValues = @s baseMaxMagick
scoreboard players operation @s calculationValues += @s maxMagickMod
scoreboard players operation @s maxMagick = @s calculationValues

scoreboard players operation @s calculationValues = @s baseMagickRegen
scoreboard players operation @s calculationValues += @s magickRegenMod
scoreboard players operation @s magickRegen = @s calculationValues

execute as @s if score @s magick < @s maxMagick run scoreboard players add @s magickRegenDelay 1

execute as @s if score @s magick < @s maxMagick if score @s magickRegenDelay matches 20.. run scoreboard players operation @s magick += @s magickRegen
execute as @s if score @s magick > @s maxMagick run scoreboard players operation @s magick = @s maxMagick
execute as @s if score @s magick < @s maxMagick unless data entity @s {DeathTime: 0s} run scoreboard players operation @s magick = @s maxMagick
execute as @s if score @s magick matches ..-1 run scoreboard players set @s magick 0

execute if score @s magickRegenDelay matches 20.. run scoreboard players reset @s magickRegenDelay