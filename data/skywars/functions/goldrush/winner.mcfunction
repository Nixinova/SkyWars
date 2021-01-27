#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#       Finishing commands      
#                                 
#---------------------------------

scoreboard players set ingame players 0

scoreboard players add @a[team=playing] wins 1
scoreboard players reset * deaths

tellraw @a ["",{"selector":"@a[team=playing]","color":"green"},{"text":" has won!","color":"green"}]
title @a title {"selector":"@a[team=playing]","color":"green"}
title @a subtitle {"text":"has won!","color":"green"}

tp @a 25 138 1
gamemode adventure @a
team join lobby @a
clear @a