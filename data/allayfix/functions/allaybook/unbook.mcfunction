#putdown
summon allay ~ ~ ~ {Tags:["allaybook.unbooked"]}
playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 2
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~.25 ~ 0.1 .15 0.1 10 100 normal
data modify entity @e[type=allay,limit=1,sort=nearest,tag=allaybook.unbooked] {} merge from entity @s Item.components."minecraft:custom_data".entitydata
data modify entity @e[type=allay,limit=1,sort=nearest,tag=allaybook.unbooked] listener.source.source_entity set from entity @e[type=allay,limit=1,sort=nearest,tag=allaybook.unbooked] UUID
data remove entity @s Item.components."minecraft:item_name"
data modify entity @s Item.id set value "minecraft:book"
data remove entity @s Item.components."minecraft:custom_data"
tag @s add allayfix.used
execute as @e[tag=allaybook.unbooked] run tag @s remove allaybook.unbooked