kill @e[tag=allay_upgrades.owner]
tag @s remove allay_upgrades.owner.allay
tag @s add allay_upgrades.owner.allay
summon minecraft:arrow ~ ~1000 ~ {Tags:["allay_upgrades.owner"]}
data modify entity @e[tag=allay_upgrades.owner,limit=1] Owner set from entity @s Brain.memories."minecraft:liked_player".value
tag @e[tag=allay_upgrades.owner.allay,limit=1] remove allay_upgrades.teleport
execute as @e[tag=allay_upgrades.owner] at @e[tag=allay_upgrades.owner.allay,limit=1] on origin unless entity @s[distance=0..64] if entity @s[gamemode=!spectator] at @s run tag @e[tag=allay_upgrades.owner.allay,limit=1] add allay_upgrades.teleport
execute on vehicle run tag @e[tag=allay_upgrades.owner.allay,limit=1] remove allay_upgrades.teleport
execute as @e[tag=allay_upgrades.owner] at @s run tp @s ~ ~1000 ~
kill @e[tag=allay_upgrades.owner]
tag @s remove allay_upgrades.owner.allay
