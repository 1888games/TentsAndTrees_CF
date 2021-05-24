tiles:
	; these are regular tiles
	; which can be used in any map

	; tile 0
	.word	tile_blank
	
	; tile 1
	.word	tile_tree

	; tile 2
	.word	tile_tent
	
	; tile 3
	.word	tile_select
	

	; tile 4
	.word	tile_0
	
	; tile 5
	.word	tile_1
	

	; tile 6
	.word	tile_2


	; tile 7
	.word	tile_3
	

	; tile 9
	.word	tile_4
	
	; tile 10
	.word	tile_5
	

	; tile 11
	.word	tile_6
	

	; tile 12
	.word	tile_7
	

	; tile 13
	.word	tile_8
	

	; tile 14
	.word	tile_9

	; tile 15
	.word	tile_level

		; tile 16
	.word	tile_s


		; tile 17
	.word	tile_c


	; tile 18
	.word	tile_o

	; tile 19
	.word	tile_r


		; tile 20
	.word	tile_e


		; tile 21
	.word	tile_l

			; tile 22
	.word	tile_v








tile_blank:
	.byte %00000000	
	.byte %00000000	
	.byte %00000000	
	.byte %00000000	

tile_tree:
	.byte %00100011
	.byte %10111110
	.byte %01000010
	.byte %00000000



tile_tree2:
	.byte	%00000000
	.byte	%00010000
	.byte	%00111000
	.byte	%01111100
	.byte	%00010000
	.byte	%00010000


tile_tent
	.byte %00100011
		.byte %10111111
		.byte %10111101
		.byte %10000000



tile_select:
	.byte	%10000001
	.byte	%00000000
	.byte	%00000000
	.byte	%00000000
	.byte	%00000000
	.byte	%10000001


tile_0:
	.byte %01110010
	.byte %10010100
	.byte %10100111
	.byte %00000000



tile_1:
	.byte %00100011
	.byte %00001000
	.byte %01000111
	.byte %00000000


tile_2:
	.byte %01110000
	.byte %10011100
	.byte %10000111
	.byte %00000000



tile_3:
	.byte %01110000
	.byte %10011100
	.byte %00100111
	.byte %00000000



tile_4:
		.byte %01000010
	.byte %10011100
	.byte %00100001
	.byte %00000000


tile_5:
		.byte %01110010
		.byte %00011100
		.byte %00100111
		.byte %00000000



tile_6:
	.byte %01110010
	.byte %00011100
	.byte %10100111
	.byte %00000000



tile_7:
		.byte %01110000
		.byte %10000100
		.byte %00100001
		.byte %00000000


tile_8:
		.byte %01110010
		.byte %10011100
		.byte %10100111
		.byte %00000000

tile_9:
	.byte %01110010
	.byte %10011100
	.byte %00100001
	.byte %00000000



tile_level:
	.byte %10101101
	.byte %01101011
	.byte %01011101
	.byte %00000000



tile_a:

	.byte %01110010
	.byte %10011100
	.byte %10100101
	.byte %00000000

tile_b:

	.byte %01110010
	.byte %10011000
	.byte %10100111
	.byte %00000000

tile_s:

	.byte %01110010
	.byte %00011100
	.byte %00100111
	.byte %00000000

tile_c:
	.byte %01110010
	.byte %00010000
	.byte %10000111
	.byte %00000000

tile_o:

	.byte %01110010
	.byte %10010100
	.byte %10100111
	.byte %00000000

tile_r:

	.byte %01100010
	.byte %10011000
	.byte %10100101
	.byte %00000000

tile_e:

	.byte %01110010
	.byte %00011100
	.byte %10000111
	.byte %00000000


tile_l:
	.byte %01000010
	.byte %00010000
	.byte %10000111
	.byte %00000000

tile_v:

	.byte %01010010
	.byte %10010100
	.byte %10100010
	.byte %00000000



Text_Tents:

	dc "TENTS AND TREES"
	.byte 0

Text_test:

	dc "ABABBBBAA"
	.byte 0

	
