data remove storage magick:data tkBlock

$data modify storage magick:data tkBlock.uuid set value $(uuid)
$data modify storage magick:data tkBlock.data.uuid set value $(uuid)

execute if block ~ ~ ~ #magick_reborn:entity_blocks run data modify storage magick:data tkBlock.BlockState.Name set from block ~ ~ ~ id
execute if block ~ ~ ~ #magick_reborn:entity_blocks run data modify storage magick:data tkBlock.data.id set from block ~ ~ ~ id
execute if block ~ ~ ~ #magick_reborn:entity_blocks run data modify storage magick:data tkBlock.data.Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #magick_reborn:entity_blocks run data modify storage magick:data tkBlock.data.container set value true
execute if block ~ ~ ~ #magick_reborn:entity_blocks run setblock ~ ~ ~ air

#Ices
execute if block ~ ~ ~ ice run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:ice"
execute if block ~ ~ ~ frosted_ice run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:frosted_ice"
execute if block ~ ~ ~ packed_ice run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:packed_ice"
execute if block ~ ~ ~ blue_ice run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:blue_ice"

# Glasses
execute if block ~ ~ ~ glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:glass"
execute if block ~ ~ ~ white_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:white_stained_glass"
execute if block ~ ~ ~ orange_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:orange_stained_glass"
execute if block ~ ~ ~ magenta_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:magenta_stained_glass"
execute if block ~ ~ ~ light_blue_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:light_blue_stained_glass"
execute if block ~ ~ ~ yellow_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:yellow_stained_glass"
execute if block ~ ~ ~ lime_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:lime_stained_glass"
execute if block ~ ~ ~ pink_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:pink_stained_glass"
execute if block ~ ~ ~ gray_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:gray_stained_glass"
execute if block ~ ~ ~ light_gray_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:light_gray_stained_glass"
execute if block ~ ~ ~ cyan_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:cyan_stained_glass"
execute if block ~ ~ ~ purple_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:purple_stained_glass"
execute if block ~ ~ ~ blue_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:blue_stained_glass"
execute if block ~ ~ ~ brown_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:brown_stained_glass"
execute if block ~ ~ ~ green_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:green_stained_glass"
execute if block ~ ~ ~ red_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:red_stained_glass"
execute if block ~ ~ ~ black_stained_glass run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:black_stained_glass"

# Glass Panels
execute if block ~ ~ ~ glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:glass_pane"
execute if block ~ ~ ~ white_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:white_stained_glass_pane"
execute if block ~ ~ ~ orange_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:orange_stained_glass_pane"
execute if block ~ ~ ~ magenta_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:magenta_stained_glass_pane"
execute if block ~ ~ ~ light_blue_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:light_blue_stained_glass_pane"
execute if block ~ ~ ~ yellow_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:yellow_stained_glass_pane"
execute if block ~ ~ ~ lime_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:lime_stained_glass_pane"
execute if block ~ ~ ~ pink_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:pink_stained_glass_pane"
execute if block ~ ~ ~ gray_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:gray_stained_glass_pane"
execute if block ~ ~ ~ light_gray_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:light_gray_stained_glass_pane"
execute if block ~ ~ ~ cyan_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:cyan_stained_glass_pane"
execute if block ~ ~ ~ purple_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:purple_stained_glass_pane"
execute if block ~ ~ ~ blue_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:blue_stained_glass_pane"
execute if block ~ ~ ~ brown_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:brown_stained_glass_pane"
execute if block ~ ~ ~ green_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:green_stained_glass_pane"
execute if block ~ ~ ~ red_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:red_stained_glass_pane"
execute if block ~ ~ ~ black_stained_glass_pane run data modify storage magick:data tkBlock.BlockState.Name set value "minecraft:black_stained_glass_pane"

execute if block ~ ~ ~ #magick_reborn:fragile_blocks run data modify storage magick:data tkBlock.data.fragile set value true
execute if block ~ ~ ~ #magick_reborn:fragile_blocks run setblock ~ ~ ~ air

execute unless block ~ ~ ~ #magick_reborn:entity_blocks unless block ~ ~ ~ #magick_reborn:fragile_blocks run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #magick_reborn:entity_blocks unless block ~ ~ ~ #magick_reborn:fragile_blocks run data modify storage magick:data tkBlock.BlockState.Name set from entity @e[type=item,limit=1,distance=..1] Item.id
execute unless block ~ ~ ~ #magick_reborn:entity_blocks unless block ~ ~ ~ #magick_reborn:fragile_blocks run kill @e[type=item,limit=1,distance=..1]

function magick_reborn:spell/cast/summon_falling_block with storage magick:data tkBlock