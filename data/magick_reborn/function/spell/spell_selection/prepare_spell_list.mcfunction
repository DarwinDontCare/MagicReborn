$scoreboard players set #ParseSpellList index $(index)

# Stop Condition
$execute unless data $(path)[$(index)] run return 1

# Variable Setup
execute if score #ParseSpellList index matches 0 run data modify storage magick:data spellList.spells_display set value []
execute if score #ParseSpellList index matches 0 run data modify storage magick:data spellList.spells_select set value []

# Parse Spell
$function magick_reborn:spell/spell_selection/prepare_spell_object {path: "$(path)[$(index)]"}

# Display
data modify storage magick:data spellList.spells_display append value {initial: false, action: {type: "dynamic/run_command"}}
data modify storage magick:data spellList.spells_display[-1].label set from storage magick:data spellObject.label
data modify storage magick:data spellList.spells_display[-1].tooltip set from storage magick:data spellObject.lore
data modify storage magick:data spellList.spells_display[-1].id set from storage magick:data spellObject.id

data modify storage magick:data macroVars set value {}
$data modify storage magick:data macroVars.index set value $(index)
$data modify storage magick:data macroVars.uuid set value $(uuid)

data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/open_spell_info"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -2
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellList.spells_display[-1].action.template set from storage magick:data macroGenerator.template

# Select
data modify storage magick:data spellList.spells_select append value {initial: false, action: {type: "dynamic/run_command"}}
data modify storage magick:data spellList.spells_select[-1].label set from storage magick:data spellObject.label
data modify storage magick:data spellList.spells_select[-1].tooltip set from storage magick:data spellObject.lore
data modify storage magick:data spellList.spells_select[-1].id set from storage magick:data spellObject.id

data modify storage magick:data macroVars set value {}
data modify storage magick:data macroVars.id set from storage magick:data spellObject.id
$data modify storage magick:data macroVars.uuid set value $(uuid)
data modify storage magick:data stringfy.string_value set from storage magick:data macroVars
function magick_reborn:spell/spell_selection/stringfy with storage magick:data stringfy

data modify storage magick:data macroGenerator.function set value "magick_reborn:spell/spell_selection/change_spell"
data modify storage magick:data macroGenerator.variables set string storage magick:data string_value 0 -2
data modify storage magick:data macroGenerator.var set value "text: \\\"$(text)\\\""
function magick_reborn:spell/spell_selection/generate_macro with storage magick:data macroGenerator

data modify storage magick:data spellList.spells_select[-1].action.template set from storage magick:data macroGenerator.template

# Increment index & recursion
scoreboard players add #ParseSpellList index 1
execute store result storage magick:data PrepareSpellList.index int 1 run scoreboard players get #ParseSpellList index
$data modify storage magick:data PrepareSpellList.uuid set value $(uuid)
$data modify storage magick:data PrepareSpellList.path set value "$(path)"

function magick_reborn:spell/spell_selection/prepare_spell_list with storage magick:data PrepareSpellList
