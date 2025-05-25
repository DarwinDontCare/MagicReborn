# Partículas baseadas no efeito armazenado no NBT data.effect

execute if entity @s[nbt={data: {effect: "minecraft:speed"}}] run particle minecraft:dust{color:[0.56,0.94,0.64],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:slowness"}}] run particle minecraft:snowflake ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:haste"}}] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:mining_fatigue"}}] run particle minecraft:dust{color:[0.4,0.3,0.2],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:strength"}}] run particle minecraft:dust{color:[0.96,0.38,0.32],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:instant_health"}}] run particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:instant_damage"}}] run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:jump_boost"}}] run particle minecraft:dust{color:[0.38,0.63,0.92],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:nausea"}}] run particle minecraft:portal ~ ~ ~ .2 .2 .2 0.2 20 force
execute if entity @s[nbt={data: {effect: "minecraft:regeneration"}}] run particle minecraft:heart ~ ~ ~ 0.1 0.1 0.1 0 10 force
execute if entity @s[nbt={data: {effect: "minecraft:resistance"}}] run particle minecraft:dust{color:[0.3,0.3,0.3],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:fire_resistance"}}] run particle minecraft:flame ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:water_breathing"}}] run particle minecraft:bubble ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:invisibility"}}] run particle minecraft:end_rod ~ ~ ~ .05 .05 .05 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:blindness"}}] run particle minecraft:dust{color:[0,0,0],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:night_vision"}}] run particle minecraft:glow ~ ~ ~ .1 .1 .1 0 10 force
execute if entity @s[nbt={data: {effect: "minecraft:hunger"}}] run particle minecraft:dust{color:[0.6,0.4,0.2],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:weakness"}}] run particle minecraft:dust{color:[0.4,0.4,0.4],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:poison"}}] run particle minecraft:dust{color:[0.2,0.8,0.2],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:wither"}}] run particle minecraft:soul_fire_flame ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:health_boost"}}] run particle minecraft:heart ~ ~ ~ 0.15 0.15 0.15 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:absorption"}}] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:saturation"}}] run particle minecraft:dust{color:[1.0,0.5,0.0],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:glowing"}}] run particle minecraft:glow ~ ~ ~ .1 .1 .1 0 10 force
execute if entity @s[nbt={data: {effect: "minecraft:levitation"}}] run particle minecraft:dragon_breath ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:luck"}}] run particle minecraft:dust{color:[0.0,1.0,0.0],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:unluck"}}] run particle minecraft:dust{color:[0.5,0.0,0.0],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:slow_falling"}}] run particle minecraft:falling_spore_blossom ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:conduit_power"}}] run particle minecraft:dolphin ~ ~ ~ .1 .1 .1 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:dolphins_grace"}}] run particle minecraft:splash ~ ~ ~ .1 .1 .1 0.1 10 force
execute if entity @s[nbt={data: {effect: "minecraft:bad_omen"}}] run particle minecraft:angry_villager ~ ~ ~ .1 .1 .1 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:hero_of_the_village"}}] run particle minecraft:happy_villager ~ ~ ~ .1 .1 .1 0 5 force
execute if entity @s[nbt={data: {effect: "minecraft:fireball"}}] run particle minecraft:flame ~ ~ ~ .1 .1 .1 0.01 10 force
execute if entity @s[nbt={data: {effect: "minecraft:darkness"}}] run particle minecraft:dust{color:[0.1,0.1,0.1],scale:1} ~ ~ ~ .125 .125 .125 0 50 force

