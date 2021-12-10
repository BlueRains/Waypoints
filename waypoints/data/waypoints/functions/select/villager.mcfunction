summon armor_stand ~ ~ ~ {Tags: ["wp.as"], Invisible: 1b, CustomNameVisible: 1b}
data modify entity @e[type=armor_stand,limit=1,sort=nearest] Tags append from entity @s Tags[1]
tag @s remove spawned
execute as @e[type=armor_stand,tag=wp.left] run data modify entity @s CustomName set from storage waypoints:list temp[-1].CustomName
execute as @e[type=armor_stand,tag=wp.center] run data modify entity @s CustomName set from storage waypoints:list temp[0].CustomName
execute as @e[type=armor_stand,tag=wp.right] run data modify entity @s CustomName set from storage waypoints:list temp[1].CustomName