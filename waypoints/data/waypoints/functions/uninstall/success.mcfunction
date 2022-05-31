data remove storage waypoints:list list
data remove storage waypoints:list template
data remove storage waypoints:list location
kill @e[tag=wp.marker]
kill @e[tag=wp.as]
kill @e[tag=wp.villager]
scoreboard objectives remove wp.add
scoreboard objectives remove wp.remove
scoreboard objectives remove wp.settings
scoreboard objectives remove wp.bin
scoreboard objectives remove wp.pos.old.x
scoreboard objectives remove wp.pos.old.y
scoreboard objectives remove wp.pos.old.z
scoreboard objectives remove wp.pos.dif.x
scoreboard objectives remove wp.pos.dif.y
scoreboard objectives remove wp.pos.dif.z
scoreboard objectives remove wp.count