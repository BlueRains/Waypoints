 # minecraft:load
#define storage waypoints:list
#define storage waypoints:settings
scoreboard objectives add wp.add trigger
scoreboard objectives add wp.click minecraft.custom:talked_to_villager
scoreboard objectives add wp.settings dummy
scoreboard objectives add wp.bin dummy
data remove storage waypoints:list list
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"Template"}'}
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"2nd"}'}
data modify storage waypoints:list list append value {Pos: [0d, 0d, 0d], CustomName: '{"text":"3rd"}'}
data modify storage waypoints:settings villager set value {Rotation: [0f, 0f]}
data modify storage waypoints:settings right set value {Rotation: [0f, 0f], waypoints: {right: 1b}, NoAI: 1b, NoGravity: 1b, Invulnerable: 1b, VillagerData: {profession: "minecraft:nitwit"}, CustomNameVisible: 1b, ActiveEffects: [{Id: 14b, Amplifier: 1b, Duration: 999999, ShowParticles: 0b}]}
# Settings
scoreboard players set $30 wp.settings 30
