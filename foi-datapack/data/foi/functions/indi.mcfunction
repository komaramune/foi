execute unless entity @e[type=marker,tag=foi_marker,distance=..0.1] store result score id foi run data get entity @s UUID[0]
execute unless entity @e[type=marker,tag=foi_marker,distance=..0.1] run function #oh_my_dat:please
execute unless entity @e[type=marker,tag=foi_marker,distance=..0.1] summon marker run function foi:marker
tag @s add sneaked
title @s times 0t 5t 0t
title @s title {"text":"まるかいて"}