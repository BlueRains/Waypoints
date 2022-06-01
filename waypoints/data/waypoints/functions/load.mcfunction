  # minecraft:load
#define storage waypoints:list
#define storage waypoints:settings
scoreboard objectives add wp.add trigger
scoreboard objectives add wp.remove trigger
scoreboard objectives add wp.settings trigger
scoreboard objectives add wp.bin dummy
scoreboard objectives add wp.count dummy
data modify storage waypoints:list template set value {Pos: [0d, 0d, 0d], CustomName: ''}

#Constants
scoreboard players set $30 wp.settings 30
scoreboard players set $-1 wp.settings -1
scoreboard players set $exists wp.bin 0
