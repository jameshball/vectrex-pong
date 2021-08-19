                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	main.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -fno-gcse -fverbose-asm -W -Wall -Wextra -Wconversion
                             10 ; -Werror -fomit-frame-pointer -fno-toplevel-reorder -mint8
                             11 ; -msoft-reg-count=0 -std=gnu99 -fno-time-report
                             12 ; -IC:\Vide2.5.1.w64\Vide.w64\C\PeerC\vectrex\include -O3
                             13 ; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; -IC:\Vide2.5.1.w64\Vide.w64\vectrex-pong\include
                             15 ; C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c
                             16 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             17 ; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             18 ; -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             19 ; -fdelete-null-pointer-checks -fearly-inlining
                             20 ; -feliminate-unused-debug-types -fexpensive-optimizations
                             21 ; -fforward-propagate -ffunction-cse -fgcse-after-reload -fgcse-lm
                             22 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             23 ; -finline-functions -finline-functions-called-once
                             24 ; -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
                             25 ; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             26 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             27 ; -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
                             28 ; -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
                             29 ; -freorder-functions -frerun-cse-after-loop -fsched-interblock
                             30 ; -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
                             31 ; -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
                             32 ; -fstrict-overflow -fthread-jumps -ftrapping-math -ftree-ccp -ftree-ch
                             33 ; -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
                             34 ; -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
                             35 ; -ftree-loop-optimize -ftree-parallelize-loops= -ftree-pre -ftree-reassoc
                             36 ; -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra -ftree-store-ccp
                             37 ; -ftree-ter -ftree-vect-loop-version -ftree-vectorize -ftree-vrp
                             38 ; -funit-at-a-time -funswitch-loops -fverbose-asm -fzero-initialized-in-bss
                             39 
                             40 ; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
                             41 
                             42 	.area	.text
                             43 	.globl	_setup
   03CF                      44 _setup:
                             45 ;----- asm -----
                             46 ; 22 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             47 	; #ENR#[21]  disable_controller_1_x();
                             48 ;--- end asm ---
   03CF 7F C8 1F      [ 7]   49 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
                             50 ;----- asm -----
                             51 ; 24 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             52 	; #ENR#[22]  disable_controller_1_y();
                             53 ;--- end asm ---
   03D2 7F C8 20      [ 7]   54 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
                             55 ;----- asm -----
                             56 ; 26 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             57 	; #ENR#[23]  disable_controller_2_x();
                             58 ;--- end asm ---
   03D5 7F C8 21      [ 7]   59 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
                             60 ;----- asm -----
                             61 ; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             62 	; #ENR#[24]  disable_controller_2_y();
                             63 ;--- end asm ---
   03D8 7F C8 22      [ 7]   64 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
   03DB 39            [ 5]   65 	rts
                             66 	.globl	_main
   03DC                      67 _main:
   03DC 32 76         [ 5]   68 	leas	-10,s	;,,
                             69 ;----- asm -----
                             70 ; 49 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             71 	; #ENR#[40]  int player1_x = -HALF_PADDLE;
                             72 ; 51 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             73 	; #ENR#[41]  int player1_y = PADDLE_Y;
                             74 ; 53 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             75 	; #ENR#[42]  int player2_x = -HALF_PADDLE;
                             76 ; 55 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             77 	; #ENR#[43]  int player2_y = -PADDLE_Y;
                             78 ; 58 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             79 	; #ENR#[45]  int dot_x = 13;
                             80 ; 60 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             81 	; #ENR#[46]  int dot_y = 0;
                             82 ; 62 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             83 	; #ENR#[47]  int dot_x_vel = 2;
                             84 ; 64 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             85 	; #ENR#[48]  int dot_y_vel = 2;
                             86 ; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             87 	; #ENR#[50]  setup();
                             88 ; 22 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             89 	; #ENR#[21]  disable_controller_1_x();
                             90 ;--- end asm ---
   03DE 7F C8 1F      [ 7]   91 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
                             92 ;----- asm -----
                             93 ; 24 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             94 	; #ENR#[22]  disable_controller_1_y();
                             95 ;--- end asm ---
   03E1 7F C8 20      [ 7]   96 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
                             97 ;----- asm -----
                             98 ; 26 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             99 	; #ENR#[23]  disable_controller_2_x();
                            100 ;--- end asm ---
   03E4 7F C8 21      [ 7]  101 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
                            102 ;----- asm -----
                            103 ; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            104 	; #ENR#[24]  disable_controller_2_y();
                            105 ;--- end asm ---
   03E7 7F C8 22      [ 7]  106 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
                            107 ;----- asm -----
                            108 ; 70 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            109 	; #ENR#[52]  while (1) {
                            110 ;--- end asm ---
   03EA C6 EE         [ 2]  111 	ldb	#-18	;,
   03EC E7 61         [ 5]  112 	stb	1,s	;, player1_x
   03EE E7 62         [ 5]  113 	stb	2,s	;, player2_x
   03F0 C6 0D         [ 2]  114 	ldb	#13	;,
   03F2 E7 63         [ 5]  115 	stb	3,s	;, dot_x
   03F4 6F 64         [ 7]  116 	clr	4,s	; dot_y
   03F6 C6 02         [ 2]  117 	ldb	#2	;,
   03F8 E7 65         [ 5]  118 	stb	5,s	;, dot_x_vel
   03FA E7 66         [ 5]  119 	stb	6,s	;, dot_y_vel
   03FC 16 00 36      [ 5]  120 	lbra	L4	;
   03FF                     121 L14:
   03FF CB 24         [ 2]  122 	addb	#36	; tmp45,
   0401 E1 67         [ 5]  123 	cmpb	7,s	;cmpqi:(R)	; tmp45, new_x
   0403 10 2D 00 E0   [ 6]  124 	lblt	L9	;
   0407 C6 64         [ 2]  125 	ldb	#100	; tmp47,
   0409 E0 66         [ 5]  126 	subb	6,s	; tmp46, dot_y_vel
   040B E1 68         [ 5]  127 	cmpb	8,s	;cmpqi:(R)	; tmp46, new_y
   040D 10 2E 00 D6   [ 6]  128 	lbgt	L9	;
   0411 E6 66         [ 5]  129 	ldb	6,s	; tmp48, dot_y_vel
   0413 CB 64         [ 2]  130 	addb	#100	; tmp48,
   0415 E1 68         [ 5]  131 	cmpb	8,s	;cmpqi:(R)	; tmp48, new_y
   0417 10 2D 00 CC   [ 6]  132 	lblt	L9	;
                            133 ;----- asm -----
                            134 ; 125 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            135 	; #ENR#[87]      dot_y_vel = -dot_y_vel;
                            136 ;--- end asm ---
   041B 60 66         [ 7]  137 	neg	6,s	; dot_y_vel
                            138 ;----- asm -----
                            139 ; 127 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            140 	; #ENR#[88]      new_y = dot_y + dot_y_vel;
                            141 ;--- end asm ---
   041D E6 66         [ 5]  142 	ldb	6,s	;, dot_y_vel
   041F EB 64         [ 5]  143 	addb	4,s	;, dot_y
   0421 E7 68         [ 5]  144 	stb	8,s	;, new_y
   0423                     145 L10:
                            146 ;----- asm -----
                            147 ; 137 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            148 	; #ENR#[95]    dot_x = new_x;
                            149 ; 139 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            150 	; #ENR#[96]    dot_y = new_y;
                            151 ; 143 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            152 	; #ENR#[99]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
                            153 ;--- end asm ---
   0423 E6 67         [ 5]  154 	ldb	7,s	; tmp53, new_x
   0425 CB 64         [ 2]  155 	addb	#100	; tmp53,
   0427 C1 C8         [ 2]  156 	cmpb	#-56	;cmpqi:	; tmp53,
   0429 23 02         [ 3]  157 	bls	L11	;
                            158 ;----- asm -----
                            159 ; 145 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            160 	; #ENR#[100]      dot_x_vel = -dot_x_vel;
                            161 ;--- end asm ---
   042B 60 65         [ 7]  162 	neg	5,s	; dot_x_vel
   042D                     163 L11:
   042D E6 68         [ 5]  164 	ldb	8,s	;, new_y
   042F E7 64         [ 5]  165 	stb	4,s	;, dot_y
   0431 E6 67         [ 5]  166 	ldb	7,s	;, new_x
   0433 E7 63         [ 5]  167 	stb	3,s	;, dot_x
   0435                     168 L4:
                            169 ;----- asm -----
                            170 ; 72 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            171 	; #ENR#[53]    loop_setup();
                            172 ; 33 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            173 	; #ENR#[28]  Wait_Recal();
                            174 ;--- end asm ---
   0435 BD F1 92      [ 8]  175 	jsr	___Wait_Recal
                            176 ;----- asm -----
                            177 ; 35 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            178 	; #ENR#[29]  check_buttons(); /* update status of buttons * /
                            179 ;--- end asm ---
   0438 BD F1 BA      [ 8]  180 	jsr	___Read_Btns
                            181 ;----- asm -----
                            182 ; 37 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            183 	; #ENR#[30]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
                            184 ;--- end asm ---
   043B C6 7F         [ 2]  185 	ldb	#127	;,
   043D BD 03 03      [ 8]  186 	jsr	__Intensity_a
                            187 ;----- asm -----
                            188 ; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            189 	; #ENR#[31]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
                            190 ;--- end asm ---
   0440 C6 7F         [ 2]  191 	ldb	#127	;,
   0442 F7 D0 04      [ 5]  192 	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
                            193 ;----- asm -----
                            194 ; 76 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            195 	; #ENR#[56]    Dot_d(dot_y, dot_x);
                            196 ;--- end asm ---
   0445 E6 64         [ 5]  197 	ldb	4,s	;, dot_y
   0447 34 04         [ 6]  198 	pshs	b	;
   0449 E6 64         [ 5]  199 	ldb	4,s	;, dot_x
   044B BD 01 52      [ 8]  200 	jsr	__Dot_d
                            201 ;----- asm -----
                            202 ; 78 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            203 	; #ENR#[57]    Moveto_d(-dot_y, -dot_x);
                            204 ;--- end asm ---
   044E E6 64         [ 5]  205 	ldb	4,s	;, dot_x
   0450 50            [ 2]  206 	negb	;
   0451 E7 61         [ 5]  207 	stb	1,s	;,
   0453 E6 65         [ 5]  208 	ldb	5,s	;, dot_y
   0455 50            [ 2]  209 	negb	;
   0456 34 04         [ 6]  210 	pshs	b	;
   0458 E6 62         [ 5]  211 	ldb	2,s	;,
   045A BD 02 F9      [ 8]  212 	jsr	__Moveto_d
                            213 ;----- asm -----
                            214 ; 82 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            215 	; #ENR#[60]    if (button_1_1_held() && player1_x > -BOUND_X) {
                            216 ;--- end asm ---
   045D F6 C8 0F      [ 5]  217 	ldb	_Vec_Btn_State	;, Vec_Btn_State
   0460 E7 6B         [ 5]  218 	stb	11,s	;, D.3096
   0462 32 62         [ 5]  219 	leas	2,s	;,,
   0464 C5 01         [ 2]  220 	bitb	#1	;,
   0466 27 0A         [ 3]  221 	beq	L5	;
   0468 E6 61         [ 5]  222 	ldb	1,s	;, player1_x
   046A C1 9D         [ 2]  223 	cmpb	#-99	;cmpqi:	;,
   046C 2D 04         [ 3]  224 	blt	L5	;
                            225 ;----- asm -----
                            226 ; 84 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            227 	; #ENR#[61]      player1_x -= PADDLE_SPEED;
                            228 ;--- end asm ---
   046E CB FD         [ 2]  229 	addb	#-3	;,
   0470 E7 61         [ 5]  230 	stb	1,s	;, player1_x
   0472                     231 L5:
                            232 ;----- asm -----
                            233 ; 87 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            234 	; #ENR#[63]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
                            235 ;--- end asm ---
   0472 C6 02         [ 2]  236 	ldb	#2	; tmp40,
   0474 E4 69         [ 5]  237 	andb	9,s	; tmp40, D.3096
   0476 27 0A         [ 3]  238 	beq	L6	;
   0478 E6 61         [ 5]  239 	ldb	1,s	;, player1_x
   047A C1 3F         [ 2]  240 	cmpb	#63	;cmpqi:	;,
   047C 2E 04         [ 3]  241 	bgt	L6	;
                            242 ;----- asm -----
                            243 ; 89 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            244 	; #ENR#[64]      player1_x += PADDLE_SPEED;
                            245 ;--- end asm ---
   047E CB 03         [ 2]  246 	addb	#3	;,
   0480 E7 61         [ 5]  247 	stb	1,s	;, player1_x
   0482                     248 L6:
                            249 ;----- asm -----
                            250 ; 92 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            251 	; #ENR#[66]    if (button_1_3_held() && player2_x > - BOUND_X) {
                            252 ;--- end asm ---
   0482 C6 04         [ 2]  253 	ldb	#4	; tmp41,
   0484 E4 69         [ 5]  254 	andb	9,s	; tmp41, D.3096
   0486 27 0A         [ 3]  255 	beq	L7	;
   0488 E6 62         [ 5]  256 	ldb	2,s	;, player2_x
   048A C1 9D         [ 2]  257 	cmpb	#-99	;cmpqi:	;,
   048C 2D 04         [ 3]  258 	blt	L7	;
                            259 ;----- asm -----
                            260 ; 94 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            261 	; #ENR#[67]      player2_x -= PADDLE_SPEED;
                            262 ;--- end asm ---
   048E CB FD         [ 2]  263 	addb	#-3	;,
   0490 E7 62         [ 5]  264 	stb	2,s	;, player2_x
   0492                     265 L7:
                            266 ;----- asm -----
                            267 ; 97 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            268 	; #ENR#[69]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
                            269 ;--- end asm ---
   0492 C6 08         [ 2]  270 	ldb	#8	;,
   0494 E4 69         [ 5]  271 	andb	9,s	;, D.3096
   0496 27 0A         [ 3]  272 	beq	L8	;
   0498 E6 62         [ 5]  273 	ldb	2,s	;, player2_x
   049A C1 3F         [ 2]  274 	cmpb	#63	;cmpqi:	;,
   049C 2E 04         [ 3]  275 	bgt	L8	;
                            276 ;----- asm -----
                            277 ; 99 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            278 	; #ENR#[70]      player2_x += PADDLE_SPEED;
                            279 ;--- end asm ---
   049E CB 03         [ 2]  280 	addb	#3	;,
   04A0 E7 62         [ 5]  281 	stb	2,s	;, player2_x
   04A2                     282 L8:
                            283 ;----- asm -----
                            284 ; 104 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            285 	; #ENR#[74]    Moveto_d(player1_y, player1_x);
                            286 ;--- end asm ---
   04A2 C6 64         [ 2]  287 	ldb	#100	;,
   04A4 E7 E2         [ 6]  288 	stb	,-s	;,
   04A6 E6 62         [ 5]  289 	ldb	2,s	;, player1_x
   04A8 BD 02 F9      [ 8]  290 	jsr	__Moveto_d
                            291 ;----- asm -----
                            292 ; 106 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            293 	; #ENR#[75]    Draw_Line_d(0, PADDLE_LENGTH);
                            294 ;--- end asm ---
   04AB 6F E2         [ 8]  295 	clr	,-s	;
   04AD C6 24         [ 2]  296 	ldb	#36	;,
   04AF BD 01 C3      [ 8]  297 	jsr	__Draw_Line_d
                            298 ;----- asm -----
                            299 ; 108 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            300 	; #ENR#[76]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
                            301 ;--- end asm ---
   04B2 C6 DC         [ 2]  302 	ldb	#-36	; tmp44,
   04B4 E0 63         [ 5]  303 	subb	3,s	; tmp44, player1_x
   04B6 E7 62         [ 5]  304 	stb	2,s	; tmp44,
   04B8 C6 9C         [ 2]  305 	ldb	#-100	;,
   04BA E7 E2         [ 6]  306 	stb	,-s	;,
   04BC E6 63         [ 5]  307 	ldb	3,s	;,
   04BE BD 02 F9      [ 8]  308 	jsr	__Moveto_d
                            309 ;----- asm -----
                            310 ; 112 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            311 	; #ENR#[79]    Moveto_d(player2_y, player2_x);
                            312 ;--- end asm ---
   04C1 C6 9C         [ 2]  313 	ldb	#-100	;,
   04C3 E7 E2         [ 6]  314 	stb	,-s	;,
   04C5 E6 66         [ 5]  315 	ldb	6,s	;, player2_x
   04C7 BD 02 F9      [ 8]  316 	jsr	__Moveto_d
                            317 ;----- asm -----
                            318 ; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            319 	; #ENR#[80]    Draw_Line_d(0, PADDLE_LENGTH);
                            320 ;--- end asm ---
   04CA 6F E2         [ 8]  321 	clr	,-s	;
   04CC C6 24         [ 2]  322 	ldb	#36	;,
   04CE BD 01 C3      [ 8]  323 	jsr	__Draw_Line_d
                            324 ;----- asm -----
                            325 ; 117 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            326 	; #ENR#[82]    int new_x = dot_x + dot_x_vel;
                            327 ;--- end asm ---
   04D1 E6 6A         [ 5]  328 	ldb	10,s	;, dot_x_vel
   04D3 EB 68         [ 5]  329 	addb	8,s	;, dot_x
   04D5 E7 6C         [ 5]  330 	stb	12,s	;, new_x
                            331 ;----- asm -----
                            332 ; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            333 	; #ENR#[83]    int new_y = dot_y + dot_y_vel;
                            334 ;--- end asm ---
   04D7 E6 6B         [ 5]  335 	ldb	11,s	;, dot_y_vel
   04D9 EB 69         [ 5]  336 	addb	9,s	;, dot_y
   04DB E7 6D         [ 5]  337 	stb	13,s	;, new_y
                            338 ;----- asm -----
                            339 ; 123 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            340 	; #ENR#[86]    if (new_x >= player1_x && new_x <= player1_x + PADDLE_LENGTH && new_y >= player1_y - dot_y_vel && new_y <= player1_y + dot_y_vel) {
                            341 ;--- end asm ---
   04DD 32 65         [ 5]  342 	leas	5,s	;,,
   04DF E6 61         [ 5]  343 	ldb	1,s	;, player1_x
   04E1 E1 67         [ 5]  344 	cmpb	7,s	;cmpqi:	;, new_x
   04E3 10 2F FF 18   [ 6]  345 	lble	L14	;
   04E7                     346 L9:
   04E7 E6 62         [ 5]  347 	ldb	2,s	;, player2_x
   04E9 E1 67         [ 5]  348 	cmpb	7,s	;cmpqi:	;, new_x
   04EB 10 2E FF 34   [ 6]  349 	lbgt	L10	;
   04EF CB 24         [ 2]  350 	addb	#36	; tmp49,
   04F1 E1 67         [ 5]  351 	cmpb	7,s	;cmpqi:(R)	; tmp49, new_x
   04F3 10 2D FF 2C   [ 6]  352 	lblt	L10	;
   04F7 E6 66         [ 5]  353 	ldb	6,s	; tmp50, dot_y_vel
   04F9 CB 9C         [ 2]  354 	addb	#-100	; tmp50,
   04FB E1 68         [ 5]  355 	cmpb	8,s	;cmpqi:(R)	; tmp50, new_y
   04FD 10 2E FF 22   [ 6]  356 	lbgt	L10	;
   0501 C6 9C         [ 2]  357 	ldb	#-100	; tmp52,
   0503 E0 66         [ 5]  358 	subb	6,s	; tmp51, dot_y_vel
   0505 E1 68         [ 5]  359 	cmpb	8,s	;cmpqi:(R)	; tmp51, new_y
   0507 10 2D FF 18   [ 6]  360 	lblt	L10	;
                            361 ;----- asm -----
                            362 ; 130 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            363 	; #ENR#[90]      dot_y_vel = -dot_y_vel;
                            364 ;--- end asm ---
   050B 60 66         [ 7]  365 	neg	6,s	; dot_y_vel
                            366 ;----- asm -----
                            367 ; 132 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            368 	; #ENR#[91]      new_y = dot_y + dot_y_vel;
                            369 ;--- end asm ---
   050D E6 66         [ 5]  370 	ldb	6,s	;, dot_y_vel
   050F EB 64         [ 5]  371 	addb	4,s	;, dot_y
   0511 E7 68         [ 5]  372 	stb	8,s	;, new_y
   0513 16 FF 0D      [ 5]  373 	lbra	L10	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$main$101         0015 GR  |   2 A$main$106         0018 GR
  2 A$main$111         001B GR  |   2 A$main$112         001D GR
  2 A$main$113         001F GR  |   2 A$main$114         0021 GR
  2 A$main$115         0023 GR  |   2 A$main$116         0025 GR
  2 A$main$117         0027 GR  |   2 A$main$118         0029 GR
  2 A$main$119         002B GR  |   2 A$main$120         002D GR
  2 A$main$122         0030 GR  |   2 A$main$123         0032 GR
  2 A$main$124         0034 GR  |   2 A$main$125         0038 GR
  2 A$main$126         003A GR  |   2 A$main$127         003C GR
  2 A$main$128         003E GR  |   2 A$main$129         0042 GR
  2 A$main$130         0044 GR  |   2 A$main$131         0046 GR
  2 A$main$132         0048 GR  |   2 A$main$137         004C GR
  2 A$main$142         004E GR  |   2 A$main$143         0050 GR
  2 A$main$144         0052 GR  |   2 A$main$154         0054 GR
  2 A$main$155         0056 GR  |   2 A$main$156         0058 GR
  2 A$main$157         005A GR  |   2 A$main$162         005C GR
  2 A$main$164         005E GR  |   2 A$main$165         0060 GR
  2 A$main$166         0062 GR  |   2 A$main$167         0064 GR
  2 A$main$175         0066 GR  |   2 A$main$180         0069 GR
  2 A$main$185         006C GR  |   2 A$main$186         006E GR
  2 A$main$191         0071 GR  |   2 A$main$192         0073 GR
  2 A$main$197         0076 GR  |   2 A$main$198         0078 GR
  2 A$main$199         007A GR  |   2 A$main$200         007C GR
  2 A$main$205         007F GR  |   2 A$main$206         0081 GR
  2 A$main$207         0082 GR  |   2 A$main$208         0084 GR
  2 A$main$209         0086 GR  |   2 A$main$210         0087 GR
  2 A$main$211         0089 GR  |   2 A$main$212         008B GR
  2 A$main$217         008E GR  |   2 A$main$218         0091 GR
  2 A$main$219         0093 GR  |   2 A$main$220         0095 GR
  2 A$main$221         0097 GR  |   2 A$main$222         0099 GR
  2 A$main$223         009B GR  |   2 A$main$224         009D GR
  2 A$main$229         009F GR  |   2 A$main$230         00A1 GR
  2 A$main$236         00A3 GR  |   2 A$main$237         00A5 GR
  2 A$main$238         00A7 GR  |   2 A$main$239         00A9 GR
  2 A$main$240         00AB GR  |   2 A$main$241         00AD GR
  2 A$main$246         00AF GR  |   2 A$main$247         00B1 GR
  2 A$main$253         00B3 GR  |   2 A$main$254         00B5 GR
  2 A$main$255         00B7 GR  |   2 A$main$256         00B9 GR
  2 A$main$257         00BB GR  |   2 A$main$258         00BD GR
  2 A$main$263         00BF GR  |   2 A$main$264         00C1 GR
  2 A$main$270         00C3 GR  |   2 A$main$271         00C5 GR
  2 A$main$272         00C7 GR  |   2 A$main$273         00C9 GR
  2 A$main$274         00CB GR  |   2 A$main$275         00CD GR
  2 A$main$280         00CF GR  |   2 A$main$281         00D1 GR
  2 A$main$287         00D3 GR  |   2 A$main$288         00D5 GR
  2 A$main$289         00D7 GR  |   2 A$main$290         00D9 GR
  2 A$main$295         00DC GR  |   2 A$main$296         00DE GR
  2 A$main$297         00E0 GR  |   2 A$main$302         00E3 GR
  2 A$main$303         00E5 GR  |   2 A$main$304         00E7 GR
  2 A$main$305         00E9 GR  |   2 A$main$306         00EB GR
  2 A$main$307         00ED GR  |   2 A$main$308         00EF GR
  2 A$main$313         00F2 GR  |   2 A$main$314         00F4 GR
  2 A$main$315         00F6 GR  |   2 A$main$316         00F8 GR
  2 A$main$321         00FB GR  |   2 A$main$322         00FD GR
  2 A$main$323         00FF GR  |   2 A$main$328         0102 GR
  2 A$main$329         0104 GR  |   2 A$main$330         0106 GR
  2 A$main$335         0108 GR  |   2 A$main$336         010A GR
  2 A$main$337         010C GR  |   2 A$main$342         010E GR
  2 A$main$343         0110 GR  |   2 A$main$344         0112 GR
  2 A$main$345         0114 GR  |   2 A$main$347         0118 GR
  2 A$main$348         011A GR  |   2 A$main$349         011C GR
  2 A$main$350         0120 GR  |   2 A$main$351         0122 GR
  2 A$main$352         0124 GR  |   2 A$main$353         0128 GR
  2 A$main$354         012A GR  |   2 A$main$355         012C GR
  2 A$main$356         012E GR  |   2 A$main$357         0132 GR
  2 A$main$358         0134 GR  |   2 A$main$359         0136 GR
  2 A$main$360         0138 GR  |   2 A$main$365         013C GR
  2 A$main$370         013E GR  |   2 A$main$371         0140 GR
  2 A$main$372         0142 GR  |   2 A$main$373         0144 GR
  2 A$main$49          0000 GR  |   2 A$main$54          0003 GR
  2 A$main$59          0006 GR  |   2 A$main$64          0009 GR
  2 A$main$65          000C GR  |   2 A$main$68          000D GR
  2 A$main$91          000F GR  |   2 A$main$96          0012 GR
  2 L10                0054 R   |   2 L11                005E R
  2 L14                0030 R   |   2 L4                 0066 R
  2 L5                 00A3 R   |   2 L6                 00B3 R
  2 L7                 00C3 R   |   2 L8                 00D3 R
  2 L9                 0118 R   |     _VIA_t1_cnt_lo     **** GX
    _Vec_Btn_State     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_2     **** GX
    _Vec_Joy_Mux_2     **** GX  |     __Dot_d            **** GX
    __Draw_Line_d      **** GX  |     __Intensity_a      **** GX
    __Moveto_d         **** GX  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 _main              000D GR
  2 _setup             0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  147   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

