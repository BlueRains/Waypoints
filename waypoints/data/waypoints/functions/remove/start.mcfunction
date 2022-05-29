scoreboard players reset @p wp.remove

data modify storage list:compare B set from entity @s data.waypoint
execute store result score $length wp.bin run data get storage waypoints:list list
function waypoints:remove/cycle
kill @e[tag=wp.villager,distance=..5]
kill @e[tag=wp.as,distance=..5]
kill @e[tag=wp.as_marker,distance=..5]
kill @e[tag=wp.marker,distance=..5]
kill @s