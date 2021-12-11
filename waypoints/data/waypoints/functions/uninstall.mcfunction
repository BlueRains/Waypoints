tellraw @a [{"text": "Still available waypoints: "},{"nbt": "list","storage": "waypoints:list"}]
data remove storage waypoints:list list
data remove storage waypoints:list template
kill @e[tag=wp.marker]
kill @e[tag=wp.as]
kill @e[tag=wp.villager]
scoreboard objectives remove wp.add
scoreboard objectives remove wp.bin
scoreboard objectives remove wp.pos.x
scoreboard objectives remove wp.pos.y
scoreboard objectives remove wp.pos.z
scoreboard objectives remove wp.settings