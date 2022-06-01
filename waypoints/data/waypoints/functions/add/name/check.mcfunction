data modify storage list:compare B set from entity @s CustomName
data modify storage list:compare list set from storage waypoints:list list
function waypoints:add/name/cycle
execute if score $exists wp.bin matches 1 run function waypoints:add/name/fail
execute if score $exists wp.bin matches 0 run function waypoints:add/add
scoreboard players set $exists wp.bin 0
scoreboard players reset $CompFail wp.bin
data remove storage list:compare A
data remove storage list:compare list