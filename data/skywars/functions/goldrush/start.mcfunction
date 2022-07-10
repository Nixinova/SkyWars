#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#      Game starting commands     #
#                                 #
#---------------------------------#

scoreboard players set ingame players 1

tellraw @a {"text":"Game starting!","color":"green"}
title @a title {"text":"Game starting!","color":"green"}

team join playing @a[team=ready]
scoreboard players reset @a ready
scoreboard players reset @a kills
scoreboard players reset count players_ready
clear @a[team=playing]
gamemode adventure @a[team=playing]
effect give @a[team=playing] minecraft:resistance 15 4

setblock 24 206 7 redstone_block

title @a[team=playing] actionbar {"text":"Resetting map...","color":"red"}
function skywars:goldrush/clearmap
title @a[team=playing] actionbar {"text":"Map cleared.","color":"green"}
title @a[team=playing] actionbar {"text":"Loading new map...","color":"yellow"}
function skywars:goldrush/loadmap
title @a[team=playing] actionbar {"text":"Map loaded.","color":"green"}

# Starting positions
tp @a[tag=1] 61 74 26
tp @a[tag=2] 42 74 -27
tp @a[tag=3] 10 74 26
tp @a[tag=4] -10 74 -27
tp @a[tag=5] 78 74 11
tp @a[tag=6] -27 74 -11
tp @a[tag=7] 62 74 -27
tp @a[tag=8] -10 74 26
tp @a[tag=9] 41 74 26
tp @a[tag=10] 11 74 -27
tp @a[tag=11] 78 74 -11
tp @a[tag=12] -27 74 11

# Tag cleanup
tag @a[team=playing] remove 1
tag @a[team=playing] remove 2
tag @a[team=playing] remove 3
tag @a[team=playing] remove 4
tag @a[team=playing] remove 5
tag @a[team=playing] remove 6
tag @a[team=playing] remove 7
tag @a[team=playing] remove 8
tag @a[team=playing] remove 9
tag @a[team=playing] remove 10
tag @a[team=playing] remove 11
tag @a[team=playing] remove 12

# Cages
execute as @a[team=playing] at @s run setblock ~ 77 ~ glass
execute as @a[scores={cage=0}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 glass replace glass
execute as @a[scores={cage=1}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 barrier replace glass
execute as @a[scores={cage=2}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 light_blue_stained_glass replace glass
execute as @a[scores={cage=3}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 lime_stained_glass replace glass
execute as @a[scores={cage=4}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 cyan_stained_glass replace glass
execute as @a[scores={cage=5}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 red_stained_glass replace glass
execute as @a[scores={cage=6}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 pink_stained_glass replace glass
execute as @a[scores={cage=7}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 yellow_stained_glass replace glass
execute as @a[scores={cage=8}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 blue_stained_glass replace glass
execute as @a[scores={cage=9}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 green_stained_glass replace glass
execute as @a[scores={cage=10}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 gray_stained_glass replace glass
execute as @a[scores={cage=11}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 black_stained_glass replace glass
execute as @a[scores={cage=12}] at @s run fill ~ ~3 ~ ~ ~-2 ~ iron_block replace glass
execute as @a[scores={cage=12}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 iron_trapdoor replace glass
execute as @a[scores={cage=13}] at @s run fill ~ ~3 ~ ~ ~-2 ~ oak_wood replace glass
execute as @a[scores={cage=13}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 oak_leaves[persistent=true] replace glass

# Miner
give @a[team=playing,scores={kit=1}] iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:3}]}
give @a[team=playing,scores={kit=1}] stone 10

# Witch
give @a[team=playing,scores={kit=2}] splash_potion{Potion:harming} 2
give @a[team=playing,scores={kit=2}] splash_potion{Potion:weakness}
give @a[team=playing,scores={kit=2}] splash_potion{Potion:slowness}

# Nurse
give @a[team=playing,scores={kit=3}] splash_potion{Potion:healing}
give @a[team=playing,scores={kit=3}] splash_potion{Potion:strong_healing}
give @a[team=playing,scores={kit=3}] splash_potion{Potion:regeneration}
give @a[team=playing,scores={kit=3}] splash_potion{Potion:strong_regeneration}

# Marksman
give @a[team=playing,scores={kit=4}] bow
give @a[team=playing,scores={kit=4}] arrow 8

# Armourer
give @a[team=playing,scores={kit=5}] chainmail_helmet
give @a[team=playing,scores={kit=5}] chainmail_chestplate
give @a[team=playing,scores={kit=5}] chainmail_leggings
give @a[team=playing,scores={kit=5}] chainmail_boots

# Summoner
give @a[team=playing,scores={kit=6}] creeper_spawn_egg
give @a[team=playing,scores={kit=6}] spider_spawn_egg
give @a[team=playing,scores={kit=6}] skeleton_spawn_egg

# Farmer
give @a[team=playing,scores={kit=7}] stone_hoe{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}
give @a[team=playing,scores={kit=7}] bread 8

# Fisherman
give @a[team=playing,scores={kit=8}] fishing_rod{Enchantments:[{id:"minecraft:knockback",lvl:1}]}
give @a[team=playing,scores={kit=8}] cod 12
