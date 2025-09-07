rotate @s facing ^.1 ^ ^10
execute unless data entity @s data.original_x store result entity @s data.original_x double 1 run data get entity @s Pos[1]
execute unless entity @s[nbt={data:{move_up:true}}] run tp @s ~ ~-.01 ~
execute if entity @s[nbt={data:{move_up:true}}] run tp @s ~ ~.01 ~
