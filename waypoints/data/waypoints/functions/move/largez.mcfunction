say large z
# See largex.mcfunction for comments
scoreboard players operation @s wp.pos.dif.x *= $step wp.settings
scoreboard players operation @s wp.pos.dif.x /= @s wp.pos.dif.z
scoreboard players operation @s wp.count = @s wp.pos.dif.z
scoreboard players operation @s wp.count /= $step wp.settings
scoreboard players operation @s wp.pos.dif.z = $step wp.settings
