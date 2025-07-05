$summon tnt_minecart ~ ~ ~ {explosion_power:$(amplifier),NoGravity:true,fuse:0s}
kill @e[type=item_display,tag=meteor,distance=..2,sort=nearest,limit=1]
kill @s