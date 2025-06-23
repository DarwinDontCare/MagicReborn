execute if entity @s[type=creeper] run data modify entity @s ignited set value true
$execute if entity @s[type=warden] at @s run rotate @s facing entity @e[predicate=!magick_reborn:ignore_entity,tag=!shape_shifted_$(uuid),gamemode=!spectator,sort=nearest,distance=..15,limit=1] feet
$execute if entity @s[type=warden] at @s run function magick_reborn:spell/cast/sonic_boom {uuid: $(uuid), amplifier: 1, range: 100}

execute if entity @s[type=spider] run fill ~ ~ ~ ~ ~ ~ cobweb replace #air
execute if entity @s[type=cave_spider] run fill ~ ~ ~ ~ ~ ~ cobweb replace #air