$execute store result storage magick $(uuid).mageLevel int 1 run scoreboard players get @s mageLevel
$execute store result storage magick $(uuid).levelProgressBar int 1 run scoreboard players get @s levelProgressBar
$execute store result storage magick $(uuid).levelProgressBarMaxValue int 1 run scoreboard players get @s levelProgressBarMaxValue

$function magick_reborn:data/stats_menu_display with storage magick $(uuid)