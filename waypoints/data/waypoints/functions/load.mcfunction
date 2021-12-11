 # minecraft:load
#define storage waypoints:list
#define storage waypoints:settings
scoreboard objectives add wp.add trigger
scoreboard objectives add wp.settings dummy
scoreboard objectives add wp.bin dummy
data remove storage waypoints:list list
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"Template"}'}
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"2nd"}'}
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"3rd"}'}
# Settings
scoreboard players set $30 wp.settings 30
