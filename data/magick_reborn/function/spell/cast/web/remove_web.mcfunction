$execute if block ~ ~-.5 ~ #air align xyz run fill ^-$(amplifier) ^-$(amplifier) ^ ^$(amplifier) ^$(amplifier) ^ air replace cobweb
$execute unless block ~ ~-.5 ~ #air align xyz run fill ~-$(amplifier) ~ ~-$(amplifier) ~$(amplifier) ~ ~$(amplifier) air replace cobweb
playsound block.cobweb.break ambient @a[distance=..15] ~ ~ ~ 1 1 0.2
particle block_crumble{block_state:{Name:"cobweb"}} ~ ~ ~ 0.5 0.5 0.5 0.2 30 force @a
kill @s