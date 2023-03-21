########################################################################################################################################################################################################################################################

#Explosion:

execute at @p as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..8,scores={BattleTowers.RNG=120}] run playsound minecraft:entity.generic.explode player @a[distance=0..8] ~ ~ ~
execute at @p as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..16,scores={BattleTowers.RNG=120}] anchored eyes run particle minecraft:soul_fire_flame ~ ~ ~ 2 1 2 .5 500 normal
execute at @p as @e[tag=tower.guardian,limit=1,sort=nearest,distance=0..8,scores={BattleTowers.RNG=120}] at @a[gamemode=!creative,gamemode=!spectator,distance=0..8] run summon minecraft:small_fireball ~ ~3 ~ {power:[0.0,-10.0,0.0],Tags:["battletower.fireball.small"]}


########################################################################################################################################################################################################################################################