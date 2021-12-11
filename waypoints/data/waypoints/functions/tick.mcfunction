 # minecraft:tick
execute if score @s wp.add matches 1 unless score $active wp.settings matches 1 as @e[type=armor_stand,distance=..1,limit=1] run function waypoints:create/detect
execute if score @s wp.remove matches 1 as @e[type=marker,distance=..1,tag=wp.marker] run function waypoints:create/remove
execute if entity @s[tag=wp.marker] if block ~ ~ ~ #waypoints:activator[powered=true] run function waypoints:select/start
execute as @s[tag=wp.active] unless entity @p[distance=..5] run function waypoints:select/end
scoreboard players enable @s wp.add
scoreboard players enable @s wp.remove