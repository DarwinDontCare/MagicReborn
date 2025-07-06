#execute unless data entity @s {data:{rotation:"360"}} run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f]},data:{rotation:"360"}}
#execute if data entity @s {data:{rotation:"360"}} run return run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[-6f,-6f,0f,1f]},data:{rotation:"0"}}

data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{left_rotation:[180f,180f,0f,1f]},data:{rotation:"360"}}
