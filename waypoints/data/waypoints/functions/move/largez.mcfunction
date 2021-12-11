# See largex.mcfunction for comments
scoreboard players operation @s wp.pos.dif.x *= $100 wp.settings
scoreboard players operation @s wp.pos.dif.x /= @s wp.pos.dif.z
scoreboard players operation @s wp.count = @s wp.pos.dif.z
scoreboard players operation @s wp.count /= $100 wp.settings
scoreboard players set @s wp.pos.dif.z 100
