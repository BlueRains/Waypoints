tellraw @a [{"nbt":"Pos","entity": "@s"},{"text": " "},{"score":{"name":"@s","objective":"wp.count"}}]
scoreboard players operation @s wp.pos.old.x += @s wp.pos.dif.x
scoreboard players operation @s wp.pos.old.y += @s wp.pos.dif.y
scoreboard players operation @s wp.pos.old.z += @s wp.pos.dif.z
data modify storage waypoints:list location set value [0.0d, 350.0d, 0.0d]
execute store result storage waypoints:list location[0] double 0.1 run scoreboard players get @s wp.pos.old.x
execute store result storage waypoints:list location[1] double 0.001 run scoreboard players get @s wp.pos.old.y
execute store result storage waypoints:list location[2] double 0.1 run scoreboard players get @s wp.pos.old.z
data modify entity @s Pos set from storage waypoints:list location
tp @p[tag=wp.teleporting] @s
data remove storage waypoints:list location
scoreboard players remove @s wp.count 1
schedule function waypoints:zprivate/schedule/teleport 1t