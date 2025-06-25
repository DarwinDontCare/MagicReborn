summon magma_cube ~ ~ ~ {Size:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags: ["treasure_marker"],Glowing: true,PersistenceRequired:1b,DeathLootTable:"none",active_effects:[{id:"invisibility",duration:9999999,show_particles:false}]}

execute as @e[type=magma_cube,tag=treasure_marker,sort=nearest,limit=1] if data storage magick:data {loot_rarity: "common"} run team join common_loot @s
execute as @e[type=magma_cube,tag=treasure_marker,sort=nearest,limit=1] if data storage magick:data {loot_rarity: "uncommon"} run team join uncommon_loot @s
execute as @e[type=magma_cube,tag=treasure_marker,sort=nearest,limit=1] if data storage magick:data {loot_rarity: "rare"} run team join rare_loot @s
execute as @e[type=magma_cube,tag=treasure_marker,sort=nearest,limit=1] if data storage magick:data {loot_rarity: "epic"} run team join epic_loot @s

$execute as @e[type=magma_cube,tag=treasure_marker,sort=nearest,limit=1] run scoreboard players set @s projectileHealth $(duration)