kill @e[tag=allay_upgrades.owner]
tag @s remove allay_upgrades.owner.allay
tag @s add allay_upgrades.owner.allay
summon minecraft:arrow ~ ~10000 ~ {Tags:["allay_upgrades.owner"]}
data modify entity @e[tag=allay_upgrades.owner,limit=1] Owner set from entity @s Brain.memories."minecraft:liked_player".value
execute as @e[tag=allay_upgrades.owner] on origin at @s align xz run tp @e[tag=allay_upgrades.owner,limit=1] ~.5 ~ ~.5
#X
execute as @e[tag=allay_upgrades.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allay_upgrades.owner] if predicate allay_upgrades:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~1 ~ ~
#Y
execute as @e[tag=allay_upgrades.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allay_upgrades.owner] if predicate allay_upgrades:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~1 ~
#Z
execute as @e[tag=allay_upgrades.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allay_upgrades.owner] if predicate allay_upgrades:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:0b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allay_upgrades.owner,nbt={Invulnerable:1b}] if predicate allay_upgrades:50 at @s run tp @s ~ ~ ~1

execute as @e[tag=allay_upgrades.owner] at @s if block ~ ~ ~ air run tag @e[tag=allay_upgrades.owner.allay,limit=1] remove allay_upgrades.teleport
execute as @e[tag=allay_upgrades.owner] at @s if block ~ ~ ~ air align xyz run tp @e[tag=allay_upgrades.owner.allay] ~.5 ~ ~.5
execute as @e[tag=allay_upgrades.owner] at @s run tp @s ~ ~10000 ~
kill @e[tag=allay_upgrades.owner]
tag @s remove allay_upgrades.owner.allay
