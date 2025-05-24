# Partículas baseadas no efeito armazenado no NBT data.effect

execute if entity @s[nbt={data: {effect: "minecraft:speed"}}] run particle minecraft:dust{color:[0.56,0.94,0.64],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:jump_boost"}}] run particle minecraft:dust{color:[0.38,0.63,0.92],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:strength"}}] run particle minecraft:dust{color:[0.96,0.38,0.32],scale:1} ~ ~ ~ .125 .125 .125 0 50 force
execute if entity @s[nbt={data: {effect: "minecraft:instant_health"}}] run particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0 5 force
