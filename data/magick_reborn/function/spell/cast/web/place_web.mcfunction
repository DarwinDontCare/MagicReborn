$execute if block ~ ~-.5 ~ #air align xyz run fill ^-$(amplifier) ^-$(amplifier) ^ ^$(amplifier) ^$(amplifier) ^ cobweb replace #air
$execute unless block ~ ~-.5 ~ #air align xyz run fill ~-$(amplifier) ~ ~-$(amplifier) ~$(amplifier) ~ ~$(amplifier) cobweb replace #air
playsound block.cobweb.place ambient @a[distance=..15] ~ ~ ~ 1 1 0.2
particle block{block_state:{Name:"cobweb"}} ~ ~ ~ 0.5 0.5 0.5 0.2 30 force @a