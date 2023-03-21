#Ambient Noise For Boss:
execute as @a at @s if entity @e[tag=tower.guardian,tag=battletower.tower.guardian.fight.start,limit=1,distance=0..16,sort=nearest] run playsound minecraft:entity.elder_guardian.hurt player @s ~ ~ ~
