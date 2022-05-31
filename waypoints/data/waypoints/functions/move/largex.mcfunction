say large x
# Set z to number 1-100 & x to 100 - keep relative scale
scoreboard players operation @s wp.pos.dif.z *= $step wp.settings
scoreboard players operation @s wp.pos.dif.z /= @s wp.pos.dif.x
# Set how often the player will have to teleport (x / 100)
scoreboard players operation @s wp.count = @s wp.pos.dif.x
scoreboard players operation @s wp.count /= $step wp.settings
scoreboard players operation @s wp.pos.dif.x = $step wp.settings
#afterwards it'll make things negative again if needed