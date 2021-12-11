summon armor_stand ~ ~ ~ {Tags: ["wp.as"], Invisible: 1b, CustomNameVisible: 1b}
execute if entity @s[tag=!wp.center] run data modify entity @e[type=armor_stand,limit=1,sort=nearest] Tags append from entity @s Tags[1]
execute if entity @s[tag=wp.center] run data modify entity @e[type=armor_stand,limit=1,sort=nearest] Tags append from entity @s Tags[2]
tag @s remove spawned
function waypoints:select/cycle/rename