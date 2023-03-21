########################################################################################################################################################################################################################################################

#Teleport:
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16,scores={BattleTowers.RNG=120}] run effect give @s slowness 1 149 true
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16,scores={BattleTowers.RNG=120}] at @s run summon minecraft:armor_stand ~ ~2 ~ {ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["battletower.aqua.teleporter.particles"]}
execute at @p as @e[tag=tower.guardian,limit=1,distance=0..16,scores={BattleTowers.RNG=120}] run schedule function keebsz:battletowers/boss/attack/teleport/teleport_begin 10t

########################################################################################################################################################################################################################################################