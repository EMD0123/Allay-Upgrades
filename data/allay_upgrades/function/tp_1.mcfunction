execute store result entity @s data.allay_upgrades.teleport_pos.x double 1 run random value -5..5
execute store result entity @s data.allay_upgrades.teleport_pos.y double 1 run random value -5..5
execute store result entity @s data.allay_upgrades.teleport_pos.z double 1 run random value -5..5
$execute at @a[nbt={UUID:$(value)}] run function allay_upgrades:tp_2 with entity @s data.allay_upgrades.teleport_pos