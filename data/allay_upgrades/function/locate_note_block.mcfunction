kill @e[tag=allay_upgrades.locator,type=!player]
tag @s add allay_upgrades.selected
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Duration:0,Tags:["allay_upgrades.locator"]}
execute as @n[tag=allay_upgrades.locator] at @s run function allay_upgrades:locate_note_block_2 
tag @s remove allay_upgrades.selected