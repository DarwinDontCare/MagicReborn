execute if entity @s[type=creeper] run data modify entity @s ignited set value true
$execute if entity @s[type=warden] at @s run rotate @s facing entity @e[predicate=!magick_reborn:ignore_entity,tag=!shape_shifted_$(uuid),gamemode=!spectator,sort=nearest,distance=..15,limit=1] feet
$execute if entity @s[type=warden] at @s run function magick_reborn:spell/cast/sonic_boom {uuid: $(uuid), amplifier: 1, range: 100}

execute if entity @s[type=spider] run function magick_reborn:spell/cast/web/web {amplifier: 1, duration: 10}
execute if entity @s[type=cave_spider] run function magick_reborn:spell/cast/web/web {amplifier: 1, duration: 10}