#Hurt Noise For Boss:
execute as @a at @s at @e[tag=tower.guardian,nbt={HurtTime:10s},sort=nearest,limit=1,distance=0..16] run playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~
