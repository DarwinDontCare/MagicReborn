execute unless entity @s[nbt={OnGround:true}] run return run tell @s "I need to be on ground to cast this :("

$summon armor_stand ~ ~ ~ {Tags:["fangs_start"], data: {amplifier: $(amplifier), area: $(area), caster_id: $(uuid)},Invisible:true,Invulnerable:true,Silent:true,Small:true,NoGravity:true}
$tp @e[type=armor_stand,tag=fangs_start,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] @s

$data modify entity @e[type=armor_stand,tag=fangs_start,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] Rotation[1] set value 0
$execute as @e[type=armor_stand,tag=fangs_start,nbt={data:{caster_id: $(uuid)}},sort=nearest,limit=1] at @s rotated as @s run tp @s ^ ^ ^1