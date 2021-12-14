tag @s remove spawned
summon armor_stand ~ ~ ~ {Tags: ["wp.as", "wp.selector"], Invisible: 1b, CustomNameVisible: 1b}
execute if entity @s[tag=wp.left] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.left
execute if entity @s[tag=wp.center] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.center
execute if entity @s[tag=wp.right] run tag @e[type=armor_stand,limit=1,sort=nearest] add wp.right
function waypoints:select/cycle/rename