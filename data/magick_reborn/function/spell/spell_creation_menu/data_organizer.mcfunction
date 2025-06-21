$data modify storage magick $(uuid).spell_creation merge value {\
    effect0: "None",\
    effect1: "None",\
    effect2: "None",\
    effect3: "None",\
    tooltip0: "",\
    tooltip1: "",\
    tooltip2: "",\
    tooltip3: "",\
    magick_cost: 0,\
    xp_cost: 0,\
    spell_name: ""\
}
$data modify storage magick $(uuid).spell_creation.spell_effects set value [\
        {effect: "none", amplifier: 1, duration: 1, magick_cost: 0, experience_cost: 0},\
        {effect: "none", amplifier: 1, duration: 1, magick_cost: 0, experience_cost: 0},\
        {effect: "none", amplifier: 1, duration: 1, magick_cost: 0, experience_cost: 0},\
        {effect: "none", amplifier: 1, duration: 1, magick_cost: 0, experience_cost: 0}\
    ]
data modify storage magick:data on_submit set value "duration:$(duration), amplifier:$(amplifier), effect:\\\"$(effect)\\\""
data modify storage magick:data main_on_submit set value "name:\\\"$(name)\\\""

$data modify storage magick $(uuid).spell_creation.on_submit set from storage magick:data on_submit
$data modify storage magick $(uuid).spell_creation.main_on_submit set from storage magick:data main_on_submit
$data modify storage magick $(uuid).spell_creation.uuid set value $(uuid)
$function magick_reborn:spell/spell_creation_menu/main_spell_creation_menu with storage magick $(uuid).spell_creation