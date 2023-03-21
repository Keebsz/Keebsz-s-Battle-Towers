#######################################################################################################################################################################

#Give Text:
execute as @e[type=minecraft:marker,tag=marker.distance.tower.guardian,limit=1] at @s if entity @a[distance=0..32] as @a[distance=0..32] run tag @s add TowerMessage
execute run function keebsz:battletowers/texts/collapse_1
execute run schedule function keebsz:battletowers/texts/collapse_2 5s
#######################################################################################################################################################################

#Start Explosion:
execute run schedule function keebsz:battletowers/explosion/marker_0 9s append
execute run schedule function keebsz:battletowers/explosion/marker_1 11s append
execute run schedule function keebsz:battletowers/explosion/marker_1 13s append
execute run schedule function keebsz:battletowers/explosion/marker_1 15s append
execute run schedule function keebsz:battletowers/explosion/marker_2 17s append
execute run schedule function keebsz:battletowers/explosion/marker_2 19s append
execute run schedule function keebsz:battletowers/explosion/marker_2 21s append
execute run schedule function keebsz:battletowers/explosion/marker_3 23s append
execute run schedule function keebsz:battletowers/explosion/marker_3 25s append
execute run schedule function keebsz:battletowers/explosion/marker_3 27s append
execute run schedule function keebsz:battletowers/explosion/marker_final 29s append
execute run schedule function keebsz:battletowers/explosion/marker_final 31s append
execute run schedule function keebsz:battletowers/explosion/marker_final_underground 29s append
execute run schedule function keebsz:battletowers/explosion/marker_final_underground 31s append
execute run schedule function keebsz:battletowers/explosion/remove_blocks 32s append
execute run schedule function keebsz:battletowers/explosion/remove_markers 33s append

#######################################################################################################################################################################