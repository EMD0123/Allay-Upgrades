schedule function allay_upgrades:slowtick_10s 10s

execute if score amethyst_note_blocks allay_upgrades.gamerules matches 1 as @e[type=minecraft:allay] if data entity @s data.allay_upgrades.noteblock at @s run function allay_upgrades:locate_note_block
