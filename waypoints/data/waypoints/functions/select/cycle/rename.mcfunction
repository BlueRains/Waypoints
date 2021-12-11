execute as @e[type=armor_stand,tag=wp.left] run data modify entity @s CustomName set from storage waypoints:list temp[-1].CustomName
execute as @e[type=armor_stand,tag=wp.center] run data modify entity @s CustomName set from storage waypoints:list temp[0].CustomName
execute as @e[type=armor_stand,tag=wp.right] run data modify entity @s CustomName set from storage waypoints:list temp[1].CustomName