
function allay_upgrades:default_gamerules
# in_reach
execute if score in_reach allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s equipment.mainhand.id if predicate allay_upgrades:50 if predicate allay_upgrades:50 if block ~ ~-3 ~ minecraft:air run data modify entity @s Motion[1] set value -.1d
# punch to forget note block
execute as @e[type=minecraft:allay,nbt={HurtTime:1s}] unless data entity @s equipment.mainhand.id run data remove entity @s Brain.memories."minecraft:liked_noteblock"
# teleport
execute if score teleport allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay,tag=allay_upgrades.teleport,limit=1,sort=random,predicate=!allay_upgrades:is_passenger] unless data entity @s Brain.memories."minecraft:liked_noteblock" if data entity @s Brain.memories."minecraft:liked_player" at @s run function allay_upgrades:tp
# amethyst note block
execute if score amethyst_note_blocks allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:1}}}}] if data entity @s Brain.memories."minecraft:liked_noteblock" at @s run function allay_upgrades:locate
# avoid boats
execute if score auto_dismount allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s if data entity @s equipment.mainhand.id if predicate allay_upgrades:is_passenger run ride @s dismount

# amethyst pad
execute if score amethyst_pad allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s run attribute @s minecraft:flying_speed modifier remove allay_upgrades:amethyst_pad
execute if score amethyst_pad allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s equipment.mainhand.id if predicate allay_upgrades:amethyst_pad run particle dust{color:[0.694,0.518,1.000],scale:1} ~ ~.3 ~ 0.15 0.15 0.15 1 1 normal
execute if score amethyst_pad allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s equipment.mainhand.id if predicate allay_upgrades:amethyst_pad run data modify entity @s Motion set value [0,0,0]
execute if score amethyst_pad allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s equipment.mainhand.id if predicate allay_upgrades:amethyst_pad run attribute @s minecraft:flying_speed modifier add allay_upgrades:amethyst_pad -1 add_multiplied_total
execute if score amethyst_pad allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay,nbt={OnGround:1b}] at @s unless data entity @s equipment.mainhand.id if predicate allay_upgrades:amethyst_pad run tp @s ~ ~ ~

#book
execute if score allaybook allay_upgrades.gamerules matches 1 if entity @e[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used] as @e[type=minecraft:allay] at @s if entity @n[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allay_upgrades.used,distance=0..1] run function allay_upgrades:allaybook/book
#unbook
execute unless score allaybook allay_upgrades.gamerules matches 0 as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{allaybook:1b}}}},tag=!allay_upgrades.used] at @s run function allay_upgrades:allaybook/unbook
