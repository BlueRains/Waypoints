advancement revoke @s only waypoints:cycle/right
data modify entity @s data.list append from entity @s data.list[0]
data remove entity @s data.list[0]
function waypoints:select/cycle/rename
#tp @s ~ ~ ~ facing entity @e[tag=wp.center,limit=1]