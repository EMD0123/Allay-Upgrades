kill @e[tag=allayfix.locator]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["allayfix.locator"]}
execute store result entity @e[tag=allayfix.locator,limit=1] Pos[0] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[0]
execute store result entity @e[tag=allayfix.locator,limit=1] Pos[1] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[1]
execute store result entity @e[tag=allayfix.locator,limit=1] Pos[2] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[2]
execute as @e[tag=allayfix.locator] at @s run tp @s ~.5 ~.5 ~.5
execute at @s unless entity @s[tag=allayfix.locator,distance=..16] run data modify entity @s Brain.memories."minecraft:liked_noteblock_cooldown_ticks".value set value 600
execute at @s at @s[tag=allayfix.locator] if block ~ ~-1 ~ #minecraft:vibration_resonators run data modify entity @s Brain.memories."minecraft:liked_noteblock_cooldown_ticks".value set value 600
execute as @e[tag=allayfix.locator] at @s run tp @s ~ ~1000 ~
kill @e[tag=allayfix.locator]