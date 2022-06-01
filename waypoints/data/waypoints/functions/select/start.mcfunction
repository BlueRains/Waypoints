tag @s add wp.active
tag @e[type=armor_stand,distance=..5,limit=1] add wp.active
execute as @e[type=armor_stand,distance=..5,tag=wp.active] run data modify entity @s CustomNameVisible set value 0
data modify entity @s data.list set from storage waypoints:list list
execute store result score $length wp.bin run data get storage waypoints:list list
execute if score $length wp.bin matches 1 run function waypoints:select/solo
execute unless score $length wp.bin matches 1 run function waypoints:select/removename
execute unless score $length wp.bin matches 1 run execute as @p at @s run function waypoints:select/activate
scoreboard players reset $length wp.bin