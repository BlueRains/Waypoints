advancement revoke @s only waypoints:cycle/left
data modify storage waypoints:list temp prepend from storage waypoints:list temp[-1]
data remove storage waypoints:list temp[-1]
function waypoints:select/cycle/rename
#tp @s ~ ~ ~ facing entity @e[tag=wp.center,limit=1]