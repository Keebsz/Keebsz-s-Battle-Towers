#Wiliting Staff: WIP

#Tag:
#execute run tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["battletower.wiliting.staff"]}}}] add wiliting.staff.item
#execute run tag @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["battletower.wiliting.staff"]}}}] remove wiliting.staff.item

#Shoot:
#execute as @p[tag=wiliting.staff.item,scores={BattleTowers.Wiliting.Staff=1},gamemode=!creative,gamemode=!spectator] run item modify entity @s weapon.mainhand keebsz:25_damage
#execute as @p[tag=wiliting.staff.item,scores={BattleTowers.Wiliting.Staff=1}] at @s run playsound minecraft:item.firecharge.use master @a[distance=0..16]
#execute as @p[tag=wiliting.staff.item,scores={BattleTowers.Wiliting.Staff=1}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["marker.battletower.raycasting.staff"]}
#execute at @e[type=marker,tag=marker.battletower.raycasting.staff] run particle soul_fire_flame ~ ~ ~ 0 0 0 .01 10 normal
#execute as @e[type=marker,tag=marker.battletower.raycasting.staff] at @s if block ~ ~ ~ air rotated as @p[tag=wiliting.staff.item,limit=1] run tp ^ ^ ^1

#Damage:
#execute at @e[type=marker,tag=marker.battletower.raycasting.staff] as @e[distance=0..2,type=!marker,tag=!wiliting.staff.item] run tag @s add hit.with.wiliting.staff
#execute as @e[tag=hit.with.wiliting.staff,type=!zombie,type=!skeleton,type=!wither_skeleton] run effect give @s instant_damage 1 2 true
#execute as @e[tag=hit.with.wiliting.staff,type=zombie,type=skeleton,type=wither_skeleton] run effect give @s instant_health 1 1 true
#execute as @e[tag=hit.with.wiliting.staff] run tag @s remove hit.with.wiliting.staff

#Remove:
#execute as @e[type=marker,tag=marker.battletower.raycasting.staff] at @s unless block ~ ~ ~ air positioned ^ ^ ^1 run kill @s
#execute if score @p BattleTowers.Wiliting.Staff matches 1.. run scoreboard players set @p BattleTowers.Wiliting.Staff 0