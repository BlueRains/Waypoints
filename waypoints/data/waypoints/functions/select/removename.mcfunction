#define storage list:compare
data modify storage list:compare A set from entity @s data.list[0].CustomName
execute store success score $CompFail wp.bin run data modify storage list:compare A set from entity @s data.waypoint.CustomName
execute if score $CompFail wp.bin matches 1 run data modify entity @s data.list append from entity @s data.list[0]
data remove entity @s data.list[0]
scoreboard players remove $length wp.bin 1
execute if score $length wp.bin matches 1.. if score $CompFail wp.bin matches 1 run function waypoints:select/removename
