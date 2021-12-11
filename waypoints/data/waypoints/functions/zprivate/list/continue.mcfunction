#if list isn't empty run iterate again
execute if score IterationSuccess wp.bin matches 0 run function waypoints:zprivate/list/find
