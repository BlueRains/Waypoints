tag @s add wp.active
execute store result score rotation wp.bin run data get entity @s Rotation[0]

summon villager ~ -64 ~ {Tags: ["wp.left", "spawned", "wp.villager", "wp.selector"], Rotation: [0f, 0f], NoAI: 1b, NoGravity: 1b, Invulnerable: 1b, VillagerData: {profession: "minecraft:nitwit"}, Silent: 1b, CustomNameVisible: 1b, ActiveEffects: [{Id: 14b, Amplifier: 1b, Duration: 999999, ShowParticles: 0b}]}
scoreboard players operation rotation wp.bin -= $30 wp.settings
execute as @e[tag=wp.left,tag=spawned] store result entity @s Rotation[0] float 1 run scoreboard players get rotation wp.bin

summon villager ~ -64 ~ {Tags: ["wp.center", "spawned", "wp.villager", "wp.selector"], Rotation: [0f, 0f], NoAI: 1b, NoGravity: 1b, Invulnerable: 1b, VillagerData: {profession: "minecraft:nitwit"}, Silent: 1b, CustomNameVisible: 1b, ActiveEffects: [{Id: 14b, Amplifier: 1b, Duration: 999999, ShowParticles: 0b}]}
scoreboard players operation rotation wp.bin += $30 wp.settings
execute as @e[tag=wp.center,tag=spawned] store result entity @s Rotation[0] float 1 run scoreboard players get rotation wp.bin
execute as @e[type=villager,tag=wp.center] run tp ^ ^ ^-1

summon villager ~ -64 ~ {Tags: ["wp.right", "spawned", "wp.villager", "wp.selector"], Rotation: [0f, 0f], NoAI: 1b, NoGravity: 1b, Invulnerable: 1b, VillagerData: {profession: "minecraft:nitwit"}, Silent: 1b, CustomNameVisible: 1b, ActiveEffects: [{Id: 14b, Amplifier: 1b, Duration: 999999, ShowParticles: 0b}]}
scoreboard players operation rotation wp.bin += $30 wp.settings
execute as @e[tag=wp.right,tag=spawned] store result entity @s Rotation[0] float 1 run scoreboard players get rotation wp.bin

execute as @e[type=villager,tag=spawned] at @s run tp @s ^ ^ ^3
execute as @e[type=villager,tag=spawned] run data modify entity @s Pos[1] set from entity @p Pos[1]
schedule function waypoints:zprivate/schedule/villager 1t