#Explosion Final:
execute as @e[type=minecraft:marker,tag=marker.distance.tower.guardian,limit=1] at @s unless entity @e[tag=tower.guardian,limit=1,distance=0..21] at @e[type=marker,tag=marker.tower.explosive.final,sort=nearest,limit=1] run summon minecraft:creeper ~ ~ ~ {CustomName:'[{"text":"Tower Explosion"}]',Fuse:-1,ExplosionRadius:10,NoAI:1b,NoGravity:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:-1,Amplifier:1,ShowParticles:0b}]}