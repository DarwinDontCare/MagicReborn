$scoreboard players set #BlockDamage calculationValues $(amplifier)
scoreboard players set #BlockDamage calculationValues2 3

execute if block ~ ~ ~ bedrock run tell @s "i can't lift that"
$execute if block ~ ~ ~ bedrock run return run kill @e[tag=raycast_hit_tk,nbt={data:{caster_id: $(uuid)}}]

$function magick_reborn:spell/cast/set_falling_block_state {uuid: $(uuid)}

execute if block ~ ~ ~ #magick_reborn:heavy_blocks run scoreboard players operation #BlockDamage calculationValues *= #BlockDamage calculationValues2
$execute store result entity @e[tag=tk_$(uuid),type=falling_block,limit=1] data.damage int 1 run scoreboard players get #BlockDamage calculationValues

$scoreboard players set #BlockDamage calculationValues $(amplifier)
$execute store result entity @e[tag=tk_$(uuid),type=falling_block,limit=1] data.speed double .001 run scoreboard players get #BlockDamage calculationValues

setblock ~ ~ ~ air replace

$kill @e[tag=raycast_hit_tk,nbt={data:{caster_id: $(uuid)}}]