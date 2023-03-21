########################################################################################################################################################################################################################################################

#Teleport:
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] run playsound minecraft:entity.enderman.teleport player @a[distance=0..16]
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] if score BossTeleport BattleTowers.RNG matches 1 run tp @s @e[type=minecraft:marker,tag=marker.boss.teleporter.1,sort=nearest,limit=1]
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] if score BossTeleport BattleTowers.RNG matches 2 run tp @s @e[type=minecraft:marker,tag=marker.boss.teleporter.2,sort=nearest,limit=1]
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] if score BossTeleport BattleTowers.RNG matches 3 run tp @s @e[type=minecraft:marker,tag=marker.boss.teleporter.3,sort=nearest,limit=1]
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] if score BossTeleport BattleTowers.RNG matches 4 run tp @s @e[type=minecraft:marker,tag=marker.boss.teleporter.4,sort=nearest,limit=1]
execute run kill @e[type=armor_stand,tag=battletower.aqua.teleporter.particles]


########################################################################################################################################################################################################################################################