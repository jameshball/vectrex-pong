;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	main.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -fno-gcse -fverbose-asm -W -Wall -Wextra -Wconversion
; -Werror -fomit-frame-pointer -fno-toplevel-reorder -mint8
; -msoft-reg-count=0 -std=gnu99 -fno-time-report
; -IC:\Vide2.5.1.w64\Vide.w64\C\PeerC\vectrex\include -O3
; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
; -IC:\Vide2.5.1.w64\Vide.w64\vectrex-pong\include
; C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.c
; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
; -fcrossjumping -fcse-follow-jumps -fdefer-pop
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations
; -fforward-propagate -ffunction-cse -fgcse-after-reload -fgcse-lm
; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
; -finline-functions -finline-functions-called-once
; -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
; -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
; -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
; -freorder-functions -frerun-cse-after-loop -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
; -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
; -fstrict-overflow -fthread-jumps -ftrapping-math -ftree-ccp -ftree-ch
; -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
; -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
; -ftree-loop-optimize -ftree-parallelize-loops= -ftree-pre -ftree-reassoc
; -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra -ftree-store-ccp
; -ftree-ter -ftree-vect-loop-version -ftree-vectorize -ftree-vrp
; -funit-at-a-time -funswitch-loops -fverbose-asm -fzero-initialized-in-bss

; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63

	.area	.bss
	.globl	_current_song
_current_song:	.blkb	2
	.globl	_player1_x
_player1_x:	.blkb	1
	.globl	_player1_y
_player1_y:	.blkb	1
	.globl	_player2_x
_player2_x:	.blkb	1
	.globl	_player2_y
_player2_y:	.blkb	1
	.globl	_player1_score_str
_player1_score_str:	.blkb	7
	.globl	_player2_score_str
_player2_score_str:	.blkb	7
	.globl	_dot_x
_dot_x:	.blkb	1
	.globl	_dot_y
_dot_y:	.blkb	1
	.globl	_dot_x_vel
_dot_x_vel:	.blkb	1
	.globl	_dot_y_vel
_dot_y_vel:	.blkb	1
	.globl	_velocity_scale
	.area	.data
_velocity_scale:
	.byte	1
	.area	.bss
	.globl	_dot_brightness
_dot_brightness:	.blkb	1
	.globl	_brightness_fade_in
_brightness_fade_in:	.blkb	1
	.globl	_dot_ticks
_dot_ticks:	.blkb	1
	.globl	_flashes
_flashes:	.blkb	1
	.globl	_edge
	.area	.data
_edge:
	.byte	1
	.byte	-127
	.byte	0
	.byte	-127
	.byte	0
	.area	.text
	.globl	_reset_round
_reset_round:
	leas	-5,s	;,,
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	neg	_velocity_scale	; velocity_scale
	jsr	__Random
	stb	,s	;, D.3249
	ldb	_velocity_scale	;, velocity_scale
	stb	3,s	;, velocity_scale.49
	ldb	,s	;, D.3249
	lda	3,s	;mulqihi3	; velocity_scale.49
	mul
	tfr	d,x	;, tmp31
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp31,
	stb	2,s	;,
	tfr	x,d	; tmp31,
	blt	L6	;
L2:
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asl	3,s	; velocity_scale.49
	ldb	2,s	;,
	addb	3,s	;, velocity_scale.49
	stb	_dot_x_vel	;, dot_x_vel
	jsr	__Random
	stb	,s	;, D.3251
	ldb	_velocity_scale	;, velocity_scale
	stb	4,s	;, velocity_scale.50
	ldb	,s	;, D.3251
	lda	4,s	;mulqihi3	; velocity_scale.50
	mul
	tfr	d,x	;, tmp37
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp37,
	stb	1,s	;,
	tfr	x,d	; tmp37,
	blt	L7	;
L3:
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asl	4,s	; velocity_scale.50
	ldb	1,s	;,
	addb	4,s	;, velocity_scale.50
	stb	_dot_y_vel	;, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	leas	5,s	;,,
	rts
L6:
	ldb	2,s	;,
	addb	#63	;,
	stb	2,s	;,
	lbra	L2	;
L7:
	ldb	1,s	;,
	addb	#63	;,
	stb	1,s	;,
	bra	L3	;
	.globl	_setup
_setup:
	leas	-5,s	;,,
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
	ldb	#1	;,
	stb	_Vec_Music_Flag	;, Vec_Music_Flag
	ldx	#_Vec_Music_9	;,
	stx	_current_song	;, current_song
	ldx	#_player1_score_str	;,
	jsr	___Clear_Score
	ldx	#_player2_score_str	;,
	jsr	___Clear_Score
	ldb	#-128	;,
	stb	_player1_score_str+6	;, player1_score_str
	stb	_player2_score_str+6	;, player2_score_str
	ldb	#-18	;,
	stb	_player1_x	;, player1_x
	ldb	#100	;,
	stb	_player1_y	;, player1_y
	ldb	#-18	;,
	stb	_player2_x	;, player2_x
	ldb	#-100	;,
	stb	_player2_y	;, player2_y
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	neg	_velocity_scale	; velocity_scale
	jsr	__Random
	stb	,s	;, D.3383
	ldb	_velocity_scale	;, velocity_scale
	stb	3,s	;, velocity_scale.64
	ldb	,s	;, D.3383
	lda	3,s	;mulqihi3	; velocity_scale.64
	mul
	tfr	d,x	;, tmp34
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp34,
	stb	2,s	;,
	tfr	x,d	; tmp34,
	blt	L12	;
L9:
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asl	3,s	; velocity_scale.64
	ldb	2,s	;,
	addb	3,s	;, velocity_scale.64
	stb	_dot_x_vel	;, dot_x_vel
	jsr	__Random
	stb	,s	;, D.3384
	ldb	_velocity_scale	;, velocity_scale
	stb	4,s	;, velocity_scale.65
	ldb	,s	;, D.3384
	lda	4,s	;mulqihi3	; velocity_scale.65
	mul
	tfr	d,x	;, tmp40
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp40,
	stb	1,s	;,
	tfr	x,d	; tmp40,
	blt	L13	;
L10:
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asl	4,s	; velocity_scale.65
	ldb	1,s	;,
	addb	4,s	;, velocity_scale.65
	stb	_dot_y_vel	;, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	leas	5,s	;,,
	rts
L12:
	ldb	2,s	;,
	addb	#63	;,
	stb	2,s	;,
	lbra	L9	;
L13:
	ldb	1,s	;,
	addb	#63	;,
	stb	1,s	;,
	bra	L10	;
	.globl	_main
_main:
	leas	-19,s	;,,
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
	ldb	#1	;,
	stb	_Vec_Music_Flag	;, Vec_Music_Flag
	ldx	#_Vec_Music_9	;,
	stx	_current_song	;, current_song
	ldx	#_player1_score_str	;,
	jsr	___Clear_Score
	ldx	#_player2_score_str	;,
	jsr	___Clear_Score
	ldb	#-128	;,
	stb	_player1_score_str+6	;, player1_score_str
	stb	_player2_score_str+6	;, player2_score_str
	ldb	#-18	;,
	stb	_player1_x	;, player1_x
	ldb	#100	;,
	stb	_player1_y	;, player1_y
	ldb	#-18	;,
	stb	_player2_x	;, player2_x
	ldb	#-100	;,
	stb	_player2_y	;, player2_y
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	neg	_velocity_scale	; velocity_scale
	jsr	__Random
	stb	,s	;, D.3415
	ldb	_velocity_scale	;, velocity_scale
	stb	13,s	;, velocity_scale.89
	ldb	,s	;, D.3415
	lda	13,s	;mulqihi3	; velocity_scale.89
	mul
	tfr	d,x	;, tmp57
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp57,
	stb	6,s	;,
	tfr	x,d	; tmp57,
	lblt	L39	;
L15:
	asr	6,s	;
	asr	6,s	;
	asr	6,s	;
	asr	6,s	;
	asr	6,s	;
	asr	6,s	;
	asl	13,s	; velocity_scale.89
	ldb	6,s	;,
	addb	13,s	;, velocity_scale.89
	stb	_dot_x_vel	;, dot_x_vel
	jsr	__Random
	stb	,s	;, D.3416
	ldb	_velocity_scale	;, velocity_scale
	stb	14,s	;, velocity_scale.90
	ldb	,s	;, D.3416
	lda	14,s	;mulqihi3	; velocity_scale.90
	mul
	tfr	d,x	;, tmp63
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp63,
	stb	5,s	;,
	tfr	x,d	; tmp63,
	lblt	L40	;
L16:
	asr	5,s	;
	asr	5,s	;
	asr	5,s	;
	asr	5,s	;
	asr	5,s	;
	asr	5,s	;
	asl	14,s	; velocity_scale.90
	ldb	5,s	;,
	addb	14,s	;, velocity_scale.90
	stb	_dot_y_vel	;, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	lbra	L36	;
L17:
	tst	_dot_y_vel	; dot_y_vel
	lble	L28	;
	ldb	#18	;,
	stb	,-s	;,
	clrb	;
	jsr	__Moveto_d
	ldb	#18	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	#-9	;,
	stb	,-s	;,
	jsr	__Draw_Line_d
	ldb	#9	;,
	stb	,-s	;,
	jsr	__Moveto_d
	ldb	#-9	;,
	stb	,-s	;,
	ldb	#9	;,
	jsr	__Draw_Line_d
	leas	5,s	;,,
L29:
	inc	_dot_ticks	; dot_ticks
	ldb	_dot_ticks	; dot_ticks.37, dot_ticks
	cmpb	#9	;cmpqi:	; dot_ticks.37,
	ble	L27	;
	tst	_dot_brightness	; dot_brightness
	lbeq	L30	;
	clr	_dot_brightness	; dot_brightness
L31:
	clr	_dot_ticks	; dot_ticks
L27:
	jsr	___Reset0Ref
	ldb	#127	;,
	jsr	__Intensity_a
	ldb	#126	;,
	stb	,-s	;,
	addb	#6	;,
	jsr	__Moveto_d
	ldx	#_edge	;,
	jsr	___Draw_VLc
	ldb	#127	;,
	stb	,-s	;,
	ldb	#124	;,
	jsr	__Moveto_d
	ldb	#127	;,
	stb	,-s	;,
	ldb	#124	;,
	jsr	__Moveto_d
	ldx	#_edge	;,
	jsr	___Draw_VLc
	ldb	#127	;,
	stb	,-s	;,
	addb	#5	;,
	jsr	__Moveto_d
	ldb	_Vec_Btn_State	;, Vec_Btn_State
	stb	11,s	;, D.3308
	leas	4,s	;,,
	bitb	#1	;,
	beq	L32	;
	ldb	_player1_x	; player1_x.10, player1_x
	cmpb	#-119	;cmpqi:	; player1_x.10,
	blt	L32	;
	addb	#-3	; player1_x.10,
	stb	_player1_x	; player1_x.10, player1_x
L32:
	ldb	#2	; tmp101,
	andb	7,s	; tmp101, D.3308
	beq	L33	;
	ldb	_player1_x	; player1_x.85, player1_x
	cmpb	#83	;cmpqi:	; player1_x.85,
	bgt	L33	;
	addb	#3	; player1_x.85,
	stb	_player1_x	; player1_x.85, player1_x
L33:
	ldb	#4	; tmp102,
	andb	7,s	; tmp102, D.3308
	beq	L34	;
	ldb	_player2_x	; player2_x.13, player2_x
	cmpb	#-119	;cmpqi:	; player2_x.13,
	blt	L34	;
	addb	#-3	; player2_x.13,
	stb	_player2_x	; player2_x.13, player2_x
L34:
	ldb	#8	;,
	andb	7,s	;, D.3308
	beq	L35	;
	ldb	_player2_x	; player2_x.86, player2_x
	cmpb	#83	;cmpqi:	; player2_x.86,
	bgt	L35	;
	addb	#3	; player2_x.86,
	stb	_player2_x	; player2_x.86, player2_x
L35:
	ldb	_player1_y	;, player1_y
	stb	,-s	;,
	ldb	_player1_x	;, player1_x
	jsr	__Moveto_d
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
	ldb	#-8	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	clr	,-s	;
	ldb	#-36	;,
	jsr	__Draw_Line_d
	ldb	#8	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	_player1_x	;, player1_x
	negb	;
	stb	5,s	;,
	ldb	_player1_y	;, player1_y
	negb	;
	pshs	b	;
	ldb	6,s	;,
	jsr	__Moveto_d
	ldb	_player2_y	;, player2_y
	stb	,-s	;,
	ldb	_player2_x	;, player2_x
	jsr	__Moveto_d
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
	leas	8,s	;,,
	ldb	#-8	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	clr	,-s	;
	ldb	#-36	;,
	jsr	__Draw_Line_d
	ldb	#8	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	leas	3,s	;,,
L36:
	jsr	___DP_to_C8
	ldx	_current_song	;, current_song
	jsr	__Init_Music_chk
	jsr	___Wait_Recal
	jsr	__Do_Sound
	jsr	___Read_Btns
	ldb	#127	;,
	jsr	__Intensity_a
	ldb	#127	;,
	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
	stb	,-s	;,
	ldx	#_player1_score_str	;,
	ldb	#-66	;,
	jsr	__Print_Str_d
	ldb	#-128	;,
	stb	,-s	;,
	ldx	#_player2_score_str	;,
	addb	#62	;,
	jsr	__Print_Str_d
	ldb	_dot_brightness	;, dot_brightness
	jsr	__Intensity_a
	ldb	_dot_y	;, dot_y
	stb	,-s	;,
	ldb	_dot_x	;, dot_x
	jsr	__Dot_d
	leas	3,s	;,,
	ldb	_flashes	;, flashes
	cmpb	#4	;cmpqi:	;,
	lble	L17	;
	ldb	#127	;,
	stb	_dot_brightness	;, dot_brightness
	ldb	_dot_x_vel	;, dot_x_vel
	addb	_dot_x	;, dot_x
	stb	12,s	;, dot_x.22
	stb	_dot_x	;, dot_x
	ldb	_dot_y_vel	;, dot_y_vel
	stb	11,s	;, dot_y_vel.24
	addb	_dot_y	;, dot_y
	stb	10,s	;, dot_y.25
	stb	_dot_y	;, dot_y
	cmpb	#122	;cmpqi:	;,
	lbgt	L41	;
	cmpb	#-122	;cmpqi:	;,
	lblt	L42	;
	tst	11,s	; dot_y_vel.24
	lble	L25	;
	ldb	_player1_x	; player1_x.26, player1_x
	cmpb	12,s	;cmpqi:(R)	; player1_x.26, dot_x.22
	bgt	L21	;
	addb	#36	; player1_x.26,
	cmpb	12,s	;cmpqi:(R)	; player1_x.26, dot_x.22
	blt	L21	;
	ldb	_player1_y	;, player1_y
	stb	9,s	;, player1_y.27
	addb	#-10	; tmp94,
	cmpb	10,s	;cmpqi:(R)	; tmp94, dot_y.25
	bgt	L21	;
	ldb	10,s	;, dot_y.25
	cmpb	9,s	;cmpqi:	;, player1_y.27
	bgt	L21	;
L26:
	ldb	11,s	; dot_y_vel.30, dot_y_vel.24
	negb	; dot_y_vel.30
	stb	_dot_y_vel	; dot_y_vel.30, dot_y_vel
	aslb	; dot_y_vel.30
	addb	10,s	; dot_y_vel.30, dot_y.25
	stb	_dot_y	; dot_y_vel.30, dot_y
L21:
	ldb	_dot_x	; tmp99, dot_x
	addb	#120	; tmp99,
	cmpb	#-16	;cmpqi:	; tmp99,
	lbls	L27	;
	neg	_dot_x_vel	; dot_x_vel
	lbra	L27	;
L28:
	ldb	#-18	;,
	stb	,-s	;,
	clrb	;
	jsr	__Moveto_d
	ldb	#-18	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	#9	;,
	stb	,-s	;,
	ldb	#-9	;,
	jsr	__Draw_Line_d
	ldb	#-9	;,
	stb	,-s	;,
	ldb	#9	;,
	jsr	__Moveto_d
	ldb	#9	;,
	stb	,-s	;,
	jsr	__Draw_Line_d
	leas	5,s	;,,
	lbra	L29	;
L30:
	ldb	#127	;,
	stb	_dot_brightness	;, dot_brightness
	inc	_flashes	; flashes
	lbra	L31	;
L41:
	ldx	#_player2_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	neg	_velocity_scale	; velocity_scale
	jsr	__Random
	stb	,s	;, D.3453
	ldb	_velocity_scale	;, velocity_scale
	stb	15,s	;, velocity_scale.94
	ldb	,s	;, D.3453
	lda	15,s	;mulqihi3	; velocity_scale.94
	mul
	tfr	d,x	;, tmp69
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp69,
	stb	4,s	;,
	tfr	x,d	; tmp69,
	lblt	L43	;
L19:
	asr	4,s	;
	asr	4,s	;
	asr	4,s	;
	asr	4,s	;
	asr	4,s	;
	asr	4,s	;
	asl	15,s	; velocity_scale.94
	ldb	4,s	;,
	addb	15,s	;, velocity_scale.94
	stb	_dot_x_vel	;, dot_x_vel
	jsr	__Random
	stb	,s	;, D.3454
	ldb	_velocity_scale	;, velocity_scale
	stb	16,s	;, velocity_scale.95
	ldb	,s	;, D.3454
	lda	16,s	;mulqihi3	; velocity_scale.95
	mul
	tfr	d,x	;, tmp75
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp75,
	stb	3,s	;,
	tfr	x,d	; tmp75,
	lblt	L44	;
L20:
	asr	3,s	;
	asr	3,s	;
	asr	3,s	;
	asr	3,s	;
	asr	3,s	;
	asr	3,s	;
	asl	16,s	; velocity_scale.95
	ldb	3,s	;,
	addb	16,s	;, velocity_scale.95
L38:
	stb	_dot_y_vel	;, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	lbra	L21	;
L42:
	ldx	#_player1_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	neg	_velocity_scale	; velocity_scale
	jsr	__Random
	stb	,s	;, D.3466
	ldb	_velocity_scale	;, velocity_scale
	stb	17,s	;, velocity_scale.97
	ldb	,s	;, D.3466
	lda	17,s	;mulqihi3	; velocity_scale.97
	mul
	tfr	d,x	;, tmp81
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp81,
	stb	2,s	;,
	tfr	x,d	; tmp81,
	lblt	L45	;
L23:
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asr	2,s	;
	asl	17,s	; velocity_scale.97
	ldb	2,s	;,
	addb	17,s	;, velocity_scale.97
	stb	_dot_x_vel	;, dot_x_vel
	jsr	__Random
	stb	,s	;, D.3467
	ldb	_velocity_scale	;, velocity_scale
	stb	18,s	;, velocity_scale.98
	ldb	,s	;, D.3467
	lda	18,s	;mulqihi3	; velocity_scale.98
	mul
	tfr	d,x	;, tmp87
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp87,
	stb	1,s	;,
	tfr	x,d	; tmp87,
	blt	L46	;
L24:
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asr	1,s	;
	asl	18,s	; velocity_scale.98
	ldb	1,s	;,
	addb	18,s	;, velocity_scale.98
	lbra	L38	;
L25:
	tst	11,s	; dot_y_vel.24
	lbeq	L21	;
	ldb	_player2_x	; player2_x.28, player2_x
	cmpb	12,s	;cmpqi:(R)	; player2_x.28, dot_x.22
	lbgt	L21	;
	addb	#36	; player2_x.28,
	cmpb	12,s	;cmpqi:(R)	; player2_x.28, dot_x.22
	lblt	L21	;
	ldb	_player2_y	;, player2_y
	stb	8,s	;, player2_y.29
	addb	#-8	; tmp96,
	cmpb	10,s	;cmpqi:(R)	; tmp96, dot_y.25
	lbgt	L21	;
	dec	8,s	; player2_y.29
	ldb	10,s	;, dot_y.25
	cmpb	8,s	;cmpqi:	;, player2_y.29
	lbge	L21	;
	lbra	L26	;
L44:
	ldb	3,s	;,
	addb	#63	;,
	stb	3,s	;,
	lbra	L20	;
L43:
	ldb	4,s	;,
	addb	#63	;,
	stb	4,s	;,
	lbra	L19	;
L46:
	ldb	1,s	;,
	addb	#63	;,
	stb	1,s	;,
	lbra	L24	;
L45:
	ldb	2,s	;,
	addb	#63	;,
	stb	2,s	;,
	lbra	L23	;
L39:
	ldb	6,s	;,
	addb	#63	;,
	stb	6,s	;,
	lbra	L15	;
L40:
	ldb	5,s	;,
	addb	#63	;,
	stb	5,s	;,
	lbra	L16	;
