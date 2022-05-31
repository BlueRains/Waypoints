tellraw @p {"text": "\n Not all waypoints have been removed:\n","bold": true}
scoreboard players set $color wp.bin 1
execute store result score $length wp.bin run data get storage waypoints:list list
function waypoints:uninstall/cycle
tellraw @p {"text": ""}
scoreboard players reset $color wp.bin
scoreboard players reset $length wp.bin
scoreboard players reset @s wp.pos.old.x
scoreboard players reset @s wp.pos.old.y
scoreboard players reset @s wp.pos.old.z