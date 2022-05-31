 # minecraft:load
#define storage waypoints:list
#define storage waypoints:settings
scoreboard objectives add wp.add trigger
scoreboard objectives add wp.remove trigger
scoreboard objectives add wp.settings trigger
scoreboard objectives add wp.bin dummy
scoreboard objectives add wp.pos.old.x dummy
scoreboard objectives add wp.pos.old.y dummy
scoreboard objectives add wp.pos.old.z dummy
scoreboard objectives add wp.pos.dif.x dummy
scoreboard objectives add wp.pos.dif.y dummy
scoreboard objectives add wp.pos.dif.z dummy
scoreboard objectives add wp.count dummy
#data remove storage waypoints:list list
#data modify storage waypoints:list list append value {Pos: [100.0d, 0d, 0d], CustomName: '{"text":"1st"}'}
#data modify storage waypoints:list list append value {Pos: [0d, 100.0d, 0d], CustomName: '{"text":"2nd"}'}
#data modify storage waypoints:list list append value {Pos: [0d, 0d, 100.0d], CustomName: '{"text":"3rd"}'}
#data modify storage waypoints:list list append value {Pos: [50d, 0d, 50d], CustomName: '{"text":"4th"}'}
data modify storage waypoints:list template set value {Pos: [0d, 0d, 0d], CustomName: ''}
# Settings
#How big is one teleport step (0.1 blocks)
scoreboard players set $step wp.settings 1000


#Constants
scoreboard players set $30 wp.settings 30
scoreboard players set $-1 wp.settings -1
scoreboard players set $exists wp.bin 0
