########################################################################################################################################################################################################

#Spawns Default Tower Guardians:
execute at @e[type=minecraft:marker,tag=summon.default.tower.guardian] run function keebsz:battletowers/summon/default_tower_guardian
execute as @e[type=minecraft:marker,tag=summon.default.tower.guardian,limit=1] at @s if entity @e[tag=tower.guardian.default,limit=1,distance=0..16] run kill @s

#Spawns Desert Tower Guardians:
execute at @e[type=minecraft:marker,tag=summon.desert.tower.guardian] run function keebsz:battletowers/summon/desert_tower_guardian
execute as @e[type=minecraft:marker,tag=summon.desert.tower.guardian,limit=1] at @s if entity @e[tag=tower.guardian.desert,limit=1,distance=0..16] run kill @s

#Spawns Snow Tower Guardians:
execute at @e[type=minecraft:marker,tag=summon.snow.tower.guardian] run function keebsz:battletowers/summon/snow_tower_guardian
execute as @e[type=minecraft:marker,tag=summon.snow.tower.guardian,limit=1] at @s if entity @e[tag=tower.guardian.snow,limit=1,distance=0..16] run kill @s

execute as @e[tag=tower.guardian,tag=!battletower.tower.guardian.fight.start] run effect give @s slowness 999999 149 true
execute at @p as @e[tag=tower.guardian,distance=0..32,nbt={HurtTime:10s}] run tag @s add battletower.tower.guardian.fight.start
execute at @p as @e[tag=tower.guardian,tag=battletower.tower.guardian.fight.start] run effect clear @s slowness


########################################################################################################################################################################################################

#Bossbar:
execute at @p as @e[tag=tower.guardian,distance=0..32] at @s run bossbar set towerguardian players @a[distance=..32]
execute at @p store result bossbar towerguardian max run attribute @e[tag=tower.guardian,limit=1,distance=..32] generic.max_health get
execute at @p store result bossbar towerguardian value run data get entity @e[tag=tower.guardian,limit=1,distance=..32] Health
execute at @p unless entity @e[tag=tower.guardian,limit=1,distance=0..32] run bossbar set towerguardian visible false
execute at @p if entity @e[tag=tower.guardian,limit=1,distance=0..32] run bossbar set towerguardian visible true

########################################################################################################################################################################################################

#Random Number Generator
execute run scoreboard players add @p BattleTowers.RNG.Range 1
execute if score @p BattleTowers.RNG.Range matches 11 run scoreboard players set @p BattleTowers.RNG.Range 0

#Boss Sounds RNG:
execute run scoreboard players add DefaultBossAmbientSound BattleTowers.RNG 1
execute run scoreboard players set 1000 BattleTowers.RNG.Range 1000
execute if score DefaultBossAmbientSound BattleTowers.RNG <= 1000 BattlTowers.RNG.Range run scoreboard players add DefaultBossAmbientSound BattleTowers.RNG 1

#Boss Teleport RNG
execute run scoreboard players add BossTeleport BattleTowers.RNG 1
execute if score BossTeleport BattleTowers.RNG matches 5 run scoreboard players set BossTeleport BattleTowers.RNG 1

#Tower Guardian Attack RNG:
execute run scoreboard players add RandomAttack BattleTowers.RNG 1
execute if score RandomAttack BattleTowers.RNG matches 4 run scoreboard players set RandomAttack BattleTowers.RNG 0
#
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] run scoreboard players add @s BattleTowers.RNG 1
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16] if score @s BattleTowers.RNG matches 121.. run scoreboard players set @s BattleTowers.RNG 0

########################################################################################################################################################################################################

#Boss:

#Sounds:
execute if score DefaultBossAmbientSound BattleTowers.RNG matches 160 run function keebsz:battletowers/boss/sounds/ambient
execute if score DefaultBossAmbientSound BattleTowers.RNG matches 161.. run scoreboard players set DefaultBossAmbientSound BattleTowers.RNG 0
execute run function keebsz:battletowers/boss/sounds/hurt

#Teleporter:
execute at @e[type=armor_stand,tag=battletower.aqua.teleporter.particles] run function keebsz:battletowers/boss/particles/aqua_teleporter

#Default Attacks:
execute at @p as @e[tag=tower.guardian,distance=0..16,limit=1,tag=battletower.tower.guardian.fight.start,scores={BattleTowers.RNG=120}] at @s if score RandomAttack BattleTowers.RNG matches 1 if entity @p[gamemode=!creative,gamemode=!spectator,distance=0..5] run function keebsz:battletowers/boss/attack/explosion
execute at @p as @e[tag=tower.guardian,distance=0..16,limit=1,tag=battletower.tower.guardian.fight.start,scores={BattleTowers.RNG=120}] at @s if score RandomAttack BattleTowers.RNG matches 2 if entity @p[gamemode=!creative,gamemode=!spectator,distance=0..16] run function keebsz:battletowers/boss/attack/teleport/teleport_ready
execute at @p as @e[tag=tower.guardian,distance=0..16,limit=1,tag=battletower.tower.guardian.fight.start,scores={BattleTowers.RNG=120}] at @s if score RandomAttack BattleTowers.RNG matches 3 if entity @p[gamemode=!creative,gamemode=!spectator,distance=0..16] run function keebsz:battletowers/boss/attack/raycasting/start

#Default Particles:
execute run function keebsz:battletowers/boss/particles/soul_flame

#Desert Particles:
execute run function keebsz:battletowers/boss/particles/souls

#Snow Particles:
execute run function keebsz:battletowers/boss/particles/snowflake

########################################################################################################################################################################################################

#Remove Water and Lava:
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~-7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~-7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~-7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~-7 minecraft:air replace minecraft:lava

########################################################################################################################################################################################################

#Water Logging:
execute run function keebsz:battletowers/waterlogging

########################################################################################################################################################################################################

#Remove Water and Lava Again:
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~-7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~7 ~57 ~-7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~7 minecraft:air replace minecraft:lava

execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~-7 minecraft:air replace minecraft:water
execute at @e[type=marker,tag=battletower.remove.liquid] run fill ~ ~ ~ ~-7 ~57 ~-7 minecraft:air replace minecraft:lava

execute as @e[type=marker,tag=battletower.remove.liquid] run kill @s

########################################################################################################################################################################################################

#Tower Explosion:
execute if score BossTeleport BattleTowers.RNG matches 1 run function keebsz:battletowers/boss/teleport_distance/tp_1
execute if score BossTeleport BattleTowers.RNG matches 2 run function keebsz:battletowers/boss/teleport_distance/tp_2
execute if score BossTeleport BattleTowers.RNG matches 3 run function keebsz:battletowers/boss/teleport_distance/tp_3
execute if score BossTeleport BattleTowers.RNG matches 4 run function keebsz:battletowers/boss/teleport_distance/tp_4
execute as @e[type=minecraft:marker,tag=explosion.start,limit=1] at @s unless entity @e[tag=tower.guardian,distance=0..17] run function keebsz:battletowers/explosion/start
execute as @e[type=minecraft:marker,tag=explosion.start,limit=1] at @s unless entity @e[tag=tower.guardian,distance=0..17] run kill @s

########################################################################################################################################################################################################
