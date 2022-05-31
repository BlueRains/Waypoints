scoreboard players remove $length wp.bin 1
execute store result score @s wp.pos.old.x run data get storage waypoints:list list[0].Pos[0]
execute store result score @s wp.pos.old.y run data get storage waypoints:list list[0].Pos[1]
execute store result score @s wp.pos.old.z run data get storage waypoints:list list[0].Pos[2]
execute if score $color wp.bin matches 2 run tellraw @p [{"text": "Name: ","color": "white"},{"nbt":"list[0].CustomName","storage": "waypoints:list","interpret": true},{"text": ", Location: x="},{"score":{"name": "@s","objective": "wp.pos.old.x"}},{"text": ", y="},{"score":{"name": "@s","objective": "wp.pos.old.y"}},{"text": ", z="},{"score":{"name": "@s","objective": "wp.pos.old.z"}}]
execute if score $color wp.bin matches 1 run tellraw @p [{"text": "Name: ","color": "gray"},{"nbt":"list[0].CustomName","storage": "waypoints:list","interpret": true},{"text": ", Location: x="},{"score":{"name": "@s","objective": "wp.pos.old.x"}},{"text": ", y="},{"score":{"name": "@s","objective": "wp.pos.old.y"}},{"text": ", z="},{"score":{"name": "@s","objective": "wp.pos.old.z"}}]
data modify storage waypoints:list list append from storage waypoints:list list[0]
data remove storage waypoints:list list[0]
#Alternate color
scoreboard players remove $color wp.bin 1
execute if score $color wp.bin matches 0 run scoreboard players set $color wp.bin 2
execute if score $length wp.bin matches 1.. run function waypoints:uninstall/cycle