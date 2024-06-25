schedule function allayfix:slowtick 1s
execute as @e[type=minecraft:allay] unless data entity @s Leash unless data entity @s Brain.memories."minecraft:liked_noteblock" if data entity @s Brain.memories."minecraft:liked_player" at @s run function allayfix:owner
execute as @e[type=minecraft:allay] unless data entity @s Brain.memories."minecraft:liked_noteblock_cooldown_ticks" if data entity @s Brain.memories."minecraft:liked_noteblock" at @s run function allayfix:locate
