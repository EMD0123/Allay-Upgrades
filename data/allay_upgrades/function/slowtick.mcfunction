schedule function allay_upgrades:slowtick 1s

# punch to forget note block
execute as @e[type=minecraft:allay,nbt=!{HurtTime:0s}] unless predicate allay_upgrades:has_hand_item run data remove entity @s Brain.memories."minecraft:liked_noteblock"

#teleport
execute as @e[type=minecraft:allay,limit=10,sort=random,predicate=allay_upgrades:has_hand_item] unless data entity @s leash unless data entity @s Brain.memories."minecraft:liked_noteblock" unless data entity @s data.allay_upgrades.noteblock if data entity @s Brain.memories."minecraft:liked_player" at @s run function allay_upgrades:check_owner_distance with entity @s Brain.memories."minecraft:liked_player"

# amethyst pad
execute as @e[type=minecraft:allay] at @s if score amethyst_pad allay_upgrades.gamerules matches 1 unless predicate allay_upgrades:has_hand_item if predicate allay_upgrades:amethyst_pad run tag @s add allay_upgrades.amethyst_pad

execute as @e[type=minecraft:allay,limit=1,sort=random] at @s run attribute @s minecraft:flying_speed modifier remove minecraft:eae3f3f1-bc38-4a3c-b45d-5cca9eb97fe3
