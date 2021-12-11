# Set z to number 1-100 & x to 100 - keep relative scale
scoreboard players operation @s wp.pos.dif.z *= $100 wp.settings
scoreboard players operation @s wp.pos.dif.z /= @s wp.pos.dif.x
# Set how often the player will have to teleport
scoreboard players operation @s wp.count = @s wp.pos.dif.x
scoreboard players operation @s wp.count /= $100 wp.settings
scoreboard players set @s wp.pos.dif.x 100
