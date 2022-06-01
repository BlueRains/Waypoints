#define storage list:compare
data modify storage list:compare A set from storage waypoints:list list[0]
execute store success score $CompFail wp.bin run data modify storage list:compare A set from storage list:compare B
execute if score $CompFail wp.bin matches 1 run data modify storage waypoints:list list append from storage waypoints:list list[0]
data remove storage waypoints:list list[0]
scoreboard players remove $length wp.bin 1
execute if score $length wp.bin matches 1.. if score $CompFail wp.bin matches 1 run function waypoints:remove/cycle
