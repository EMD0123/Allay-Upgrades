#putdown
summon allay ~ ~ ~ {Tags:["allaybook.unbooked"]}
playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 2
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~.25 ~ 0.1 .15 0.1 10 100 normal
data modify entity @n[type=allay,tag=allaybook.unbooked] {} merge from entity @s Item.components."minecraft:custom_data".entitydata
data modify entity @n[type=allay,tag=allaybook.unbooked] listener.source.source_entity set from entity @n[type=allay,tag=allaybook.unbooked] UUID
data remove entity @s Item.components."minecraft:item_name"
data remove entity @s Item.components."minecraft:custom_name"
data modify entity @s Item.id set value "minecraft:book"
data remove entity @s Item.components."minecraft:custom_data"
tag @s add allay_upgrades.used
execute as @e[tag=allaybook.unbooked] run tag @s remove allaybook.unbooked