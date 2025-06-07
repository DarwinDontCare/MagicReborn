$execute at @s run fill ^-$(y) ^-1 ^-$(y) ^$(y) ^$(y) ^$(y) air replace blue_ice

execute at @s run playsound block.glass.break ambient @a[distance=..20] ~ ~ ~ 1 1 0.2
execute at @s run particle block_crumble{block_state:blue_ice} ~ ~2 ~ 1 1 1 1 40 force @a

kill @s