#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#        Load structures      
#                                 
#---------------------------------

# Western Middle
#  North-east section
clone 27 206 1 27 207 1 5 73 -3 replace
#  South-east section
clone 26 206 1 26 206 1 5 73 5 replace
#  South-west section
clone 25 206 1 25 206 1 -3 73 5 replace
#  North-west section
clone 24 206 1 24 206 1 -3 73 -3 replace
#  Bottom section
clone 23 206 1 23 206 1 -1 51 1 replace


# Eastern Middle
#  North-east section
clone 27 206 0 27 206 0 55 73 -3 replace
#  South-east section
clone 26 206 0 26 206 0 55 73 5 replace
#  South-west section
clone 25 206 0 25 206 0 47 73 5 replace
#  North-west section
clone 24 206 0 24 206 0 47 73 -3 replace
#  Bottom section
clone 23 206 0 23 206 0 51 52 0 replace

# Bridge
#  Eastern section
clone 26 206 2 26 206 2 25 68 0 replace
#  Western section
clone 27 206 2 27 206 2 24 68 0 replace

# Islands
#  North-facing islands
clone 27 206 -1 27 206 -1 61 77 26 replace
clone 26 206 -1 26 206 -1 41 77 26 replace
clone 25 206 -1 25 206 -1 10 77 26 replace
clone 24 206 -1 24 206 -1 -10 77 26 replace
#  East-facing islands
clone 27 206 -2 27 206 -2 -27 77 11 replace
clone 26 206 -2 26 206 -2 -27 77 -11 replace
#  South-facing islands
clone 27 206 -4 27 206 -4 -10 77 -27 replace
clone 26 206 -4 26 206 -4 11 77 -27 replace
clone 25 206 -4 25 206 -4 42 77 -27 replace
clone 24 206 -4 24 206 -4 62 77 -27 replace
#  West-facing islands
clone 27 206 -3 27 206 -3 78 77 -11 replace
clone 26 206 -3 26 206 -3 78 77 11 replace

title @a actionbar [{"text":"Loading map: ","color":"yellow"},{"text":"100% complete","color":"green"}]

kill @e[type=item]