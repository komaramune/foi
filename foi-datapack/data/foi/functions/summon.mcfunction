tag @s add foi_display

data merge storage foi: {Pos:[0d,0d,0d]}
data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center

data merge storage foi: {scale:[1f,1f,1f]}
execute store result storage foi: scale[0] float 0.00035 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].max_dist 1000
execute store result storage foi: scale[1] float 0.00035 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].max_dist 1000
execute store result storage foi: scale[2] float 0.00035 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].max_dist 1000
data modify entity @s transformation.scale set from storage foi: scale

data merge entity @s {billboard:"center",text:'{"text":"\\uE201","font":"misekoma:default"}',background:0}