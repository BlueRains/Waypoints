#Gamemode switches & tag added in waypoints:select/cycle/center
data modify storage waypoints:list location set from entity @e[type=marker,tag=wp.marker,tag=wp.active,limit=1] data.list[0].Pos
data modify entity @s Pos set from storage waypoints:list location
tp @p[tag=wp.teleporting] @s
tag @p remove wp.teleporting
kill @s