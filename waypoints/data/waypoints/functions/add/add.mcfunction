summon marker ~ ~ ~ {Tags: ["wp.marker"]}
data modify storage waypoints:list bin set from storage waypoints:list template
data modify storage waypoints:list temp set from entity @s
data modify storage waypoints:list bin.CustomName set from storage waypoints:list temp.CustomName
data modify storage waypoints:list bin.Pos set from storage waypoints:list temp.Pos
data remove storage waypoints:list temp
data modify storage waypoints:list list append from storage waypoints:list bin
data modify entity @e[type=marker,distance=..1,tag=wp.marker,limit=1] data.waypoint set from storage waypoints:list bin
data remove storage waypoints:list bin
data merge entity @s {CustomNameVisible: 1b, Invisible: 1b, Marker: 1b, Tags: ["wp.as_marker"]}
scoreboard players reset @p wp.add
tp @s ~ ~1.5 ~