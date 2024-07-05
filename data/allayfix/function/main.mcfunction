
function allayfix:default_gamerules
# in_reach
execute if score in_reach allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s HandItems[0].id if predicate allayfix:50 if predicate allayfix:50 if block ~ ~-3 ~ minecraft:air run data modify entity @s Motion[1] set value -.1d
# punch to forget note block
execute as @e[type=minecraft:allay,nbt={HurtTime:1s}] unless data entity @s HandItems[0].id run data remove entity @s Brain.memories."minecraft:liked_noteblock"
# teleport
execute if score teleport allayfix.gamerules matches 1 as @e[type=minecraft:allay,tag=allayfix.teleport,limit=1,sort=random,predicate=!allayfix:is_passenger] unless data entity @s Brain.memories."minecraft:liked_noteblock" if data entity @s Brain.memories."minecraft:liked_player" at @s run function allayfix:tp
# amethyst note block
execute if score amethyst_note_blocks allayfix.gamerules matches 1 as @e[type=minecraft:allay,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:1}}}}] if data entity @s Brain.memories."minecraft:liked_noteblock" at @s run function allayfix:locate
# avoid boats
execute if score auto_dismount allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s if data entity @s HandItems[0].id if predicate allayfix:is_passenger run ride @s dismount

# amethyst pad
execute if score amethyst_pad allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s run attribute @s minecraft:generic.flying_speed modifier remove allayfix:amethyst_pad
execute if score amethyst_pad allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s HandItems[0].id if predicate allayfix:amethyst_pad run particle dust{color:[0.694,0.518,1.000],scale:1} ~ ~.3 ~ 0.15 0.15 0.15 1 1 normal
execute if score amethyst_pad allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s HandItems[0].id if predicate allayfix:amethyst_pad run data modify entity @s Motion set value 0
execute if score amethyst_pad allayfix.gamerules matches 1 as @e[type=minecraft:allay] at @s unless data entity @s HandItems[0].id if predicate allayfix:amethyst_pad run attribute @s minecraft:generic.flying_speed modifier add allayfix:amethyst_pad -1 add_multiplied_total
execute if score amethyst_pad allayfix.gamerules matches 1 as @e[type=minecraft:allay,nbt={OnGround:1b}] at @s unless data entity @s HandItems[0].id if predicate allayfix:amethyst_pad run tp @s ~ ~ ~

#book
execute if score allaybook allayfix.gamerules matches 1 as @e[type=item,nbt={Item:{id:"minecraft:book",count:1}},tag=!allayfix.used] at @s at @n[type=minecraft:allay,distance=0..1] run function allayfix:allaybook/book
#unbook
execute unless score allaybook allayfix.gamerules matches 0 as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{allaybook:1b}}}},tag=!allayfix.used] at @s run function allayfix:allaybook/unbook
