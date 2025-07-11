scoreboard players reset @s spectralFormEffectDuration
$bossbar remove minecraft:spectral_form$(uuid)

$execute if data storage magick {$(uuid): {spectral_form: {gamemode: 0}}} run gamemode survival
$execute if data storage magick {$(uuid): {spectral_form: {gamemode: 1}}} run gamemode creative
$execute if data storage magick {$(uuid): {spectral_form: {gamemode: 2}}} run gamemode adventure