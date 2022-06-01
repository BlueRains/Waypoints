say solo
tag @s remove wp.active
tag @e[type=armor_stand,distance=..5,limit=1] remove wp.active
execute as @e[type=armor_stand,distance=..5,tag=wp.active] run data modify entity @s CustomNameVisible set value 1
title @p actionbar [{"text": "You need more than one waypoint to teleport","bold": true,"color": "gold"}]