execute as @a at @s run function waypoints:playertick
scoreboard players reset @a wp.add
scoreboard players reset @a wp.remove
scoreboard players reset @a wp.settings
scoreboard players enable @a wp.add
scoreboard players enable @a wp.settings
execute as @e at @s run function waypoints:tick