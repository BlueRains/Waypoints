execute if block ~ ~ ~ #waypoints:activator if data entity @s CustomName run function waypoints:add/name/check
execute unless block ~ ~ ~ #waypoints:activator run tellraw @p {"text":"The waypoint also needs an activating pressure plate or button. \nDon't worry, you can change it later.","color": "dark_red","bold": true}
execute unless data entity @s CustomName run tellraw @p {"text":"This waypoint still needs a name.","color": "dark_red","bold": true}
say add detect