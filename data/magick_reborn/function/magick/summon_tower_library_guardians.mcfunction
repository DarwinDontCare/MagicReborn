playsound entity.guardian.ambient ambient @a[distance=..17] ~ ~ ~ 1 1 .2
particle portal ~ ~ ~ -1 .1 -1 .3 100 force @a

particle smoke ~-9 ~ ~ .1 .4 .1 .3 100 force @a
summon iron_golem ~-9 ~ ~ {Tags:["tower_library_guardian"],CustomName:"Library Guardian"}

scoreboard players set @s calculationResults 1200