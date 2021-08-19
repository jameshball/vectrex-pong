;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	main.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -fno-gcse -fverbose-asm -W -Wall -Wextra -Wconversion
; -Werror -fomit-frame-pointer -fno-toplevel-reorder -mint8
; -msoft-reg-count=0 -std=gnu99 -fno-time-report
; -IC:\Vide2.5.1.w64\Vide.w64\C\PeerC\vectrex\include -O3
; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
; -IC:\Vide2.5.1.w64\Vide.w64\vectrex-pong\include
; C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c
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
	.area	.text
	.globl	_reset_round
_reset_round:
;----- asm -----
; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[34]  dot_x = 0;
;--- end asm ---
	clr	_dot_x	; dot_x
;----- asm -----
; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[35]  dot_y = 0;
;--- end asm ---
	clr	_dot_y	; dot_y
;----- asm -----
; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[36]  dot_x_vel = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_dot_x_vel	;, dot_x_vel
;----- asm -----
; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[37]  dot_y_vel = 2;
;--- end asm ---
	stb	_dot_y_vel	;, dot_y_vel
;----- asm -----
; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[39]  player1_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player1_x	;, player1_x
;----- asm -----
; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[40]  player1_y = PADDLE_Y;
;--- end asm ---
	ldb	#100	;,
	stb	_player1_y	;, player1_y
;----- asm -----
; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[41]  player2_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player2_x	;, player2_x
;----- asm -----
; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[42]  player2_y = -PADDLE_Y;
;--- end asm ---
	ldb	#-100	;,
	stb	_player2_y	;, player2_y
	rts
	.globl	_setup
_setup:
;----- asm -----
; 62 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[49]  disable_controller_1_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
;----- asm -----
; 64 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[50]  disable_controller_1_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
;----- asm -----
; 66 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[51]  disable_controller_2_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
;----- asm -----
; 68 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[52]  disable_controller_2_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
;----- asm -----
; 70 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[53]  Clear_Score(player1_score_str);
;--- end asm ---
	ldx	#_player1_score_str	;,
	jsr	___Clear_Score
;----- asm -----
; 72 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[54]  Clear_Score(player2_score_str);
;--- end asm ---
	ldx	#_player2_score_str	;,
	jsr	___Clear_Score
;----- asm -----
; 74 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[55]  player1_score_str[6] = '€';
;--- end asm ---
	ldb	#-128	;,
	stb	_player1_score_str+6	;, player1_score_str
;----- asm -----
; 76 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[56]  player2_score_str[6] = '€';
;--- end asm ---
	stb	_player2_score_str+6	;, player2_score_str
;----- asm -----
; 78 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[57]  reset_round();
; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[34]  dot_x = 0;
;--- end asm ---
	clr	_dot_x	; dot_x
;----- asm -----
; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[35]  dot_y = 0;
;--- end asm ---
	clr	_dot_y	; dot_y
;----- asm -----
; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[36]  dot_x_vel = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_dot_x_vel	;, dot_x_vel
;----- asm -----
; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[37]  dot_y_vel = 2;
;--- end asm ---
	stb	_dot_y_vel	;, dot_y_vel
;----- asm -----
; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[39]  player1_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player1_x	;, player1_x
;----- asm -----
; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[40]  player1_y = PADDLE_Y;
;--- end asm ---
	ldb	#100	;,
	stb	_player1_y	;, player1_y
;----- asm -----
; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[41]  player2_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player2_x	;, player2_x
;----- asm -----
; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[42]  player2_y = -PADDLE_Y;
;--- end asm ---
	ldb	#-100	;,
	stb	_player2_y	;, player2_y
	rts
	.globl	_main
_main:
	leas	-7,s	;,,
;----- asm -----
; 88 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[66]  setup();
;--- end asm ---
	jsr	_setup
;----- asm -----
; 91 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[68]  while (1) {
;--- end asm ---
	lbra	L18	;
L10:
	ldb	3,s	;, dot_y.14
	cmpb	#-120	;cmpqi:	;,
	lblt	L21	;
	ldb	_player1_x	; player1_x.60, player1_x
	cmpb	1,s	;cmpqi:(R)	; player1_x.60, dot_x.12
	lbgt	L13	;
	addb	#36	; player1_x.60,
	cmpb	1,s	;cmpqi:(R)	; player1_x.60, dot_x.12
	lblt	L13	;
	ldb	_player1_y	;, player1_y
	stb	5,s	;, player1_y.61
	subb	2,s	; tmp52, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp52, dot_y.14
	lbgt	L13	;
	ldb	5,s	;, player1_y.61
	addb	2,s	;, dot_y_vel.13
	stb	5,s	;, player1_y.61
	ldb	3,s	;, dot_y.14
	cmpb	5,s	;cmpqi:	;, player1_y.61
	lbgt	L13	;
;----- asm -----
; 163 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[114]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	ldb	2,s	; dot_y_vel.15, dot_y_vel.13
	negb	; dot_y_vel.15
	stb	_dot_y_vel	; dot_y_vel.15, dot_y_vel
;----- asm -----
; 165 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[115]      dot_y = dot_y + 2 * dot_y_vel;
;--- end asm ---
	aslb	; dot_y_vel.15
	addb	3,s	; dot_y_vel.15, dot_y.14
	stb	_dot_y	; dot_y_vel.15, dot_y
L11:
;----- asm -----
; 175 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[122]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
;--- end asm ---
	ldb	_dot_x	; tmp59, dot_x
	addb	#100	; tmp59,
	cmpb	#-56	;cmpqi:	; tmp59,
	lbhi	L22	;
L18:
;----- asm -----
; 93 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[69]    loop_setup();
; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[27]  Wait_Recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 30 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[28]  check_buttons(); /* update status of buttons * /
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 32 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[29]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
;--- end asm ---
	ldb	#127	;,
	jsr	__Intensity_a
;----- asm -----
; 34 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[30]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
;--- end asm ---
	ldb	#127	;,
	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
;----- asm -----
; 97 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[72]    Print_Str_d(127, -128, player1_score_str);
;--- end asm ---
	stb	,-s	;,
	ldx	#_player1_score_str	;,
	incb	;
	jsr	__Print_Str_d
;----- asm -----
; 99 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[73]    Print_Str_d(-128, -128, player2_score_str);
;--- end asm ---
	ldb	#-128	;,
	stb	,-s	;,
	ldx	#_player2_score_str	;,
	jsr	__Print_Str_d
;----- asm -----
; 103 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[76]    Dot_d(dot_y, dot_x);
;--- end asm ---
	ldb	_dot_y	;, dot_y
	stb	,-s	;,
	ldb	_dot_x	;, dot_x
	jsr	__Dot_d
;----- asm -----
; 105 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[77]    Moveto_d(-dot_y, -dot_x);
;--- end asm ---
	ldb	_dot_x	;, dot_x
	negb	;
	stb	3,s	;,
	ldb	_dot_y	;, dot_y
	negb	;
	pshs	b	;
	ldb	4,s	;,
	jsr	__Moveto_d
;----- asm -----
; 109 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[80]    if (button_1_1_held() && player1_x > -BOUND_X) {
;--- end asm ---
	ldb	_Vec_Btn_State	;, Vec_Btn_State
	stb	8,s	;, D.3132
	leas	4,s	;,,
	bitb	#1	;,
	beq	L6	;
	ldb	_player1_x	; player1_x.3, player1_x
	cmpb	#-99	;cmpqi:	; player1_x.3,
	blt	L6	;
;----- asm -----
; 111 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[81]      player1_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	; player1_x.3,
	stb	_player1_x	; player1_x.3, player1_x
L6:
;----- asm -----
; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[83]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#2	; tmp45,
	andb	4,s	; tmp45, D.3132
	beq	L7	;
	ldb	_player1_x	; player1_x.52, player1_x
	cmpb	#63	;cmpqi:	; player1_x.52,
	bgt	L7	;
;----- asm -----
; 116 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[84]      player1_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	; player1_x.52,
	stb	_player1_x	; player1_x.52, player1_x
L7:
;----- asm -----
; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[86]    if (button_1_3_held() && player2_x > - BOUND_X) {
;--- end asm ---
	ldb	#4	; tmp46,
	andb	4,s	; tmp46, D.3132
	beq	L8	;
	ldb	_player2_x	; player2_x.6, player2_x
	cmpb	#-99	;cmpqi:	; player2_x.6,
	blt	L8	;
;----- asm -----
; 121 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[87]      player2_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	; player2_x.6,
	stb	_player2_x	; player2_x.6, player2_x
L8:
;----- asm -----
; 124 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[89]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#8	;,
	andb	4,s	;, D.3132
	beq	L9	;
	ldb	_player2_x	; player2_x.53, player2_x
	cmpb	#63	;cmpqi:	; player2_x.53,
	bgt	L9	;
;----- asm -----
; 126 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[90]      player2_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	; player2_x.53,
	stb	_player2_x	; player2_x.53, player2_x
L9:
;----- asm -----
; 131 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[94]    Moveto_d(player1_y, player1_x);
;--- end asm ---
	ldb	_player1_y	;, player1_y
	stb	,-s	;,
	ldb	_player1_x	;, player1_x
	jsr	__Moveto_d
;----- asm -----
; 133 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[95]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 135 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[96]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
;--- end asm ---
	ldb	#-36	; tmp49,
	subb	_player1_x	; tmp49, player1_x
	stb	2,s	; tmp49,
	ldb	_player1_y	;, player1_y
	negb	;
	pshs	b	;
	ldb	3,s	;,
	jsr	__Moveto_d
;----- asm -----
; 139 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[99]    Moveto_d(player2_y, player2_x);
;--- end asm ---
	ldb	_player2_y	;, player2_y
	stb	,-s	;,
	ldb	_player2_x	;, player2_x
	jsr	__Moveto_d
;----- asm -----
; 141 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[100]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 145 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[103]    dot_x = dot_x + dot_x_vel;
;--- end asm ---
	ldb	_dot_x_vel	;, dot_x_vel
	addb	_dot_x	;, dot_x
	stb	6,s	;, dot_x.12
	stb	_dot_x	;, dot_x
;----- asm -----
; 147 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[104]    dot_y = dot_y + dot_y_vel;
;--- end asm ---
	ldb	_dot_y_vel	;, dot_y_vel
	stb	7,s	;, dot_y_vel.13
	addb	_dot_y	;, dot_y
	stb	8,s	;, dot_y.14
	stb	_dot_y	;, dot_y
;----- asm -----
; 151 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[107]    if (dot_y > BOUND_Y) {
;--- end asm ---
	leas	5,s	;,,
	cmpb	#120	;cmpqi:	;,
	lble	L10	;
;----- asm -----
; 153 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[108]      Add_Score_a(1, player2_score_str);
;--- end asm ---
	ldx	#_player2_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
;----- asm -----
; 155 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[109]      reset_round();
;--- end asm ---
L19:
;----- asm -----
; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[34]  dot_x = 0;
;--- end asm ---
	clr	_dot_x	; dot_x
;----- asm -----
; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[35]  dot_y = 0;
;--- end asm ---
	clr	_dot_y	; dot_y
;----- asm -----
; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[36]  dot_x_vel = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_dot_x_vel	;, dot_x_vel
;----- asm -----
; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[37]  dot_y_vel = 2;
;--- end asm ---
	stb	_dot_y_vel	;, dot_y_vel
;----- asm -----
; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[39]  player1_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player1_x	;, player1_x
;----- asm -----
; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[40]  player1_y = PADDLE_Y;
;--- end asm ---
	ldb	#100	;,
	stb	_player1_y	;, player1_y
;----- asm -----
; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[41]  player2_x = -HALF_PADDLE;
;--- end asm ---
	ldb	#-18	;,
	stb	_player2_x	;, player2_x
;----- asm -----
; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[42]  player2_y = -PADDLE_Y;
;--- end asm ---
	ldb	#-100	;,
	stb	_player2_y	;, player2_y
	lbra	L11	;
L13:
	ldb	_player2_x	; player2_x.62, player2_x
	cmpb	1,s	;cmpqi:(R)	; player2_x.62, dot_x.12
	lbgt	L11	;
	addb	#36	; player2_x.62,
	cmpb	1,s	;cmpqi:(R)	; player2_x.62, dot_x.12
	lblt	L11	;
	ldb	_player2_y	;, player2_y
	stb	6,s	;, player2_y.63
	addb	2,s	; tmp56, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp56, dot_y.14
	lbgt	L11	;
	ldb	6,s	; tmp57, player2_y.63
	subb	2,s	; tmp57, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp57, dot_y.14
	lblt	L11	;
;----- asm -----
; 168 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[117]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	ldb	2,s	; dot_y_vel.64, dot_y_vel.13
	negb	; dot_y_vel.64
	stb	_dot_y_vel	; dot_y_vel.64, dot_y_vel
;----- asm -----
; 170 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[118]      dot_y = dot_y + 2 * dot_y_vel;
;--- end asm ---
	aslb	; dot_y_vel.64
	addb	3,s	; dot_y_vel.64, dot_y.14
	stb	_dot_y	; dot_y_vel.64, dot_y
	lbra	L11	;
L21:
;----- asm -----
; 158 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[111]      Add_Score_a(1, player1_score_str);
;--- end asm ---
	ldx	#_player1_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
;----- asm -----
; 160 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[112]      reset_round();
;--- end asm ---
	lbra	L19	;
L22:
;----- asm -----
; 177 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[123]      dot_x_vel = -dot_x_vel;
;--- end asm ---
	neg	_dot_x_vel	; dot_x_vel
	lbra	L18	;
