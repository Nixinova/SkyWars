#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#        Readying commands        
#                                 
#---------------------------------

# Clear all tags first
tag @s remove 1
tag @s remove 2
tag @s remove 3
tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8
tag @s remove 9
tag @s remove 10
tag @s remove 11
tag @s remove 12

# Add spawn position tags to player
execute if score currentTag tags matches 1 run tag @s add 1
execute if score currentTag tags matches 2 run tag @s add 2
execute if score currentTag tags matches 3 run tag @s add 3
execute if score currentTag tags matches 4 run tag @s add 4
execute if score currentTag tags matches 5 run tag @s add 5
execute if score currentTag tags matches 6 run tag @s add 6
execute if score currentTag tags matches 7 run tag @s add 7
execute if score currentTag tags matches 8 run tag @s add 8
execute if score currentTag tags matches 9 run tag @s add 9
execute if score currentTag tags matches 10 run tag @s add 10
execute if score currentTag tags matches 11 run tag @s add 11
execute if score currentTag tags matches 12 run tag @s add 12

# Increment tags
scoreboard players add currentTag tags 1
execute if score currentTag tags matches 13.. run scoreboard players remove currentTag tags 12

# Final commands
execute if score @s ready matches 1 run tellraw @a [{"selector":"@s","color":"green"},{"text":" is ready!","color":"yellow"}]
execute unless score @s ready matches 1 run tellraw @a [{"selector":"@s","color":"green"},{"text":" is now ready!","color":"green"}]
scoreboard players set @s ready 1
team join ready @s
scoreboard players add count players_ready 1
