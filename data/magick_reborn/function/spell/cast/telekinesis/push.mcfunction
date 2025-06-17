$execute rotated as @a[scores={uuid=$(uuid)},limit=1] anchored eyes positioned ^ ^ ^-1 run summon wind_charge ~ ~-.5 ~ {Tags:["knockback_provider"],LeftOwner:true,HasBeenShot:true}

# Armazenar posição do falling_block multiplicada por 1000
execute as @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] store result score #PushDirection x run data get entity @s Pos[0] 1000
execute as @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] store result score #PushDirection y run data get entity @s Pos[1] 1000
execute as @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] store result score #PushDirection z run data get entity @s Pos[2] 1000

# Armazenar posição do armor_stand (target) multiplicada por 1000
execute as @s store result score #PushDirection MotionX run data get entity @s Pos[0] 1000
execute as @s store result score #PushDirection MotionY run data get entity @s Pos[1] 1000
execute as @s store result score #PushDirection MotionZ run data get entity @s Pos[2] 1000

scoreboard players operation #PushDirection MotionX -= #PushDirection x
scoreboard players operation #PushDirection MotionY -= #PushDirection y
scoreboard players operation #PushDirection MotionZ -= #PushDirection z

execute store result entity @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] Motion[0] double .0005 run scoreboard players get #PushDirection MotionX
execute store result entity @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] Motion[1] double .0005 run scoreboard players get #PushDirection MotionY
execute store result entity @e[type=wind_charge,tag=knockback_provider,limit=1,sort=nearest] Motion[1] double .0005 run scoreboard players get #PushDirection MotionZ