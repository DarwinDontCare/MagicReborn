# Salva o índice Y de início
$scoreboard players set @s index $(index)

# Loop vertical para buscar espaço com 2 blocos de ar + chão não-lava
$execute positioned ~ ~$(index) ~ unless block ~ ~-1 ~ lava if block ~ ~ ~ #air if block ~ ~1 ~ #air run return run tp @s ~ ~ ~
    
# Se estiver no Nether e o index passou de 128, seta booleano como 1 (limite vertical alcançado)
execute at @s if dimension the_nether if score @s index matches 128.. run scoreboard players set @s boolean 1
execute at @s if dimension the_nether if score @s index matches 128.. run scoreboard players remove @s index 1

# Enquanto não achou (boolean ≠ 1), incrementa o index para subir 1 bloco
execute at @s unless score @s boolean matches 1 run scoreboard players add @s index 1

# Salva o resultado final do índice no storage
execute store result storage magick:data plane_shift.find_empty_spot.index int 1 run scoreboard players get @s index

# Chama a próxima etapa da spell
function magick_reborn:spell/cast/plane_shift/find_empty_spot with storage magick:data plane_shift.find_empty_spot
