scoreboard objectives add foi dummy

execute as @e[type=text_display,tag=foi_display] at @s run function foi:display

execute as @e[type=marker,tag=foi_marker] store result score @s foi run data get entity @s data.foi_id
execute as @a store result score @s foi run data get entity @s UUID[0]
execute as @a[tag=sneaked] unless predicate foi:foi at @s anchored eyes positioned ^ ^ ^1.5 run function foi:finish
tag @a[tag=sneaked] remove sneaked
execute as @a if predicate foi:foi at @s anchored eyes positioned ^ ^ ^1.5 run function foi:indi
# scoreboard objectives remove foi

# execute at @e[type=marker,tag=foi_marker] run particle crit ~ ~ ~ 0 0 0 0 0 force
execute at @e[type=marker,tag=foi_marker] run particle minecraft:dust 10 10 10 0.5 ~ ~ ~ 0 0 0 0 0 force