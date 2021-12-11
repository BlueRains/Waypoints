 # minecraft:load
#define storage waypoints:list
#define storage waypoints:settings
scoreboard objectives add wp.add trigger
scoreboard objectives add wp.remove trigger
scoreboard objectives add wp.settings dummy
scoreboard objectives add wp.bin dummy
scoreboard objectives add wp.pos.old.x dummy
scoreboard objectives add wp.pos.old.y dummy
scoreboard objectives add wp.pos.old.z dummy
scoreboard objectives add wp.pos.dif.x dummy
scoreboard objectives add wp.pos.dif.y dummy
scoreboard objectives add wp.pos.dif.z dummy
scoreboard objectives add wp.count dummy
#data remove storage waypoints:list list
#data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"Template"}'}
#data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"2nd"}'}
#data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"3rd"}'}
data modify storage waypoints:list template set value {Pos: [0d, 0d, 0d], CustomName: ''}
# Settings
scoreboard players set $30 wp.settings 30
scoreboard players set $-1 wp.settings -1
scoreboard players set $100 wp.settings 100
