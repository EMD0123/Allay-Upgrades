schedule function allay_upgrades:slowtick 1s
execute as @e[type=minecraft:allay] unless data entity @s Leash unless data entity @s Brain.memories."minecraft:liked_noteblock" if data entity @s Brain.memories."minecraft:liked_player" at @s run function allay_upgrades:owner
execute as @e[type=minecraft:allay] unless data entity @s Brain.memories."minecraft:liked_noteblock_cooldown_ticks" if data entity @s Brain.memories."minecraft:liked_noteblock" at @s run function allay_upgrades:locate
execute as @e[type=minecraft:allay,limit=1,sort=random] at @s run attribute @s minecraft:flying_speed modifier remove minecraft:eae3f3f1-bc38-4a3c-b45d-5cca9eb97fe3
