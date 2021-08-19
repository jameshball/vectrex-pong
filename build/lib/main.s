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

	.area	.text
	.globl	_setup
_setup:
;----- asm -----
; 22 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[21]  disable_controller_1_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
;----- asm -----
; 24 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[22]  disable_controller_1_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
;----- asm -----
; 26 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[23]  disable_controller_2_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
;----- asm -----
; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[24]  disable_controller_2_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
	rts
	.globl	_main
_main:
	leas	-10,s	;,,
;----- asm -----
; 49 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[40]  int player1_x = -HALF_PADDLE;
; 51 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[41]  int player1_y = PADDLE_Y;
; 53 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[42]  int player2_x = -HALF_PADDLE;
; 55 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[43]  int player2_y = -PADDLE_Y;
; 58 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[45]  int dot_x = 13;
; 60 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[46]  int dot_y = 0;
; 62 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[47]  int dot_x_vel = 2;
; 64 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[48]  int dot_y_vel = 2;
; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[50]  setup();
; 22 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[21]  disable_controller_1_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
;----- asm -----
; 24 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[22]  disable_controller_1_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
;----- asm -----
; 26 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[23]  disable_controller_2_x();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
;----- asm -----
; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[24]  disable_controller_2_y();
;--- end asm ---
	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
;----- asm -----
; 70 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[52]  while (1) {
;--- end asm ---
	ldb	#-18	;,
	stb	1,s	;, player1_x
	stb	2,s	;, player2_x
	ldb	#13	;,
	stb	3,s	;, dot_x
	clr	4,s	; dot_y
	ldb	#2	;,
	stb	5,s	;, dot_x_vel
	stb	6,s	;, dot_y_vel
	lbra	L4	;
L14:
	addb	#36	; tmp45,
	cmpb	7,s	;cmpqi:(R)	; tmp45, new_x
	lblt	L9	;
	ldb	#100	; tmp47,
	subb	6,s	; tmp46, dot_y_vel
	cmpb	8,s	;cmpqi:(R)	; tmp46, new_y
	lbgt	L9	;
	ldb	6,s	; tmp48, dot_y_vel
	addb	#100	; tmp48,
	cmpb	8,s	;cmpqi:(R)	; tmp48, new_y
	lblt	L9	;
;----- asm -----
; 125 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[87]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	neg	6,s	; dot_y_vel
;----- asm -----
; 127 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[88]      new_y = dot_y + dot_y_vel;
;--- end asm ---
	ldb	6,s	;, dot_y_vel
	addb	4,s	;, dot_y
	stb	8,s	;, new_y
L10:
;----- asm -----
; 137 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[95]    dot_x = new_x;
; 139 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[96]    dot_y = new_y;
; 143 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[99]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
;--- end asm ---
	ldb	7,s	; tmp53, new_x
	addb	#100	; tmp53,
	cmpb	#-56	;cmpqi:	; tmp53,
	bls	L11	;
;----- asm -----
; 145 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[100]      dot_x_vel = -dot_x_vel;
;--- end asm ---
	neg	5,s	; dot_x_vel
L11:
	ldb	8,s	;, new_y
	stb	4,s	;, dot_y
	ldb	7,s	;, new_x
	stb	3,s	;, dot_x
L4:
;----- asm -----
; 72 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[53]    loop_setup();
; 33 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[28]  Wait_Recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 35 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[29]  check_buttons(); /* update status of buttons * /
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 37 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[30]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
;--- end asm ---
	ldb	#127	;,
	jsr	__Intensity_a
;----- asm -----
; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[31]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
;--- end asm ---
	ldb	#127	;,
	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
;----- asm -----
; 76 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[56]    Dot_d(dot_y, dot_x);
;--- end asm ---
	ldb	4,s	;, dot_y
	pshs	b	;
	ldb	4,s	;, dot_x
	jsr	__Dot_d
;----- asm -----
; 78 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[57]    Moveto_d(-dot_y, -dot_x);
;--- end asm ---
	ldb	4,s	;, dot_x
	negb	;
	stb	1,s	;,
	ldb	5,s	;, dot_y
	negb	;
	pshs	b	;
	ldb	2,s	;,
	jsr	__Moveto_d
;----- asm -----
; 82 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[60]    if (button_1_1_held() && player1_x > -BOUND_X) {
;--- end asm ---
	ldb	_Vec_Btn_State	;, Vec_Btn_State
	stb	11,s	;, D.3096
	leas	2,s	;,,
	bitb	#1	;,
	beq	L5	;
	ldb	1,s	;, player1_x
	cmpb	#-99	;cmpqi:	;,
	blt	L5	;
;----- asm -----
; 84 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[61]      player1_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	;,
	stb	1,s	;, player1_x
L5:
;----- asm -----
; 87 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[63]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#2	; tmp40,
	andb	9,s	; tmp40, D.3096
	beq	L6	;
	ldb	1,s	;, player1_x
	cmpb	#63	;cmpqi:	;,
	bgt	L6	;
;----- asm -----
; 89 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[64]      player1_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	;,
	stb	1,s	;, player1_x
L6:
;----- asm -----
; 92 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[66]    if (button_1_3_held() && player2_x > - BOUND_X) {
;--- end asm ---
	ldb	#4	; tmp41,
	andb	9,s	; tmp41, D.3096
	beq	L7	;
	ldb	2,s	;, player2_x
	cmpb	#-99	;cmpqi:	;,
	blt	L7	;
;----- asm -----
; 94 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[67]      player2_x -= PADDLE_SPEED;
;--- end asm ---
	addb	#-3	;,
	stb	2,s	;, player2_x
L7:
;----- asm -----
; 97 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[69]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
;--- end asm ---
	ldb	#8	;,
	andb	9,s	;, D.3096
	beq	L8	;
	ldb	2,s	;, player2_x
	cmpb	#63	;cmpqi:	;,
	bgt	L8	;
;----- asm -----
; 99 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[70]      player2_x += PADDLE_SPEED;
;--- end asm ---
	addb	#3	;,
	stb	2,s	;, player2_x
L8:
;----- asm -----
; 104 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[74]    Moveto_d(player1_y, player1_x);
;--- end asm ---
	ldb	#100	;,
	stb	,-s	;,
	ldb	2,s	;, player1_x
	jsr	__Moveto_d
;----- asm -----
; 106 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[75]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 108 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[76]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
;--- end asm ---
	ldb	#-36	; tmp44,
	subb	3,s	; tmp44, player1_x
	stb	2,s	; tmp44,
	ldb	#-100	;,
	stb	,-s	;,
	ldb	3,s	;,
	jsr	__Moveto_d
;----- asm -----
; 112 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[79]    Moveto_d(player2_y, player2_x);
;--- end asm ---
	ldb	#-100	;,
	stb	,-s	;,
	ldb	6,s	;, player2_x
	jsr	__Moveto_d
;----- asm -----
; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[80]    Draw_Line_d(0, PADDLE_LENGTH);
;--- end asm ---
	clr	,-s	;
	ldb	#36	;,
	jsr	__Draw_Line_d
;----- asm -----
; 117 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[82]    int new_x = dot_x + dot_x_vel;
;--- end asm ---
	ldb	10,s	;, dot_x_vel
	addb	8,s	;, dot_x
	stb	12,s	;, new_x
;----- asm -----
; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[83]    int new_y = dot_y + dot_y_vel;
;--- end asm ---
	ldb	11,s	;, dot_y_vel
	addb	9,s	;, dot_y
	stb	13,s	;, new_y
;----- asm -----
; 123 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[86]    if (new_x >= player1_x && new_x <= player1_x + PADDLE_LENGTH && new_y >= player1_y - dot_y_vel && new_y <= player1_y + dot_y_vel) {
;--- end asm ---
	leas	5,s	;,,
	ldb	1,s	;, player1_x
	cmpb	7,s	;cmpqi:	;, new_x
	lble	L14	;
L9:
	ldb	2,s	;, player2_x
	cmpb	7,s	;cmpqi:	;, new_x
	lbgt	L10	;
	addb	#36	; tmp49,
	cmpb	7,s	;cmpqi:(R)	; tmp49, new_x
	lblt	L10	;
	ldb	6,s	; tmp50, dot_y_vel
	addb	#-100	; tmp50,
	cmpb	8,s	;cmpqi:(R)	; tmp50, new_y
	lbgt	L10	;
	ldb	#-100	; tmp52,
	subb	6,s	; tmp51, dot_y_vel
	cmpb	8,s	;cmpqi:(R)	; tmp51, new_y
	lblt	L10	;
;----- asm -----
; 130 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[90]      dot_y_vel = -dot_y_vel;
;--- end asm ---
	neg	6,s	; dot_y_vel
;----- asm -----
; 132 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
	; #ENR#[91]      new_y = dot_y + dot_y_vel;
;--- end asm ---
	ldb	6,s	;, dot_y_vel
	addb	4,s	;, dot_y
	stb	8,s	;, new_y
	lbra	L10	;
