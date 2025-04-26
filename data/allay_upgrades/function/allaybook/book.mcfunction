#pickup
execute unless entity @n[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used,distance=0..1] run return fail
tag @n[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used,distance=0..1] add allay_upgrades.selected
data modify entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".entitydata set from entity @s
playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~.25 ~ 0.1 .15 0.1 10 100 normal
execute if data entity @s HandItems[0].id run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{allay_upgrades.item:0}}}}
data modify entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:stone",components:{"minecraft:custom_data":{allay_upgrades.item:0}}}}] Item set from entity @s HandItems[0]
execute if data entity @s Inventory[0] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{allay_upgrades.item:1}}}}
data modify entity @n[type=minecraft:item,nbt={Item:{id:"minecraft:stone",components:{"minecraft:custom_data":{allay_upgrades.item:1}}}}] Item set from entity @s Inventory[0]
data modify entity @n[tag=allay_upgrades.selected] Item.id set value "minecraft:enchanted_book"
data modify entity @n[tag=allay_upgrades.selected] Item.components."minecraft:item_name" set value {"text":"Allay Book","color":"aqua"}
data remove entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".entitydata.Pos
data modify entity @n[tag=allay_upgrades.selected] Item.components."minecraft:max_stack_size" set value 64
data remove entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".entitydata.HandItems[0]
data remove entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".entitydata.Inventory[0]
data remove entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".entitydata.Brain.memories."minecraft:liked_player"
data modify entity @n[tag=allay_upgrades.selected] Item.components."minecraft:custom_data".allaybook set value 1b
tag @n[tag=allay_upgrades.selected] add allay_upgrades.used
data merge entity @s {DeathTime:20,Health:0f,Pos:[0.0,-10000.0,0.0]}
tp @s ~ -10000 ~
kill @s
tag @n[tag=allay_upgrades.selected] remove allay_upgrades.selected