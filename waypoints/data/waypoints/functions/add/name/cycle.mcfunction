#define storage list:compare

execute store success score $CompFail wp.bin run data modify storage list:compare list[0].CustomName set from storage list:compare B
data remove storage list:compare list[0]
execute if score $CompFail wp.bin matches 0 run scoreboard players set $exists wp.bin 1
execute if data storage list:compare list[0] run function waypoints:add/name/cycle