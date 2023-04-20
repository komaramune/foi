execute store result score scale foi run data get entity @s transformation.scale[0] 9990

execute store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get scale foi
execute store result entity @s transformation.scale[1] float 0.0001 run scoreboard players get scale foi
execute store result entity @s transformation.scale[2] float 0.0001 run scoreboard players get scale foi

execute if score scale foi matches ..10 run kill @s