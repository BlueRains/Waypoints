execute store result score @p wp.bin run data get entity @p playerGameType
gamemode spectator @p
data modify storage waypoints:list location set from entity @e[type=marker,tag=wp.marker,limit=1] data.list[0].Pos
execute store result score @s wp.pos.dif.x run data get storage waypoints:list location[0]
execute store result score @s wp.pos.dif.y run data get storage waypoints:list location[1] 1000
execute store result score @s wp.pos.dif.z run data get storage waypoints:list location[2]
data modify storage waypoints:list location set from entity @s Pos
execute store result score @s wp.pos.old.x run data get storage waypoints:list location[0]
execute store result score @s wp.pos.old.y run data get storage waypoints:list location[1] 1000
execute store result score @s wp.pos.old.z run data get storage waypoints:list location[2]
data remove storage waypoints:list location
# X coordinates
scoreboard players operation @s wp.pos.dif.x -= @s wp.pos.old.x
# Z coordinates
scoreboard players operation @s wp.pos.dif.z -= @s wp.pos.old.z
# Set both to positive to compare
execute if score @s wp.pos.dif.x matches ..-1 run scoreboard players add @s wp.settings 1
execute if score @s wp.settings matches 1 run scoreboard players operation @s wp.pos.dif.x *= $-1 wp.settings
execute if score @s wp.pos.dif.z matches ..-1 run scoreboard players add @s wp.settings 2
execute if score @s wp.settings matches 2..3 run scoreboard players operation @s wp.pos.dif.z *= $-1 wp.settings
execute if score @s wp.pos.dif.x >= @s wp.pos.dif.z run function waypoints:move/largex
execute if score @s wp.pos.dif.x < @s wp.pos.dif.z run function waypoints:move/largez
# Reset to orininal +/- coordinates
execute if score @s wp.settings matches 2..3 run scoreboard players operation @s wp.pos.dif.z *= $-1 wp.settings
execute if score @s wp.settings matches 2..3 run scoreboard players remove @s wp.settings 2
execute if score @s wp.settings matches 1 run scoreboard players operation @s wp.pos.dif.x *= $-1 wp.settings
scoreboard players reset @s wp.settings
# Y coordinates
scoreboard players operation @s wp.pos.dif.y -= @s wp.pos.old.y
scoreboard players operation @s wp.pos.dif.y /= @s wp.count
# Change coordinates
schedule function waypoints:zprivate/schedule/teleport 1t