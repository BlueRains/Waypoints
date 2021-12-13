summon marker ~ ~ ~ {Tags: ["wp.marker"]}
data modify storage waypoints:list bin set from storage waypoints:list template
data modify storage waypoints:list temp set from entity @s
data modify storage waypoints:list bin merge from storage waypoints:list temp
data remove storage waypoints:list temp
data modify storage waypoints:list list append from storage waypoints:list bin
data remove storage waypoints:list bin
data merge entity @s {CustomNameVisible: 1b, Invisible: 1b, Marker: 1b, Tags: ["wp.marker"]}
tp @s ~ ~1 ~