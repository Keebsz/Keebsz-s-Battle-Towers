########################################################################################################################################################################################################################################################

#Boss Teleport #1:
execute at @p as @e[tag=tower.guardian,limit=1,distance=..16] at @s if entity @e[type=minecraft:marker,tag=marker.distance.tower.guardian,distance=16..,limit=1,sort=nearest] run tp @s @e[type=minecraft:marker,tag=marker.boss.teleporter.1,sort=nearest,limit=1]

########################################################################################################################################################################################################################################################