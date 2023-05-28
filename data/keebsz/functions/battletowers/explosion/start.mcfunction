#######################################################################################################################################################################

#Give Text:
execute as @e[type=minecraft:marker,tag=marker.distance.tower.guardian,limit=1] at @s if entity @a[distance=0..32] as @a[distance=0..32] run tag @s add TowerMessage
execute run function keebsz:battletowers/texts/collapse_1
execute run schedule function keebsz:battletowers/texts/collapse_2 5s
#######################################################################################################################################################################

#Start Explosion:
execute run schedule function keebsz:battletowers/explosion/marker_0 9s append
execute run schedule function keebsz:battletowers/explosion/marker_1 12s append
execute run schedule function keebsz:battletowers/explosion/marker_1 15s append
execute run schedule function keebsz:battletowers/explosion/marker_1 18s append
execute run schedule function keebsz:battletowers/explosion/marker_2 21s append
execute run schedule function keebsz:battletowers/explosion/marker_2 24s append
execute run schedule function keebsz:battletowers/explosion/marker_2 27s append
execute run schedule function keebsz:battletowers/explosion/marker_3 30s append
execute run schedule function keebsz:battletowers/explosion/marker_3 33s append
execute run schedule function keebsz:battletowers/explosion/marker_3 36s append
execute run schedule function keebsz:battletowers/explosion/marker_final 39s append
execute run schedule function keebsz:battletowers/explosion/marker_final 42s append
execute run schedule function keebsz:battletowers/explosion/marker_final_underground 39s append
execute run schedule function keebsz:battletowers/explosion/marker_final_underground 42s append
execute run schedule function keebsz:battletowers/explosion/remove_blocks 43s append
execute run schedule function keebsz:battletowers/explosion/remove_markers 44s append

#######################################################################################################################################################################