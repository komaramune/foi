execute store result score id foi run data get entity @s UUID[0]
execute as @e[type=marker,tag=foi_marker] if score @s foi = id foi run kill @s
function #oh_my_dat:please

execute positioned ~ ~10000 ~ summon text_display run function foi:summon

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {marker_num:0,center:[0d,0d,0d],max_dist:0f}

playsound minecraft:block.note_block.harp record @s ^0 ^ ^ 1 0.890899 1
playsound misekoma:villager_idle3 master @s ~ ~ ~ 10 1 1