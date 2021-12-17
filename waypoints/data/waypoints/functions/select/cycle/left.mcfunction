data modify entity @s data.list prepend from entity @s data.list[-1]
data remove entity @s data.list[-1]
function waypoints:zprivate/cycle/rename
#tp @s ~ ~ ~ facing entity @e[tag=wp.center,limit=1]