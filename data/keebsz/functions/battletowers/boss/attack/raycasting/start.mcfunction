########################################################################################################################################################################################################################################################

#Start:
execute at @p as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..16,scores={BattleTowers.RNG=120}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["marker.battletower.raycasting.default"]}
execute at @p as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..16,scores={BattleTowers.RNG=120}] at @s run playsound minecraft:item.firecharge.use master @a[distance=0..16]
execute run function keebsz:battletowers/boss/attack/raycasting/loop

########################################################################################################################################################################################################################################################