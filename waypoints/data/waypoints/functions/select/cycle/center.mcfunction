advancement revoke @s only waypoints:cycle/center
say what!
tag @s add wp.teleporting
summon marker ~ ~ ~ {Tags: ["wp.tpmarker"]}
execute as @e[tag=wp.marker,distance=..3] at @s run function waypoints:select/end
execute as @e[tag=wp.tpmarker,distance=..2] run function waypoints:move/start
