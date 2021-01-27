#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#      Always-running commands    #
#                                 #
#---------------------------------#

# Player count test
execute store result score count players_ready if entity @e[team=ready]
execute store result score alive players if entity @e[team=playing]
execute if score alive players <= min players if score ingame players matches 1 run function skywars:goldrush/winner

# Lobby hotbar
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.0 replace diamond_sword{display:{Name:'"\\u00A7eLobby Blade"',Lore:['"\\u00A7cFight in the lobby!"']},Enchantments:[{id:"knockback",lvl:2}],Unbreakable:true,HideFlags:127}
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.1 replace air
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.2 replace air
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.3 replace written_book{pages:['[{"text":"Select a kit:\\n","color":"red"},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Miner","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 1"}},{"text":"\\n","color":"reset"},{"text":"\\u2022 ","color":"dark_aqua"},{"text":"Witch","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 2"}},{"text":"\\n","color":"reset"},{"text":"\\u2022 ","color":"dark_aqua"},{"text":"Nurse","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 3"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Marksman","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 4"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Armourer","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 5"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Summoner","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 6"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Farmer","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 7"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Fisherman","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s kit 8"}}]'],title:"Kit Selector",author:"Nixinova",display:{Name:'"\\u00A7eKit Selector"',Lore:['"\\u00A7aSelect a kit"']},HideFlags:127}
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.4 replace air
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.5 replace written_book{pages:['[{"text":"\\u00A7cChoose a cage:\\u00A7r\\n"},{"text":"\\n\\u2022 Default","color":"reset","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 0"}},{"text":"\\n\\u2022 None","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 1"}},{"text":"\\n\\u2022 Glass: "},{"text":"\\u25a0","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 2"}},{"text":"\\u25a0","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 3"}},{"text":"\\u25a0","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 4"}},{"text":"\\u25a0","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 5"}},{"text":"\\u25a0","color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 6"}},{"text":"\\u25a0","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 7"}},{"text":"\\u25a0","color":"dark_blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 8"}},{"text":"\\u25a0","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 9"}},{"text":"\\u25a0","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 10"}},{"text":"\\u25a0","color":"black","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 11"}},{"text":"\\n\\u2022 Iron","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 12"}},{"text":"\\n\\u2022 Wood","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cage 13"}}]'],title:"Cage Selector",author:"Nixinova",display:{Name:'"\\u00A7eCage Selector"',Lore:['"\\u00A7aChoose a cage"']},HideFlags:127}
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.6 replace air
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.7 replace air
item entity @a[team=lobby,x=25,y=138,z=1,distance=..10] hotbar.8 replace air

# Lobby commands
kill @e[type=item,x=25,y=138,z=1,distance=..10]
execute as @a at @s run spawnpoint @s ~ ~1 ~
effect clear @a[x=25,y=138,z=1,distance=..10]
effect give @a[x=25,y=138,z=1,distance=..10] minecraft:instant_health 1 10 true
effect give @a[x=25,y=138,z=1,distance=..10] minecraft:saturation 1 10 true
spawnpoint @a[x=25,y=138,z=1,distance=..10,team=!ready] 25 138 1
tp @a[x=25,y=138,z=1,distance=..11,gamemode=spectator] 25 138 1
team join lobby @a[x=25,y=138,z=1,distance=..10,team=!ready]
gamemode adventure @a[x=25,y=138,z=1,distance=..10]

# Death commands
team join spectator @a[scores={deaths=1..}]
gamemode spectator @a[team=spectator]
scoreboard players reset * deaths
execute as @a[team=spectator,x=0,y=-256,z=0,distance=..256] run tp @s ~ 64 ~
kill @a[team=playing,x=0,y=-256,z=0,distance=..256]

# World commands
weather clear