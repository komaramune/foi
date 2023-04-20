tag @s add foi_marker
data merge entity @s {data:{foi_id:0}}
execute store result entity @s data.foi_id int 1 run scoreboard players get id foi

execute store result score marker_x foi run data get entity @s Pos[0] 1000
execute store result score marker_y foi run data get entity @s Pos[1] 1000
execute store result score marker_z foi run data get entity @s Pos[2] 1000

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].marker_num run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {marker_num:0,center:[0d,0d,0d],max_dist:0f}
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].start run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].start set from entity @s Pos

execute store result score marker_num foi run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].marker_num
execute store result score center_x foi run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[0] 1000
execute store result score center_y foi run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[1] 1000
execute store result score center_z foi run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[2] 1000
execute store result score max_dist foi run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].max_dist 1000

scoreboard players operation center_x foi *= marker_num foi
scoreboard players operation center_y foi *= marker_num foi
scoreboard players operation center_z foi *= marker_num foi
scoreboard players operation center_x foi += marker_x foi
scoreboard players operation center_y foi += marker_y foi
scoreboard players operation center_z foi += marker_z foi
scoreboard players add marker_num foi 1
scoreboard players operation center_x foi /= marker_num foi
scoreboard players operation center_y foi /= marker_num foi
scoreboard players operation center_z foi /= marker_num foi

data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].start
function #util:distance
execute store result score dist foi run data get storage util: out 1000
scoreboard players operation max_dist foi > dist foi
tp @s ~ ~ ~ ~ ~

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].marker_num int 1.0 run scoreboard players get marker_num foi
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[0] double 0.001 run scoreboard players get center_x foi
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[1] double 0.001 run scoreboard players get center_y foi
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].center[2] double 0.001 run scoreboard players get center_z foi
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].max_dist float 0.001 run scoreboard players get max_dist foi