say schedule teleport
execute as @e[type=marker,tag=wp.tpmarker] if score @s wp.count matches 1.. at @s run function waypoints:move/teleport
execute as @e[type=marker,tag=wp.tpmarker] if score @s wp.count matches 0 at @s run function waypoints:move/end