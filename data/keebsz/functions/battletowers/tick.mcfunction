#Spawns the Slime Tower Guardian
execute at @e[type=minecraft:bat,tag=slime_tower_guardian_spawn] run summon minecraft:slime ~ ~ ~ {Size:3,CustomName:'[{"text":"Slime Tower Guardian","color":"green","bold":true}]',DeathLootTable:"keebsz:entities/slime_tower_guardian",Tags:["slime_tower_guardian"],Health:300,Attributes:[{Name:"generic.max_health",Base:300f}],Passengers:[{id:slime,Size:2,Passengers:[{id:slime,Size:1}]}]}
kill @e[type=minecraft:bat,tag=slime_tower_guardian_spawn]

#Spawn the Lich Tower Guardian
execute at @e[type=minecraft:bat,tag=lich_tower_guardian_spawn] run summon minecraft:skeleton ~ ~ ~ {CustomName:'[{"text":"Lich Tower Guardian","bold":true,"color":"gray"}]',Health:300,NoGravity:1b,PersistenceRequired:1b,Tags:[lich_tower_guardian],ActiveEffects:[{Id:14,Duration:2147483647,Amplifier:0,ShowParticles:0b}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:power,lvl:5},{id:punch,lvl:2}]},Count:1}],HandDropChances:[0.03f],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1},{id:"minecraft:player_head",tag:{SkullOwner:theawesomegamer},Count:1}],Attributes:[{Name:"generic.max_health",Base:300f},{Name:"generic.follow_range",Base:40f}],ArmorDropChances:[0f,0f,0f,0f]}
kill @e[type=minecraft:bat,tag=lich_tower_guardian_spawn]


#Lich Bossbar:
execute as @e[type=minecraft:skeleton,tag=lich_tower_guardian] at @s run bossbar set lichtowerguardian players @a[distance=..30]
execute store result bossbar lichtowerguardian max run attribute @e[tag=lich_tower_guardian,limit=1] generic.max_health get
execute store result bossbar lichtowerguardian value run data get entity @e[tag=lich_tower_guardian,limit=1] Health
execute unless entity @e[type=minecraft:skeleton,tag=lich_tower_guardian,limit=1] run bossbar set lichtowerguardian visible false
execute if entity @e[type=minecraft:skeleton,tag=lich_tower_guardian,limit=1] run bossbar set lichtowerguardian visible true

#Slime Bossbar:
execute as @e[type=minecraft:slime,tag=slime_tower_guardian] at @s run bossbar set slimetowerguardian players @a[distance=..30]
execute store result bossbar slimetowerguardian max run attribute @e[type=minecraft:slime,tag=slime_tower_guardian,limit=1] generic.max_health get
execute store result bossbar slimetowerguardian value run data get entity @e[type=minecraft:slime,tag=slime_tower_guardian,limit=1] Health
execute unless entity @e[type=minecraft:slime,tag=slime_tower_guardian,limit=1] run bossbar set slimetowerguardian visible false
execute if entity @e[type=minecraft:slime,tag=slime_tower_guardian,limit=1] run bossbar set slimetowerguardian visible true
