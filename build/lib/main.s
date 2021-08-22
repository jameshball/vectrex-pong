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
	.globl	_default_velocity
	.area	.data
_default_velocity:
	.byte	2
	.area	.bss
	.globl	_dot_brightness
_dot_brightness:	.blkb	1
	.globl	_brightness_fade_in
_brightness_fade_in:	.blkb	1
	.globl	_dot_ticks
_dot_ticks:	.blkb	1
	.globl	_flashes
_flashes:	.blkb	1
	.area	.text
	.globl	_reset_round
_reset_round:
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	ldb	_default_velocity	; default_velocity.4, default_velocity
	negb	; default_velocity.4
	stb	_default_velocity	; default_velocity.4, default_velocity
	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	rts
	.globl	_setup
_setup:
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
	ldb	_default_velocity	; default_velocity.4, default_velocity
	negb	; default_velocity.4
	stb	_default_velocity	; default_velocity.4, default_velocity
	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	rts
	.globl	_main
_main:
	leas	-10,s	;,,
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
	ldb	_default_velocity	; default_velocity.4, default_velocity
	negb	; default_velocity.4
	stb	_default_velocity	; default_velocity.4, default_velocity
	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	lbra	L20	;
L6:
	tst	_dot_y_vel	; dot_y_vel
	lble	L12	;
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
L13:
	inc	_dot_ticks	; dot_ticks
	ldb	_dot_ticks	; dot_ticks.35, dot_ticks
	cmpb	#9	;cmpqi:	; dot_ticks.35,
	ble	L8	;
	tst	_dot_brightness	; dot_brightness
	lbeq	L14	;
	clr	_dot_brightness	; dot_brightness
L15:
	clr	_dot_ticks	; dot_ticks
L8:
	jsr	___Reset0Ref
	ldb	#127	;,
	jsr	__Intensity_a
	ldb	#126	;,
	stb	,-s	;,
	addb	#6	;,
	jsr	__Moveto_d
	ldb	#-127	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	#-127	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	clr	,-s	;
	ldb	#124	;,
	jsr	__Moveto_d
	clr	,-s	;
	ldb	#124	;,
	jsr	__Moveto_d
	ldb	#127	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	#127	;,
	stb	,-s	;,
	clrb	;
	jsr	__Draw_Line_d
	ldb	#-126	;,
	stb	,-s	;,
	addb	#2	;,
	jsr	__Moveto_d
	ldb	_Vec_Btn_State	;, Vec_Btn_State
	stb	9,s	;, D.3305
	leas	8,s	;,,
	bitb	#1	;,
	beq	L16	;
	ldb	_player1_x	; player1_x.8, player1_x
	cmpb	#-119	;cmpqi:	; player1_x.8,
	blt	L16	;
	addb	#-3	; player1_x.8,
	stb	_player1_x	; player1_x.8, player1_x
L16:
	ldb	#2	; tmp64,
	andb	1,s	; tmp64, D.3305
	beq	L17	;
	ldb	_player1_x	; player1_x.77, player1_x
	cmpb	#83	;cmpqi:	; player1_x.77,
	bgt	L17	;
	addb	#3	; player1_x.77,
	stb	_player1_x	; player1_x.77, player1_x
L17:
	ldb	#4	; tmp65,
	andb	1,s	; tmp65, D.3305
	beq	L18	;
	ldb	_player2_x	; player2_x.11, player2_x
	cmpb	#-119	;cmpqi:	; player2_x.11,
	blt	L18	;
	addb	#-3	; player2_x.11,
	stb	_player2_x	; player2_x.11, player2_x
L18:
	ldb	#8	;,
	andb	1,s	;, D.3305
	beq	L19	;
	ldb	_player2_x	; player2_x.78, player2_x
	cmpb	#83	;cmpqi:	; player2_x.78,
	bgt	L19	;
	addb	#3	; player2_x.78,
	stb	_player2_x	; player2_x.78, player2_x
L19:
	ldb	_player1_y	;, player1_y
	stb	,-s	;,
	ldb	_player1_x	;, player1_x
	jsr	__Moveto_d
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
	ldb	#-36	; tmp68,
	subb	_player1_x	; tmp68, player1_x
	stb	2,s	; tmp68,
	ldb	_player1_y	;, player1_y
	negb	;
	pshs	b	;
	ldb	3,s	;,
	jsr	__Moveto_d
	ldb	_player2_y	;, player2_y
	stb	,-s	;,
	ldb	_player2_x	;, player2_x
	jsr	__Moveto_d
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
	leas	5,s	;,,
L20:
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
	lble	L6	;
	ldb	#127	;,
	stb	_dot_brightness	;, dot_brightness
	ldb	_dot_x_vel	;, dot_x_vel
	stb	9,s	;, dot_x_vel.19
	addb	_dot_x	;, dot_x
	stb	8,s	;, dot_x.20
	stb	_dot_x	;, dot_x
	ldb	_dot_y_vel	;, dot_y_vel
	stb	7,s	;, dot_y_vel.22
	addb	_dot_y	;, dot_y
	stb	6,s	;, dot_y.23
	stb	_dot_y	;, dot_y
	ldx	#_player2_score_str	;,
	cmpb	#122	;cmpqi:	;,
	lbgt	L23	;
	cmpb	#-122	;cmpqi:	;,
	lblt	L25	;
	ldb	_player1_x	;, player1_x
	stb	5,s	;, player1_x.24
	subb	9,s	; tmp50, dot_x_vel.19
	cmpb	8,s	;cmpqi:(R)	; tmp50, dot_x.20
	lbgt	L10	;
	ldb	9,s	;, dot_x_vel.19
	addb	5,s	;, player1_x.24
	addb	#36	;,
	stb	5,s	;, player1_x.24
	ldb	8,s	;, dot_x.20
	cmpb	5,s	;cmpqi:	;, player1_x.24
	lbgt	L10	;
	ldb	_player1_y	;, player1_y
	stb	4,s	;, player1_y.25
	subb	7,s	; tmp53, dot_y_vel.22
	cmpb	6,s	;cmpqi:(R)	; tmp53, dot_y.23
	lbgt	L10	;
	ldb	4,s	;, player1_y.25
	addb	7,s	;, dot_y_vel.22
	stb	4,s	;, player1_y.25
	ldb	6,s	;, dot_y.23
	cmpb	4,s	;cmpqi:	;, player1_y.25
	lbgt	L10	;
L22:
	ldb	7,s	; dot_y_vel.81, dot_y_vel.22
	negb	; dot_y_vel.81
	stb	_dot_y_vel	; dot_y_vel.81, dot_y_vel
	aslb	; dot_y_vel.81
	addb	6,s	; dot_y_vel.81, dot_y.23
	stb	_dot_y	; dot_y_vel.81, dot_y
L11:
	ldb	8,s	;, dot_x.20
	addb	#120	;,
	cmpb	#-16	;cmpqi:	;,
	lbls	L8	;
	ldb	9,s	;, dot_x_vel.19
	negb	;
	stb	_dot_x_vel	;, dot_x_vel
	lbra	L8	;
L12:
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
	lbra	L13	;
L14:
	ldb	#127	;,
	stb	_dot_brightness	;, dot_brightness
	inc	_flashes	; flashes
	lbra	L15	;
L25:
	ldx	#_player1_score_str	;,
L23:
	ldb	#1	;,
	jsr	__Add_Score_a
	clr	_dot_x	; dot_x
	clr	_dot_y	; dot_y
	ldb	_default_velocity	; default_velocity.4, default_velocity
	negb	; default_velocity.4
	stb	_default_velocity	; default_velocity.4, default_velocity
	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
	clr	_dot_ticks	; dot_ticks
	clr	_flashes	; flashes
	clr	_dot_brightness	; dot_brightness
	ldb	#1	;,
	stb	_brightness_fade_in	;, brightness_fade_in
	lbra	L8	;
L10:
	ldb	_player2_x	;, player2_x
	stb	3,s	;, player2_x.28
	subb	9,s	; tmp56, dot_x_vel.19
	cmpb	8,s	;cmpqi:(R)	; tmp56, dot_x.20
	lbgt	L11	;
	ldb	9,s	;, dot_x_vel.19
	addb	3,s	;, player2_x.28
	addb	#36	;,
	stb	3,s	;, player2_x.28
	ldb	8,s	;, dot_x.20
	cmpb	3,s	;cmpqi:	;, player2_x.28
	lbgt	L11	;
	ldb	_player2_y	;, player2_y
	stb	2,s	;, player2_y.29
	addb	7,s	; tmp59, dot_y_vel.22
	cmpb	6,s	;cmpqi:(R)	; tmp59, dot_y.23
	lbgt	L11	;
	ldb	2,s	; tmp60, player2_y.29
	subb	7,s	; tmp60, dot_y_vel.22
	cmpb	6,s	;cmpqi:(R)	; tmp60, dot_y.23
	lblt	L11	;
	lbra	L22	;
