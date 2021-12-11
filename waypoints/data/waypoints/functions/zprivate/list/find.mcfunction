#define storage list:compare
# list_find.mcfunction --

# Cycle list
data modify storage waypoints:list list append from storage waypoints:list list[0]
data remove storage waypoints:list list[0]

#Set A to current 1st member
data modify storage list:compare A set from storage waypoints:list list[0]

# If an overwrite happens, a 1 will be stored in Global(fake player)'s CTemp score. If values are the same, a 0 will be stored.
execute store success score CompFail wp.bin run data modify storage list:compare A set from storage list:compare B
# tellraw @a [{"text":"A != B: "},{"score":{"name":"CompFail","objective": "wp.bin"}}]


# If list item is what we're searching for. run exit loop procedures.
execute if score CompFail wp.bin matches 0 run function waypoints:zprivate/list/exit

#if not continue iteration (until list is empty)
execute if score CompFail wp.bin matches 1 run function waypoints:zprivate/list/find