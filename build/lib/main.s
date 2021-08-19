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

	.globl	_player1_x
	.area	.data
_player1_x:
	.byte	-18
	.globl	_player1_y
_player1_y:
	.byte	100
	.globl	_player2_x
_player2_x:
	.byte	-18
	.globl	_player2_y
_player2_y:
	.byte	-100
	.area	.bss
	.globl	_player1_score_str
_player1_score_str:	.blkb	7
	.globl	_player2_score_str
_player2_score_str:	.blkb	7
	.globl	_dot_x
	.area	.data
_dot_x:
	.byte	0
	.globl	_dot_y
_dot_y:
	.byte	0
	.globl	_dot_x_vel
_dot_x_vel:
	.byte	2
	.globl	_dot_y_vel
_dot_y_vel:
	.byte	2
	.area	.text
	.globl	_setup
_setup:
;----- asm -----
; 35 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[34]  disable_controller_1_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
;----- asm -----
; 37 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[35]  disable_controller_1_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
;----- asm -----
; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[36]  disable_controller_2_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
;----- asm -----
; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[37]  disable_controller_2_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
;----- asm -----
; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[38]  Clear_Score(player1_score_str);
;--- end asm ---
	ldx	#_player1_score_str	;,
	jsr	___Clear_Score
;----- asm -----
; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[39]  Clear_Score(player2_score_str);
;--- end asm ---
	ldx	#_player2_score_str	;,
	jsr	___Clear_Score
;----- asm -----
; 47 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[40]  player1_score_str[6] = '€';
;--- end asm ---
	ldb	#-128	;,
	stb	_player1_score_str+6	;, player1_score_str
;----- asm -----
; 49 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[41]  player2_score_str[6] = '€';
;--- end asm ---
	stb	_player2_score_str+6	;, player2_score_str
	rts
	.globl	_reset_round
_reset_round:
;----- asm -----
; 65 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[52]  dot_x = 0;
;--- end asm ---
	clr	_dot_x	; dot_x
;----- asm -----
; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[53]  dot_y = 0;
;--- end asm ---
	clr	_dot_y	; dot_y
;----- asm -----
; 69 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[54]  dot_x_vel = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_dot_x_vel	;, dot_x_vel
;----- asm -----
; 71 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[55]  dot_y_vel = 2;
;--- end asm ---
	stb	_dot_y_vel	;, dot_y_vel
	rts
	.globl	_main
_main:
	leas	-7,s	;,,
;----- asm -----
; 81 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[64]  setup();
;--- end asm ---
	jsr	_setup
;----- asm -----
; 84 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[66]  while (1) {
;--- end asm ---
	lbra	L18	;
L10:
	ldb	3,s	;, dot_y.14
	cmpb	#-120	;cmpqi:	;,
	lblt	L21	;
	ldb	_player1_x	; player1_x.59, player1_x
	cmpb	1,s	;cmpqi:(R)	; player1_x.59, dot_x.12
	lbgt	L13	;
	addb	#36	; player1_x.59,
	cmpb	1,s	;cmpqi:(R)	; player1_x.59, dot_x.12
	lblt	L13	;
	ldb	_player1_y	;, player1_y
	stb	5,s	;, player1_y.60
	subb	2,s	; tmp52, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp52, dot_y.14
	lbgt	L13	;
	ldb	5,s	;, player1_y.60
	addb	2,s	;, dot_y_vel.13
	stb	5,s	;, player1_y.60
	ldb	3,s	;, dot_y.14
	cmpb	5,s	;cmpqi:	;, player1_y.60
	lbgt	L13	;
;----- asm -----
; 156 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[112]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	ldb	2,s	; dot_y_vel.15, dot_y_vel.13
	negb	; dot_y_vel.15
	stb	_dot_y_vel	; dot_y_vel.15, dot_y_vel
;----- asm -----
; 158 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[113]      dot_y = dot_y + 2 * dot_y_vel;
;--- end asm ---
	aslb	; dot_y_vel.15
	addb	3,s	; dot_y_vel.15, dot_y.14
	stb	_dot_y	; dot_y_vel.15, dot_y
L11:
;----- asm -----
; 168 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[120]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
;--- end asm ---
	ldb	_dot_x	; tmp59, dot_x
	addb	#100	; tmp59,
	cmpb	#-56	;cmpqi:	; tmp59,
	lbhi	L22	;
L18:
;----- asm -----
; 86 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[67]    loop_setup();
; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[45]  Wait_Recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 56 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[46]  check_buttons(); /* update status of buttons * /
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 58 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[47]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
;--- end asm ---
	ldb	#127	;,
	jsr	__Intensity_a
;----- asm -----
; 60 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[48]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
;--- end asm ---
	ldb	#127	;,
	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
;----- asm -----
; 90 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[70]    Print_Str_d(127, -128, player1_score_str);
;--- end asm ---
	stb	,-s	;,
	ldx	#_player1_score_str	;,
	incb	;
	jsr	__Print_Str_d
;----- asm -----
; 92 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[71]    Print_Str_d(-128, -128, player2_score_str);
;--- end asm ---
	ldb	#-128	;,
	stb	,-s	;,
	ldx	#_player2_score_str	;,
	jsr	__Print_Str_d
;----- asm -----
; 96 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[74]    Dot_d(dot_y, dot_x);
;--- end asm ---
	ldb	_dot_y	;, dot_y
	stb	,-s	;,
	ldb	_dot_x	;, dot_x
	jsr	__Dot_d
;----- asm -----
; 98 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[75]    Moveto_d(-dot_y, -dot_x);
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
; 102 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[78]    if (button_1_1_held() && player1_x > -BOUND_X) {
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
; 104 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[79]      player1_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	; player1_x.3,
	stb	_player1_x	; player1_x.3, player1_x
L6:
;----- asm -----
; 107 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[81]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#2	; tmp45,
	andb	4,s	; tmp45, D.3132
	beq	L7	;
	ldb	_player1_x	; player1_x.51, player1_x
	cmpb	#63	;cmpqi:	; player1_x.51,
	bgt	L7	;
;----- asm -----
; 109 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[82]      player1_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	; player1_x.51,
	stb	_player1_x	; player1_x.51, player1_x
L7:
;----- asm -----
; 112 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[84]    if (button_1_3_held() && player2_x > - BOUND_X) {
;--- end asm ---
	ldb	#4	; tmp46,
	andb	4,s	; tmp46, D.3132
	beq	L8	;
	ldb	_player2_x	; player2_x.6, player2_x
	cmpb	#-99	;cmpqi:	; player2_x.6,
	blt	L8	;
;----- asm -----
; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[85]      player2_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	; player2_x.6,
	stb	_player2_x	; player2_x.6, player2_x
L8:
;----- asm -----
; 117 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[87]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#8	;,
	andb	4,s	;, D.3132
	beq	L9	;
	ldb	_player2_x	; player2_x.52, player2_x
	cmpb	#63	;cmpqi:	; player2_x.52,
	bgt	L9	;
;----- asm -----
; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[88]      player2_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	; player2_x.52,
	stb	_player2_x	; player2_x.52, player2_x
L9:
;----- asm -----
; 124 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[92]    Moveto_d(player1_y, player1_x);
;--- end asm ---
	ldb	_player1_y	;, player1_y
	stb	,-s	;,
	ldb	_player1_x	;, player1_x
	jsr	__Moveto_d
;----- asm -----
; 126 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[93]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 128 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[94]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
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
; 132 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[97]    Moveto_d(player2_y, player2_x);
;--- end asm ---
	ldb	_player2_y	;, player2_y
	stb	,-s	;,
	ldb	_player2_x	;, player2_x
	jsr	__Moveto_d
;----- asm -----
; 134 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[98]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 138 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[101]    dot_x = dot_x + dot_x_vel;
;--- end asm ---
	ldb	_dot_x_vel	;, dot_x_vel
	addb	_dot_x	;, dot_x
	stb	6,s	;, dot_x.12
	stb	_dot_x	;, dot_x
;----- asm -----
; 140 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[102]    dot_y = dot_y + dot_y_vel;
;--- end asm ---
	ldb	_dot_y_vel	;, dot_y_vel
	stb	7,s	;, dot_y_vel.13
	addb	_dot_y	;, dot_y
	stb	8,s	;, dot_y.14
	stb	_dot_y	;, dot_y
;----- asm -----
; 144 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[105]    if (dot_y > BOUND_Y) {
;--- end asm ---
	leas	5,s	;,,
	cmpb	#120	;cmpqi:	;,
	lble	L10	;
;----- asm -----
; 146 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[106]      Add_Score_a(1, player2_score_str);
;--- end asm ---
	ldx	#_player2_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
;----- asm -----
; 148 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[107]      reset_round();
;--- end asm ---
L19:
;----- asm -----
; 65 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[52]  dot_x = 0;
;--- end asm ---
	clr	_dot_x	; dot_x
;----- asm -----
; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[53]  dot_y = 0;
;--- end asm ---
	clr	_dot_y	; dot_y
;----- asm -----
; 69 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[54]  dot_x_vel = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_dot_x_vel	;, dot_x_vel
;----- asm -----
; 71 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[55]  dot_y_vel = 2;
;--- end asm ---
	stb	_dot_y_vel	;, dot_y_vel
	lbra	L11	;
L13:
	ldb	_player2_x	; player2_x.61, player2_x
	cmpb	1,s	;cmpqi:(R)	; player2_x.61, dot_x.12
	lbgt	L11	;
	addb	#36	; player2_x.61,
	cmpb	1,s	;cmpqi:(R)	; player2_x.61, dot_x.12
	lblt	L11	;
	ldb	_player2_y	;, player2_y
	stb	6,s	;, player2_y.62
	addb	2,s	; tmp56, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp56, dot_y.14
	lbgt	L11	;
	ldb	6,s	; tmp57, player2_y.62
	subb	2,s	; tmp57, dot_y_vel.13
	cmpb	3,s	;cmpqi:(R)	; tmp57, dot_y.14
	lblt	L11	;
;----- asm -----
; 161 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[115]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	ldb	2,s	; dot_y_vel.63, dot_y_vel.13
	negb	; dot_y_vel.63
	stb	_dot_y_vel	; dot_y_vel.63, dot_y_vel
;----- asm -----
; 163 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[116]      dot_y = dot_y + 2 * dot_y_vel;
;--- end asm ---
	aslb	; dot_y_vel.63
	addb	3,s	; dot_y_vel.63, dot_y.14
	stb	_dot_y	; dot_y_vel.63, dot_y
	lbra	L11	;
L21:
;----- asm -----
; 151 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[109]      Add_Score_a(1, player1_score_str);
;--- end asm ---
	ldx	#_player1_score_str	;,
	ldb	#1	;,
	jsr	__Add_Score_a
;----- asm -----
; 153 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[110]      reset_round();
;--- end asm ---
	lbra	L19	;
L22:
;----- asm -----
; 170 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[121]      dot_x_vel = -dot_x_vel;
;--- end asm ---
	neg	_dot_x_vel	; dot_x_vel
	lbra	L18	;
