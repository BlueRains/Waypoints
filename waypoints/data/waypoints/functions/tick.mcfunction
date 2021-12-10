 # minecraft:tick
execute if score @s wp.add matches 1 as @e[type=armor_stand,distance=..1,limit=1] run function waypoints:create/check