#pickup
data modify entity @s Item.tag.entitydata set from entity @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest]
playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0
particle minecraft:dust 0 1 1 1 ~ ~.25 ~ 0.1 .15 0.1 10 100
data modify entity @s Item.id set value "minecraft:enchanted_book"
data modify entity @s Item.tag.display.Name set value '{"text":"Allay Book","color":"aqua","italic":false}'
data remove entity @s Item.tag.entitydata.Pos
execute if data entity @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest] HandItems[0] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{allayfix.item:0}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone",tag:{allayfix.item:0}}}] run data modify entity @s Item set from entity @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest] HandItems[0]
execute if data entity @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest] Inventory[0] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{allayfix.item:1}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone",tag:{allayfix.item:1}}}] run data modify entity @s Item set from entity @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest] Inventory[0]
data remove entity @s Item.tag.entitydata.HandItems[0]
data remove entity @s Item.tag.entitydata.Inventory[0]
data remove entity @s Item.tag.entitydata.Brain.memories."minecraft:liked_player"
data modify entity @s Item.tag.allaybook set value 1b
tag @s add allayfix.used
tp @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest] ~ -10000 ~
execute positioned ~ -10000 ~ run kill @e[type=minecraft:allay,distance=0..1,limit=1,sort=nearest]