advancement revoke @s only waypoints:cycle/right
data modify storage waypoints:list temp append from storage waypoints:list temp[0]
data remove storage waypoints:list temp[0]
function waypoints:select/cycle/rename
#tp @s ~ ~ ~ facing entity @e[tag=wp.center,limit=1]