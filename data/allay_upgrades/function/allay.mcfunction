# in_reach
execute if score in_reach allay_upgrades.gamerules matches 1 unless predicate allay_upgrades:has_hand_item if predicate allay_upgrades:50 if predicate allay_upgrades:50 if block ~ ~-3 ~ minecraft:air run data modify entity @s Motion[1] set value -.1d

# amethyst note block
execute if score amethyst_note_blocks allay_upgrades.gamerules matches 1 as @s[nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:450}}}}] if data entity @s Brain.memories."minecraft:liked_noteblock" at @s run data modify entity @s data.allay_upgrades.noteblock set from entity @s Brain.memories."minecraft:liked_noteblock".value

# avoid boats
execute if score auto_dismount allay_upgrades.gamerules matches 1 if predicate allay_upgrades:has_hand_item if predicate allay_upgrades:is_passenger run ride @s dismount

