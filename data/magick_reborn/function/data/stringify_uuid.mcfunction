data modify storage magick:data concatenated_string set value ""

data modify storage magick:data uuid_string.str1 set from entity @s UUID[0]
data modify storage magick:data uuid_string.str2 set value "-"
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string.str1 set from storage magick:data concatenated_string
data modify storage magick:data uuid_string.str2 set from entity @s UUID[1]
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string.str1 set from storage magick:data concatenated_string
data modify storage magick:data uuid_string.str2 set value "-"
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string.str1 set from storage magick:data concatenated_string
data modify storage magick:data uuid_string.str2 set from entity @s UUID[2]
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string.str1 set from storage magick:data concatenated_string
data modify storage magick:data uuid_string.str2 set value "-"
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string.str1 set from storage magick:data concatenated_string
data modify storage magick:data uuid_string.str2 set from entity @s UUID[3]
function magick_reborn:data/concatenate_string with storage magick:data uuid_string

data modify storage magick:data uuid_string set from storage magick:data concatenated_string