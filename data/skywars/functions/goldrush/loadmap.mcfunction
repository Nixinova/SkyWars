#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#      Map loading commands      
#                                 
#---------------------------------

# Western Middle

#  North-east section
clone 27 206 1 27 207 1 5 73 -3 replace
setblock 5 74 -3 redstone_block
fill 5 73 -3 5 74 -3 air

#  South-east section
clone 26 206 1 26 206 1 5 73 5 replace
setblock 5 74 5 redstone_block
fill 5 73 5 5 74 5 air

#  South-west section
clone 25 206 1 25 206 1 -3 73 5 replace
setblock -3 74 5 redstone_block
fill -3 73 5 -3 74 5 air

#  North-west section
clone 24 206 1 24 206 1 -3 73 -3 replace
setblock -3 74 -3 redstone_block
fill -3 73 -3 -3 74 -3 air

#  Bottom section
clone 23 206 1 23 206 1 -1 51 1 replace
setblock -1 50 1 redstone_block
fill -1 50 1 -1 51 1 air


# Eastern Middle

#  North-east section
clone 27 206 0 27 206 0 55 73 -3 replace
setblock 55 74 -3 redstone_block
fill 55 73 -3 55 74 -3 air

#  South-east section
clone 26 206 0 26 206 0 55 73 5 replace
setblock 55 74 5 redstone_block
fill 55 73 5 55 74 5 air

#  South-west section
clone 25 206 0 25 206 0 47 73 5 replace
setblock 47 74 5 redstone_block
fill 47 73 5 47 74 5 air

#  North-west section
clone 24 206 0 24 206 0 47 73 -3 replace
setblock 47 74 -3 redstone_block
fill 47 73 -3 47 74 -3 air

#  Bottom section
clone 23 206 0 23 206 0 51 52 0 replace
setblock 51 51 0 redstone_block
fill 51 51 0 51 52 0 air


# Bridge

#  Eastern section
clone 26 206 2 26 206 2 25 68 0 replace
setblock 25 69 0 redstone_block
fill 25 68 0 25 69 0 air

#  Western section
clone 27 206 2 27 206 2 24 68 0 replace
setblock 24 69 0 redstone_block
fill 24 68 0 24 69 0 air


# Islands

#  North-facing islands

#   Island 1
clone 27 206 -1 27 206 -1 61 77 26 replace
setblock 61 78 26 redstone_block
fill 61 77 26 61 78 26 air

#   Island 2
clone 26 206 -1 26 206 -1 41 77 26 replace
setblock 41 78 26 redstone_block
fill 41 77 26 41 78 26 air

#   Island 3
clone 25 206 -1 25 206 -1 10 77 26 replace
setblock 10 78 26 redstone_block
fill 10 77 26 10 78 26 air

#   Island 4
clone 24 206 -1 24 206 -1 -10 77 26 replace
setblock -10 78 26 redstone_block
fill -10 77 26 -10 78 26 air

#  East-facing islands

#   Island 5
clone 27 206 -2 27 206 -2 -27 77 11 replace
setblock -27 78 11 redstone_block
fill -27 77 11 -27 78 11 air

#   Island 6
clone 26 206 -2 26 206 -2 -27 77 -11 replace
setblock -27 78 -11 redstone_block
fill -27 77 -11 -27 78 -11 air

#  South-facing islands

#   Island 7
clone 27 206 -4 27 206 -4 -10 77 -27 replace
setblock -10 78 -27 redstone_block
fill -10 77 -27 -10 78 -27 air

#   Island 8
clone 26 206 -4 26 206 -4 11 77 -27 replace
setblock 11 78 -27 redstone_block
fill 11 77 -27 11 78 -27 air

#   Island 9
clone 25 206 -4 25 206 -4 42 77 -27 replace
setblock 42 78 -27 redstone_block
fill 42 77 -27 42 78 -27 air

#   Island 10
clone 24 206 -4 24 206 -4 62 77 -27 replace
setblock 62 78 -27 redstone_block
fill 62 77 -27 62 78 -27 air

#  West-facing islands

#   Island 11
clone 27 206 -3 27 206 -3 78 77 -11 replace
setblock 78 78 -11 redstone_block
fill 78 77 -11 78 78 -11 air

#   Island 12
clone 26 206 -3 26 206 -3 78 77 11 replace
setblock 78 78 11 redstone_block
fill 78 77 11 78 78 11 air

title @a actionbar [{"text":"Loading map: ","color":"yellow"},{"text":"100% complete","color":"green"}]

kill @e[type=item]