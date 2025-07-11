$execute unless entity @s[type=player] as @a[scores={uuid=$(uuid)},limit=1] run say This spell don't work on mobs :(
$function magick_reborn:spell/cast/spectral_form/remove_spectral_form {uuid: $(uuid)}

$execute run data modify storage magick:data createBossbar set value {name: "Spectral Form Effect", id: "minecraft:spectral_form", target: "@s", max_value: $(duration), value: $(duration)}
$data modify storage magick:data createBossbar.target_uuid set value $(uuid)

function magick_reborn:data/create_bossbar with storage magick:data createBossbar

$data modify storage magick $(uuid).spectral_form.gamemode set from entity @a[scores={uuid=$(uuid)}, limit=1] playerGameType
$scoreboard players set @s spectralFormEffectDuration $(duration)
gamemode spectator