advancement revoke @s only waypoints:cycle/left
data modify storage waypoints:list temp prepend from storage waypoints:list temp[-1]
data remove storage waypoints:list temp[-1]
data modify entity @e[type=villager,distance=..5,limit=1,tag=wp.left] CustomName set from storage waypoints:list temp[-1]
data modify entity @e[type=villager,distance=..5,limit=1,tag=wp.center] CustomName set from storage waypoints:list temp[0]
data modify entity @e[type=villager,distance=..5,limit=1,tag=wp.right] CustomName set from storage waypoints:list temp[1]