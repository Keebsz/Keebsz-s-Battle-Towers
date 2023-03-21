########################################################################################################################################################################################################################################################
#Shoot:
execute at @e[type=minecraft:marker,tag=marker.battletower.raycasting.default] run particle soul_fire_flame ~ ~ ~ 0 0 0 .01 20 normal 
execute as @e[type=minecraft:marker,tag=marker.battletower.raycasting.default] at @s if block ~ ~ ~ air rotated as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..16] run tp ^ ^ ^1

#Damage:
execute at @e[type=minecraft:marker,tag=marker.battletower.raycasting.default] as @a[distance=0..2] run tag @s[tag=!tower.guardian] add battletower.raycast.hit
execute as @e[tag=!tower.guardian,tag=battletower.raycast.hit] at @s unless entity @e[type=small_fireball,tag=battletower.fireball.small,distance=0..3] run summon minecraft:small_fireball ~ ~3 ~ {power:[0.0,-5.0,0.0],Tags:["battletower.fireball.small"]}
execute as @e[type=minecraft:marker,tag=marker.battletower.raycasting.default] at @s if entity @e[tag=battletower.raycast.hit,distance=0..2,limit=1] run kill @s
execute run tag @e remove battletower.raycast.hit

#Repeat:
execute as @e[type=minecraft:marker,tag=marker.battletower.raycasting.default] at @s unless block ~ ~ ~ air positioned ^ ^ ^1 run kill @s
execute at @e[tag=tower.guardian] as @e[type=marker,tag=marker.battletower.raycasting.default,distance=16..,limit=1,sort=nearest] run kill @s
execute at @e[tag=tower.guardian] if entity @e[type=marker,tag=marker.battletower.raycasting.default,distance=0..16,limit=1] run function keebsz:battletowers/boss/attack/raycasting/loop
########################################################################################################################################################################################################################################################