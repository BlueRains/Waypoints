tag @s add wp.active
scoreboard players add $active wp.settings 1
data modify entity @s data.list set from storage waypoints:list list
execute as @p at @s run function waypoints:select/activate