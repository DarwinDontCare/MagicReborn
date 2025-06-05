scoreboard players reset @s freezeTicks
effect clear @s slowness
execute store result storage magick:data unfreeze.burn_ticks int 1 run scoreboard players get @s burnTicks
function magick_reborn:magick/revert_burn_ticks with storage magick:data unfreeze