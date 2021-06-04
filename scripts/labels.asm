;------------------------
; BIOS Calls
;------------------------
clrscrn         =       $00d0                                   ;uses r31
delay           =       $008f
pushk           =       $0107                                   ;used to allow more subroutine stack space
popk            =       $011e
drawchar        =       $0679
IncP1Score      =       $02AC

;------------------------
; Colors
;------------------------
Red             =       $40
Blue            =       $80
Green           =       $00
Transparent     =       $C0
Back_green 		=      	$C0
Back_grey		= 		$C6

R1_Background_Colour =  1
R2_Foreground_Colour = 	2
R5_CharID			 =  5
R3_XPos 			 =  3
R4_YPos				 =  4


X_Reg = 60
Y_Reg = 52

GridCellSize = 6
GridCellSizeNeg = 250
ChanceOfATree = 170
StartGridSize = 3
StartGridSizeNeg = 253
MaxGridCells = 64
MaxScorePerRound = 50
LevelX = 81

WILL_BE_TENT = 3
BLANK_CELL = 0
TENT = 2
TREE = 1

R1_ATTEMPTS = 1

MaxAttempts = 12

GridStartX = 8
GridStartY = 9

EdgeX = 1
EdgeTopY = 2

	
PACMAN_COLOR		=	green
MAZE_BGCOLOR		=	transparent
MAZE_FGCOLOR		=	blue
PELLET_COLOR		=	red
SIDEBAR_COLOR		=	blue
PACMAN_COLOR		=	green
MAZE_BGCOLOR		=	transparent
MAZE_FGCOLOR		=	blue
PELLET_COLOR		=	red
SIDEBAR_COLOR		=	blue


