data modify entity @s Pos set from entity @n[type=allay,tag=allay_upgrades.selected] data.allay_upgrades.noteblock.pos
data modify entity @n[type=allay,tag=allay_upgrades.selected] Brain.memories."minecraft:liked_noteblock_cooldown_ticks".value set value 600
data modify entity @n[type=allay,tag=allay_upgrades.selected] Brain.memories."minecraft:liked_noteblock".value set from entity @n[type=allay,tag=allay_upgrades.selected] data.allay_upgrades.noteblock
execute at @s unless block ~ ~-1 ~ #minecraft:vibration_resonators run data modify entity @n[type=allay,tag=allay_upgrades.selected] Brain.memories."minecraft:liked_noteblock_cooldown_ticks".value set value 1
execute at @s unless block ~ ~-1 ~ #minecraft:vibration_resonators run data remove entity @n[type=allay,tag=allay_upgrades.selected] data.allay_upgrades.noteblock
execute at @s unless block ~ ~ ~ minecraft:note_block run data modify entity @n[type=allay,tag=allay_upgrades.selected] Brain.memories."minecraft:liked_noteblock_cooldown_ticks".value set value 1
execute at @s unless block ~ ~ ~ minecraft:note_block run data remove entity @n[type=allay,tag=allay_upgrades.selected] data.allay_upgrades.noteblock
tp @s[type=!player] ~ ~1000 ~
kill @s[type=player]