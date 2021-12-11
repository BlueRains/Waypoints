tp @p[tag=wp.teleporting] @s
tag @p remove wp.teleporting
tp @p @e[tag=wp.marker,limit=1]
# Restore previous gamemode
execute if score @p wp.bin matches 0 run gamemode survival @p
execute if score @p wp.bin matches 1 run gamemode creative @p
execute if score @p wp.bin matches 2 run gamemode adventure @p
scoreboard players reset @p wp.bin
scoreboard players remove $active wp.settings 1
kill @s