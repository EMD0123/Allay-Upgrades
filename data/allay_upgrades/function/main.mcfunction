function allay_upgrades:default_gamerules

execute as @e[type=minecraft:allay,tag=!allay_upgrades.amethyst_pad] at @s run function allay_upgrades:allay
# amethyst pad
execute as @e[type=minecraft:allay,tag=allay_upgrades.amethyst_pad] at @s run function allay_upgrades:amethyst_pads


# teleport
execute if score teleport allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay,tag=allay_upgrades.teleport,limit=1,sort=random,predicate=!allay_upgrades:is_passenger] unless predicate allay_upgrades:amethyst_pad unless data entity @s Brain.memories."minecraft:liked_noteblock" if data entity @s Brain.memories."minecraft:liked_player" at @s run function allay_upgrades:tp_1 with entity @s Brain.memories."minecraft:liked_player"

#book
execute if score allaybook allay_upgrades.gamerules matches 1 if entity @e[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used] as @e[type=minecraft:allay] at @s if entity @n[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used,distance=0..1] run function allay_upgrades:allaybook/book
#unbook
execute unless score allaybook allay_upgrades.gamerules matches 0 as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{allaybook:1b}}}},tag=!allay_upgrades.used] at @s run function allay_upgrades:allaybook/unbook
