#Help
execute if score @s wp.settings matches 1 run function waypoints:help/menu
execute if score @s wp.settings matches 2 run function waypoints:help/help
execute if score @s wp.settings matches 3 run function waypoints:help/add
execute if score @s wp.settings matches 4 run function waypoints:help/remove
execute if score @s wp.settings matches 5 run function waypoints:help/activate
execute if score @s wp.settings matches 12 run function waypoints:help/settings

# seperate so it only checks the closest armor stand
execute if score @s wp.add matches 1 as @e[type=armor_stand,distance=..3,limit=1] unless entity @s[tag=wp.active] at @s run function waypoints:add/detect
execute if score @s wp.remove matches 1 as @e[type=marker,distance=..3,tag=wp.marker] run function waypoints:remove/start