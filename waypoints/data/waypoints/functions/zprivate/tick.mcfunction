execute as @e at @s run function waypoints:tick
scoreboard players reset @a wp.add
scoreboard players reset @a wp.remove
scoreboard players enable @a wp.add
scoreboard players enable @a wp.remove