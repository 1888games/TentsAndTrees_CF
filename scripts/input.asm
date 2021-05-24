WaitForInput:
	; see if one of the hand controllers has moved
	lr A, 0
	inc
	lr 0, A

	bnc NoWrap1

	Load_Ram RAM.ScoreCounter
	inc
	inc
	Store_Ram RAM.ScoreCounter

	bnc NoWrap1

	Load_Ram RAM.ScoreThisRound
	ai 255
	ci 0
	bz NoWrap1
	Store_Ram RAM.ScoreThisRound	


NoWrap1:


	clr						; clear accumulator 
	outs	0					; enable input from both hand controllers
	outs	1					; clear latch of port of right hand controller
	outs	4					; clear latch of port of left hand controller
	ins	1					; fetch inverted data from right hand controller
	com						; invert controller data (a %1 now means active)
	bnz	wait.4.controller.input.end		; if no movement then input is 0 -> no branch
	; check the other controller
	ins	4					; fetch inverted data from left hand controller
	com						; invert controller data (if bit is 1 it means active)
	bnz NotZero			; if there's no indata repeat

	Store_Ram RAM.ControlDebounce

NotZero:
	dci RAM.ControlDebounce
	cm
	bz WaitForInput

	Store_Ram RAM.ControlDebounce

wait.4.controller.input.end:
	pop						; return from subroutine, controller data in A



