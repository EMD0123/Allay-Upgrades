kill @e[tag=allayfix.owner]
tag @s remove allayfix.owner.allay
tag @s add allayfix.owner.allay
summon minecraft:arrow ~ ~1000 ~ {Tags:["allayfix.owner"]}
data modify entity @e[tag=allayfix.owner,limit=1] Owner set from entity @s Brain.memories."minecraft:liked_player".value
tag @e[tag=allayfix.owner.allay,limit=1] remove allayfix.teleport
execute as @e[tag=allayfix.owner] at @e[tag=allayfix.owner.allay,limit=1] on origin unless entity @s[distance=0..64] if entity @s[gamemode=!spectator] at @s run tag @e[tag=allayfix.owner.allay,limit=1] add allayfix.teleport
execute on vehicle run tag @e[tag=allayfix.owner.allay,limit=1] remove allayfix.teleport
execute as @e[tag=allayfix.owner] at @s run tp @s ~ ~1000 ~
kill @e[tag=allayfix.owner]
tag @s remove allayfix.owner.allay
