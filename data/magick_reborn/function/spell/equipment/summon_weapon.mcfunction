scoreboard players set #Calculation calculationValues 4
$scoreboard players set #Calculation calculationValues2 $(amplifier)

scoreboard players operation #Calculation calculationValues += #Calculation calculationValues2

execute store result storage magick:data summonWeapon.amplifier int 1 run scoreboard players get #Calculation calculationValues
$data modify storage magick:data summonWeapon merge value {duration: $(duration), tool: "$(tool)", model: "$(model)"}

function magick_reborn:spell/equipment/give_summon_weapon with storage magick:data summonWeapon
data remove storage magick:data summonWeapon