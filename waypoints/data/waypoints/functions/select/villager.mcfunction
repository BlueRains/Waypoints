tag @s remove spawned
summon armor_stand ~ ~1.2 ~ {Tags: ["wp.as", "wp.selector"], Marker: 1b, Invisible: 1b, CustomNameVisible: 1b}
execute if entity @s[tag=wp.left] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.left
execute if entity @s[tag=wp.center] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.center
execute if entity @s[tag=wp.right] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.right
execute as @e[type=marker,tag=wp.marker,tag=wp.active,distance=..5] run function waypoints:select/cycle/rename