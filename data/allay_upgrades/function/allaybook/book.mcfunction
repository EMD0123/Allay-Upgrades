#pickup
data modify entity @s Item.components."minecraft:custom_data".entitydata set from entity @n[type=minecraft:allay,distance=0..1]
playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~.25 ~ 0.1 .15 0.1 10 100 normal
execute if data entity @n[type=minecraft:allay,distance=0..1] HandItems[0].id run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{allay_upgrades.item:0}}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone",components:{"minecraft:custom_data":{allay_upgrades.item:0}}}}] run data modify entity @s Item set from entity @n[type=minecraft:allay,distance=0..1] HandItems[0]
execute if data entity @n[type=minecraft:allay,distance=0..1] Inventory[0] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{allay_upgrades.item:1}}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone",components:{"minecraft:custom_data":{allay_upgrades.item:1}}}}] run data modify entity @s Item set from entity @n[type=minecraft:allay,distance=0..1] Inventory[0]
data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Item.components."minecraft:item_name" set value '{"text":"Allay Book","color":"aqua"}'
data remove entity @s Item.components."minecraft:custom_data".entitydata.Pos
data remove entity @s Item.components."minecraft:custom_data".entitydata.HandItems[0]
data remove entity @s Item.components."minecraft:custom_data".entitydata.Inventory[0]
data remove entity @s Item.components."minecraft:custom_data".entitydata.Brain.memories."minecraft:liked_player"
data modify entity @s Item.components."minecraft:custom_data".allaybook set value 1b
tag @s add allay_upgrades.used
tp @n[type=minecraft:allay,distance=0..1] ~ -10000 ~
execute positioned ~ -10000 ~ run kill @n[type=minecraft:allay,distance=0..1]