data modify entity @e[type=armor_stand,tag=wp.left,limit=1] CustomName set from entity @s data.list[-1].CustomName
data modify entity @e[type=armor_stand,tag=wp.center,limit=1] CustomName set from entity @s data.list[0].CustomName
data modify entity @e[type=armor_stand,tag=wp.right,limit=1] CustomName set from entity @s data.list[1].CustomName
#This is if there are only 2 waypoints.
execute as @e[type=armor_stand,distance=..5,tag=wp.as,name="Armor Stand"] run data modify entity @s CustomName set from entity @e[type=marker,distance=..5,tag=wp.marker,tag=wp.active,limit=1] data.list[0].CustomName