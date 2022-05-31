tag @e[tag=wp.selector,distance=..5] add wp.end
execute as @e[type=armor_stand,distance=..5,tag=wp.active] run data modify entity @s CustomNameVisible set value 1
tag @e[type=armor_stand,distance=..5,tag=wp.active] remove wp.active
tp @e[tag=wp.end] ~ -200 ~
tag @s remove wp.active
kill @e[tag=wp.end]