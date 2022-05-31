  # minecraft:tick
execute as @s[type=marker,tag=wp.marker,tag=!wp.active] if block ~ ~ ~ #waypoints:activator[powered=true] run function waypoints:select/start
execute as @s[type=marker,tag=wp.active] unless entity @p[distance=..3] unless block ~ ~ ~ #waypoints:activator[powered=true] run function waypoints:select/end
execute as @s[type=marker,tag=wp.marker] run scoreboard players enable @a[distance=..3] wp.remove
# Maybe add across dimensions at some point?
# Overworld: 19
# Nether: 20
# The end: 17
# ????!? Probably length of name