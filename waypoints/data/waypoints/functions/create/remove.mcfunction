scoreboard players reset @p wp.remove
say removed
data modify storage waypoints:list bin set from storage waypoints:list template
data modify storage waypoints:list temp set from entity @s
data modify storage waypoints:list bin merge from storage waypoints:list temp
data remove storage waypoints:list temp
data modify storage tools:compare B set from storage waypoints:list bin
data remove storage waypoints:list bin
kill @e[tag=wp.villager,distance=..5]
kill @e[tag=wp.as,distance=..5]
kill @e[tag=wp.as_marker,distance=..5]
kill @e[tag=wp.marker,distance=..1]
kill @s