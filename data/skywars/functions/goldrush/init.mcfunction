#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#       World initialisation      #
#                                 #
#---------------------------------#

gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule spawnRadius 1
time set day
setworldspawn 25 139 1
spawnpoint @a 25 139 1
tp @a 25 139 1

### SETUP ###

# Teams
team add lobby
team modify lobby color yellow
team add ready
team modify ready color green
team add spectator
team modify spectator color gray
team add playing
team modify playing color red

# Scoreboards
scoreboard objectives add kills playerKillCount "Kills"
scoreboard objectives add wins dummy "Wins"
scoreboard objectives add players_ready dummy "Players Needed"
scoreboard objectives add cage dummy "CageID"
scoreboard objectives add ready dummy "Ready"
scoreboard objectives add players dummy "Players"
scoreboard objectives add kit dummy "KitID"
scoreboard objectives add health health "HP"
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add tags dummy "Tags"
scoreboard objectives setdisplay sidebar.team.yellow wins
scoreboard objectives setdisplay sidebar.team.red kills
scoreboard objectives setdisplay sidebar.team.gray kills
scoreboard players set limit players_ready 2
scoreboard players set min players 1

### LOBBY ###

# Structure
fill 33 137 -7 19 142 7 smooth_quartz hollow
fill 33 137 -7 19 137 7 white_stained_glass
fill 33 142 -7 19 142 7 white_stained_glass

# Signs
setblock 27 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function skywars:goldrush/startsign"}}',Text2:'{"text":"Start","color":"green"}'}
setblock 25 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function skywars:goldrush/ready"}}',Text2:'{"text":"Ready","color":"yellow"}'}
setblock 27 139 6 oak_wall_sign{Text2:'{"text":"Made by","color":"white"}',Text3:'{"text":"Nixinova","color":"aqua"}'}
setblock 25 139 6 oak_wall_sign{Text2:'{"text":"SkyWars v2.3","color":"green"}',Text3:'{"text":"(MC 1.17-1.19)","color":"aqua"}'}

# Credit
setblock 26 139 6 player_wall_head{SkullOwner:{Name:"Nixinova"}}

### MAP LOADING ###

# Structure block platform
fill 22 205 9 28 205 -5 prismarine_slab[type=top]
fill 22 207 9 28 207 -5 prismarine_slab

# Ticker
setblock 25 206 6 repeating_command_block{Command:"function skywars:goldrush/running",auto:true}

# Bridge
setblock 27 206 2 structure_block{mode:LOAD,name:"skywars:bridge-w",posX:-11,posY:-12,posZ:-2}
setblock 26 206 2 structure_block{mode:LOAD,name:"skywars:bridge-e",posX:4,posY:-12,posZ:-2}

# Western Middle
setblock 27 206 1 structure_block{mode:LOAD,name:"skywars:_midw-ne",posX:-4,posY:-16,posZ:-8}
setblock 26 206 1 structure_block{mode:LOAD,name:"skywars:_midw-se",posX:-4,posY:-16,posZ:-4}
setblock 25 206 1 structure_block{mode:LOAD,name:"skywars:_midw-sw",posX:-8,posY:-16,posZ:-4}
setblock 24 206 1 structure_block{mode:LOAD,name:"skywars:_midw-nw",posX:-8,posY:-16,posZ:-8}
setblock 23 206 1 structure_block{mode:LOAD,name:"skywars:_midw-b",posX:-7,posY:1,posZ:-9}

# Eastern Middle
setblock 27 206 0 structure_block{mode:LOAD,name:"skywars:_mide-ne",posX:-2,posY:-16,posZ:-7}
setblock 26 206 0 structure_block{mode:LOAD,name:"skywars:_mide-se",posX:-2,posY:-16,posZ:-3}
setblock 25 206 0 structure_block{mode:LOAD,name:"skywars:_mide-sw",posX:-6,posY:-16,posZ:-3}
setblock 24 206 0 structure_block{mode:LOAD,name:"skywars:_mide-nw",posX:-6,posY:-16,posZ:-7}
setblock 23 206 0 structure_block{mode:LOAD,name:"skywars:_mide-b",posX:-6,posY:1,posZ:-6}

# North-facing islands
setblock 27 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n1",posX:-5,posY:-18,posZ:-6}
setblock 26 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n2",posX:-5,posY:-18,posZ:-6}
setblock 25 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n3",posX:-5,posY:-18,posZ:-6}
setblock 24 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n4",posX:-5,posY:-18,posZ:-6}

# East-facing islands
setblock 27 206 -2 structure_block{mode:LOAD,name:"skywars:isle_e1",posX:-6,posY:-18,posZ:-5}
setblock 26 206 -2 structure_block{mode:LOAD,name:"skywars:isle_e2",posX:-6,posY:-18,posZ:-5}

# West-facing islands
setblock 27 206 -3 structure_block{mode:LOAD,name:"skywars:isle_w1",posX:-6,posY:-18,posZ:-5}
setblock 26 206 -3 structure_block{mode:LOAD,name:"skywars:isle_w2",posX:-6,posY:-18,posZ:-5}

# South-facing islands
setblock 27 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s1",posX:-5,posY:-18,posZ:-6}
setblock 26 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s2",posX:-5,posY:-18,posZ:-6}
setblock 25 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s3",posX:-5,posY:-18,posZ:-6}
setblock 24 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s4",posX:-5,posY:-18,posZ:-6}

# Starting text
setblock 25 206 7 command_block{Command:"setblock ~-1 ~ ~ air"}
setblock 24 206 6 command_block{Command:'tellraw @a[team=playing] ["",{"text":"Starting!","color":"yellow"}]'}
setblock 24 206 8 command_block{Command:"execute as @a[team=playing] at @s run fill ~ ~ ~ ~ ~-3 ~ air"}
setblock 23 206 7 command_block{Command:"effect give @a[team=playing] slow_falling 5"}
