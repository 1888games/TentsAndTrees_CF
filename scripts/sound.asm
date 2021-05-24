 
BadSound:                               ;make a bad sound
				li		$3f		; r1 loaded with $3f
				lr		1,a		
sndloop:
				li		$80		; $80 loaded into A
				outs	5			; send data to port
				lis		1		; A=1
				lr		5,a		; load r5 with 1

				li 50
				lr 		0, a
DelayLp:
				ds 0
				bnz DelayLp

			
				lis		0		; same as clr
				outs	5			; send 0 on port
				ds		1		; r1 decreased
				bf		4,sndloop	; run the loop again until r1 is 0

				pop


-----------;
; Play Song ;
;-----------;

; plays a song from memory
; song address stored in DC0
; uses r3, r4, r5, r7

playSong:                       				; taken from Pro Football
	lis	3						; A = 3
	lr	4, A						; A -> r4, r4 = 3

.playSongDelay1:      
	inc							; increase A
	bnz	.playSongDelay1					; [Branch if not zero] back to .psdly1
	am							; Memory adressed by DC0 is added to A, flags set  - get duration data
	lr	7, A						; A -> r7
	bz	.playSongEnd					; Go to end if zero
	lm							; Load memory into A (adressed by DC0) - get frequency data
	lr	5, A						; A -> r5

	; check to see if we should pause
	inc
	bnc  .playSongLoop					; it didn't roll over, play a note instead

.playSongPause:
	li	$ff
	lr	6, A
.playSongPauseLoop:
	ds	6						; pause counter
	bnz	.playSongPauseLoop
	ds	7						; duration of the pause
	bnz	.playSongPause

	; play the next note
	br	playSong

.playSongLoop:
	li	$80						; A= $80 
	outs	5						; Send  A -> port 5
	lr	A, 5						; r5 -> A

.playSongDelay2:
	inc							; increase A
	bnz	.playSongDelay2						; [Branch if not zero] back to .psdly2
	outs	5						; A -> port 5
	lr	A, 5						; r5 -> A

.playSongDelay3:
	inc							; increase A
	bnz	.playSongDelay3					; [Branch if not zero] back to .psdly3
	ds	4						; decrease r4
	bnz	.playSongLoop					; [Branch if not zero] back to .psloop
	lis	3						; A = 3
	lr	4, A						; A -> r4
	ds	7						; decrease r7
	bnz	.playSongLoop						; [Branch if not zero] back to .psloop
	br	playSong					; start over - branch to beginning

.playSongEnd:
	pop		


sfx.extraPacman:
	.byte	6,121,6,122,12
	.byte 131,6,132,6,141,6,142,12
	.byte 151,6,152,6,161,6,162,12
	.byte 171,6,172,6,181,6,182,12
	.byte 191,6,192,6,201,6,202,12
	.byte 211,6,212,6,221,6,222,12
	.byte 231,6,232,6,232,6,232,12
	.byte 233,6,234,6,235,6,232,12
	.byte 231,6,232,6,231,6,231,12
	.byte 211,6,212,6,200,6,200,12
	.byte 191,6,192,0


sfx.dying.0:
	.byte	4,149,4,148,4,144,4,142,4,141
	.byte	4,142,4,145,4,148,4,150,4,152,4,153
	.byte	4,144,4,142,4,139,4,136,3,133,3,131
	.byte	3,133,3,136,4,139,4,142,4,145,4,146
	.byte	0	
sfx.dying.1:
	.byte	3,179,3,176,3,173,3,170,3,165,3,163
	.byte	3,165,3,170,3,173,3,176,3,179,3,181
	.byte	3,165,3,161,3,157,3,152,2,147,2,143
	.byte	0	
sfx.dying.2:
	.byte	2,147,2,152,3,157,3,161,3,166,3,168
	.byte	3,155,3,152,3,147,2,141,2,139,2,128
	.byte	2,135,2,138
	.byte	0	
sfx.dying.3:
	.byte	2,126,3,170,3,192,4,205,5,214,6,220
	.byte	7,224,7,229,8,232,9,234,10,255
	.byte	2,126,3,170,3,192,4,205,5,214,6,220
	.byte	7,224,7,229,8,232,9,234
	.byte	0					; end of song


;---------------------------------------------------------------------------
; Ghost Eat Sound
;---------------------------------------------------------------------------

sfx.ghostEat:
	.byte 5,10,2,61,2,63,3,93,3,94,3,95,3,95,3,95
	.byte 3,103,3, 104,3,111,3,112,3,112,3,112,3,108,3,108
	.byte 2,110,2,111,2,112,2,112,2,112

	.byte 0

;---------------------------------------------------------------------------
; Powerpellet duration sound
;---------------------------------------------------------------------------

sfx.powerpellet:
	.byte 4,240
	.byte 0

sfx.move:
	.byte 4, 250
	.byte 0

sfx.place:
	.byte 5, 75, 5, 150
	.byte 0


sfx.delete:
	.byte 5, 100, 5, 50
	.byte 0



;---------------------------------------------------------------------------
; Prize Eat Sound
;---------------------------------------------------------------------------

sfx.prizeEat:
	.byte 2,75,2,72,2,65,1,59,1,47,1,12,4,1,1,5,1,32
	.byte	1,49,2,66,2,7,2,1,3,166,3,173
	.byte 0
