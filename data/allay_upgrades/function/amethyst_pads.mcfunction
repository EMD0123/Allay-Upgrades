particle dust{color:[0.694,0.518,1.000],scale:1} ~ ~.3 ~ 0.15 0.15 0.15 1 2 normal
attribute @s minecraft:flying_speed modifier add allay_upgrades:amethyst_pad -1 add_multiplied_total
#tp @s ~ ~ ~

execute unless score amethyst_pad allay_upgrades.gamerules matches 1 run function allay_upgrades:amethyst_pad_deactivate
execute if predicate allay_upgrades:has_hand_item run function allay_upgrades:amethyst_pad_deactivate
execute unless predicate allay_upgrades:amethyst_pad run function allay_upgrades:amethyst_pad_deactivate