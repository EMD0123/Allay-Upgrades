kill @e[tag=allayfix.owner]
tag @s remove allayfix.owner.allay
tag @s add allayfix.owner.allay
summon minecraft:arrow ~ ~10000 ~ {Tags:["allayfix.owner"]}
data modify entity @e[tag=allayfix.owner,limit=1] Owner set from entity @s Brain.memories."minecraft:liked_player".value
execute as @e[tag=allayfix.owner] on origin at @s align xz run tp @e[tag=allayfix.owner,limit=1] ~.5 ~ ~.5
#X
execute as @e[tag=allayfix.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allayfix.owner] if predicate allayfix:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~-1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~1 ~ ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~1 ~ ~
#Y
execute as @e[tag=allayfix.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allayfix.owner] if predicate allayfix:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~-1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~1 ~
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~1 ~
#Z
execute as @e[tag=allayfix.owner] run data modify entity @s Invulnerable set value 0
execute as @e[tag=allayfix.owner] if predicate allayfix:50 run data modify entity @s Invulnerable set value 1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:0b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~-1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~1
execute as @e[tag=allayfix.owner,nbt={Invulnerable:1b}] if predicate allayfix:50 at @s run tp @s ~ ~ ~1

execute as @e[tag=allayfix.owner] at @s if block ~ ~ ~ air run tag @e[tag=allayfix.owner.allay,limit=1] remove allayfix.teleport
execute as @e[tag=allayfix.owner] at @s if block ~ ~ ~ air align xyz run tp @e[tag=allayfix.owner.allay] ~.5 ~ ~.5
execute as @e[tag=allayfix.owner] at @s run tp @s ~ ~10000 ~
kill @e[tag=allayfix.owner]
tag @s remove allayfix.owner.allay
