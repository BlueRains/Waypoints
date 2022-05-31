advancement revoke @s only waypoints:cycle/center
tag @s add wp.teleporting
execute store result score @s wp.bin run data get entity @s playerGameType
gamemode spectator @s
summon marker ~ ~ ~ {Tags: ["wp.tpmarker"]}
execute as @e[tag=wp.tpmarker,distance=..2] run function waypoints:move/start
execute as @e[tag=wp.marker,distance=..3] at @s run function waypoints:select/end
