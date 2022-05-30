data modify entity @e[type=armor_stand,tag=wp.left,limit=1] CustomName set from entity @s data.list[-1].CustomName
data modify entity @e[type=armor_stand,tag=wp.center,limit=1] CustomName set from entity @s data.list[0].CustomName
data modify entity @e[type=armor_stand,tag=wp.right,limit=1] CustomName set from entity @s data.list[1].CustomName