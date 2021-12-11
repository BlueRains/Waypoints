tp @p[tag=wp.teleporting] @s
scoreboard players operation @s wp.pos.old.x += @s wp.pos.dif.x
scoreboard players operation @s wp.pos.old.y += @s wp.pos.dif.y
scoreboard players operation @s wp.pos.old.z += @s wp.pos.dif.z
execute store result storage waypoints:list location[0] double 1 run scoreboard players get @s wp.pos.old.x
execute store result storage waypoints:list location[1] double 0.001 run scoreboard players get @s wp.pos.old.y
execute store result storage waypoints:list location[2] double 1 run scoreboard players get @s wp.pos.old.z
data modify entity @s Pos merge from storage waypoints:list location
data remove storage waypoints:list location
scoreboard players remove @s wp.count 1
