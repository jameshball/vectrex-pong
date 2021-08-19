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
                             42 	.area	.bss
                             43 	.globl	_player1_x
   C880                      44 _player1_x:	.blkb	1
                             45 	.globl	_player1_y
   C881                      46 _player1_y:	.blkb	1
                             47 	.globl	_player2_x
   C882                      48 _player2_x:	.blkb	1
                             49 	.globl	_player2_y
   C883                      50 _player2_y:	.blkb	1
                             51 	.globl	_player1_score_str
   C884                      52 _player1_score_str:	.blkb	7
                             53 	.globl	_player2_score_str
   C88B                      54 _player2_score_str:	.blkb	7
                             55 	.globl	_dot_x
   C892                      56 _dot_x:	.blkb	1
                             57 	.globl	_dot_y
   C893                      58 _dot_y:	.blkb	1
                             59 	.globl	_dot_x_vel
   C894                      60 _dot_x_vel:	.blkb	1
                             61 	.globl	_dot_y_vel
   C895                      62 _dot_y_vel:	.blkb	1
                             63 	.area	.text
                             64 	.globl	_reset_round
   03CF                      65 _reset_round:
                             66 ;----- asm -----
                             67 ; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             68 	; #ENR#[34]  dot_x = 0;
                             69 ;--- end asm ---
   03CF 7F C8 92      [ 7]   70 	clr	_dot_x	; dot_x
                             71 ;----- asm -----
                             72 ; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             73 	; #ENR#[35]  dot_y = 0;
                             74 ;--- end asm ---
   03D2 7F C8 93      [ 7]   75 	clr	_dot_y	; dot_y
                             76 ;----- asm -----
                             77 ; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             78 	; #ENR#[36]  dot_x_vel = 2;
                             79 ;--- end asm ---
   03D5 C6 02         [ 2]   80 	ldb	#2	;,
   03D7 F7 C8 94      [ 5]   81 	stb	_dot_x_vel	;, dot_x_vel
                             82 ;----- asm -----
                             83 ; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             84 	; #ENR#[37]  dot_y_vel = 2;
                             85 ;--- end asm ---
   03DA F7 C8 95      [ 5]   86 	stb	_dot_y_vel	;, dot_y_vel
                             87 ;----- asm -----
                             88 ; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             89 	; #ENR#[39]  player1_x = -HALF_PADDLE;
                             90 ;--- end asm ---
   03DD C6 EE         [ 2]   91 	ldb	#-18	;,
   03DF F7 C8 80      [ 5]   92 	stb	_player1_x	;, player1_x
                             93 ;----- asm -----
                             94 ; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             95 	; #ENR#[40]  player1_y = PADDLE_Y;
                             96 ;--- end asm ---
   03E2 C6 64         [ 2]   97 	ldb	#100	;,
   03E4 F7 C8 81      [ 5]   98 	stb	_player1_y	;, player1_y
                             99 ;----- asm -----
                            100 ; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            101 	; #ENR#[41]  player2_x = -HALF_PADDLE;
                            102 ;--- end asm ---
   03E7 C6 EE         [ 2]  103 	ldb	#-18	;,
   03E9 F7 C8 82      [ 5]  104 	stb	_player2_x	;, player2_x
                            105 ;----- asm -----
                            106 ; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            107 	; #ENR#[42]  player2_y = -PADDLE_Y;
                            108 ;--- end asm ---
   03EC C6 9C         [ 2]  109 	ldb	#-100	;,
   03EE F7 C8 83      [ 5]  110 	stb	_player2_y	;, player2_y
   03F1 39            [ 5]  111 	rts
                            112 	.globl	_setup
   03F2                     113 _setup:
                            114 ;----- asm -----
                            115 ; 62 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            116 	; #ENR#[49]  disable_controller_1_x();
                            117 ;--- end asm ---
   03F2 7F C8 1F      [ 7]  118 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
                            119 ;----- asm -----
                            120 ; 64 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            121 	; #ENR#[50]  disable_controller_1_y();
                            122 ;--- end asm ---
   03F5 7F C8 20      [ 7]  123 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
                            124 ;----- asm -----
                            125 ; 66 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            126 	; #ENR#[51]  disable_controller_2_x();
                            127 ;--- end asm ---
   03F8 7F C8 21      [ 7]  128 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
                            129 ;----- asm -----
                            130 ; 68 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            131 	; #ENR#[52]  disable_controller_2_y();
                            132 ;--- end asm ---
   03FB 7F C8 22      [ 7]  133 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
                            134 ;----- asm -----
                            135 ; 70 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            136 	; #ENR#[53]  Clear_Score(player1_score_str);
                            137 ;--- end asm ---
   03FE 8E C8 84      [ 3]  138 	ldx	#_player1_score_str	;,
   0401 BD F8 4F      [ 8]  139 	jsr	___Clear_Score
                            140 ;----- asm -----
                            141 ; 72 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            142 	; #ENR#[54]  Clear_Score(player2_score_str);
                            143 ;--- end asm ---
   0404 8E C8 8B      [ 3]  144 	ldx	#_player2_score_str	;,
   0407 BD F8 4F      [ 8]  145 	jsr	___Clear_Score
                            146 ;----- asm -----
                            147 ; 74 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            148 	; #ENR#[55]  player1_score_str[6] = '€';
                            149 ;--- end asm ---
   040A C6 80         [ 2]  150 	ldb	#-128	;,
   040C F7 C8 8A      [ 5]  151 	stb	_player1_score_str+6	;, player1_score_str
                            152 ;----- asm -----
                            153 ; 76 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            154 	; #ENR#[56]  player2_score_str[6] = '€';
                            155 ;--- end asm ---
   040F F7 C8 91      [ 5]  156 	stb	_player2_score_str+6	;, player2_score_str
                            157 ;----- asm -----
                            158 ; 78 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            159 	; #ENR#[57]  reset_round();
                            160 ; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            161 	; #ENR#[34]  dot_x = 0;
                            162 ;--- end asm ---
   0412 7F C8 92      [ 7]  163 	clr	_dot_x	; dot_x
                            164 ;----- asm -----
                            165 ; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            166 	; #ENR#[35]  dot_y = 0;
                            167 ;--- end asm ---
   0415 7F C8 93      [ 7]  168 	clr	_dot_y	; dot_y
                            169 ;----- asm -----
                            170 ; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            171 	; #ENR#[36]  dot_x_vel = 2;
                            172 ;--- end asm ---
   0418 C6 02         [ 2]  173 	ldb	#2	;,
   041A F7 C8 94      [ 5]  174 	stb	_dot_x_vel	;, dot_x_vel
                            175 ;----- asm -----
                            176 ; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            177 	; #ENR#[37]  dot_y_vel = 2;
                            178 ;--- end asm ---
   041D F7 C8 95      [ 5]  179 	stb	_dot_y_vel	;, dot_y_vel
                            180 ;----- asm -----
                            181 ; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            182 	; #ENR#[39]  player1_x = -HALF_PADDLE;
                            183 ;--- end asm ---
   0420 C6 EE         [ 2]  184 	ldb	#-18	;,
   0422 F7 C8 80      [ 5]  185 	stb	_player1_x	;, player1_x
                            186 ;----- asm -----
                            187 ; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            188 	; #ENR#[40]  player1_y = PADDLE_Y;
                            189 ;--- end asm ---
   0425 C6 64         [ 2]  190 	ldb	#100	;,
   0427 F7 C8 81      [ 5]  191 	stb	_player1_y	;, player1_y
                            192 ;----- asm -----
                            193 ; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            194 	; #ENR#[41]  player2_x = -HALF_PADDLE;
                            195 ;--- end asm ---
   042A C6 EE         [ 2]  196 	ldb	#-18	;,
   042C F7 C8 82      [ 5]  197 	stb	_player2_x	;, player2_x
                            198 ;----- asm -----
                            199 ; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            200 	; #ENR#[42]  player2_y = -PADDLE_Y;
                            201 ;--- end asm ---
   042F C6 9C         [ 2]  202 	ldb	#-100	;,
   0431 F7 C8 83      [ 5]  203 	stb	_player2_y	;, player2_y
   0434 39            [ 5]  204 	rts
                            205 	.globl	_main
   0435                     206 _main:
   0435 32 79         [ 5]  207 	leas	-7,s	;,,
                            208 ;----- asm -----
                            209 ; 88 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            210 	; #ENR#[66]  setup();
                            211 ;--- end asm ---
   0437 BD 03 F2      [ 8]  212 	jsr	_setup
                            213 ;----- asm -----
                            214 ; 91 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            215 	; #ENR#[68]  while (1) {
                            216 ;--- end asm ---
   043A 16 00 4B      [ 5]  217 	lbra	L18	;
   043D                     218 L10:
   043D E6 63         [ 5]  219 	ldb	3,s	;, dot_y.14
   043F C1 88         [ 2]  220 	cmpb	#-120	;cmpqi:	;,
   0441 10 2D 01 89   [ 6]  221 	lblt	L21	;
   0445 F6 C8 80      [ 5]  222 	ldb	_player1_x	; player1_x.60, player1_x
   0448 E1 61         [ 5]  223 	cmpb	1,s	;cmpqi:(R)	; player1_x.60, dot_x.12
   044A 10 2E 01 49   [ 6]  224 	lbgt	L13	;
   044E CB 24         [ 2]  225 	addb	#36	; player1_x.60,
   0450 E1 61         [ 5]  226 	cmpb	1,s	;cmpqi:(R)	; player1_x.60, dot_x.12
   0452 10 2D 01 41   [ 6]  227 	lblt	L13	;
   0456 F6 C8 81      [ 5]  228 	ldb	_player1_y	;, player1_y
   0459 E7 65         [ 5]  229 	stb	5,s	;, player1_y.61
   045B E0 62         [ 5]  230 	subb	2,s	; tmp52, dot_y_vel.13
   045D E1 63         [ 5]  231 	cmpb	3,s	;cmpqi:(R)	; tmp52, dot_y.14
   045F 10 2E 01 34   [ 6]  232 	lbgt	L13	;
   0463 E6 65         [ 5]  233 	ldb	5,s	;, player1_y.61
   0465 EB 62         [ 5]  234 	addb	2,s	;, dot_y_vel.13
   0467 E7 65         [ 5]  235 	stb	5,s	;, player1_y.61
   0469 E6 63         [ 5]  236 	ldb	3,s	;, dot_y.14
   046B E1 65         [ 5]  237 	cmpb	5,s	;cmpqi:	;, player1_y.61
   046D 10 2E 01 26   [ 6]  238 	lbgt	L13	;
                            239 ;----- asm -----
                            240 ; 163 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            241 	; #ENR#[114]      dot_y_vel = -dot_y_vel;
                            242 ;--- end asm ---
   0471 E6 62         [ 5]  243 	ldb	2,s	; dot_y_vel.15, dot_y_vel.13
   0473 50            [ 2]  244 	negb	; dot_y_vel.15
   0474 F7 C8 95      [ 5]  245 	stb	_dot_y_vel	; dot_y_vel.15, dot_y_vel
                            246 ;----- asm -----
                            247 ; 165 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            248 	; #ENR#[115]      dot_y = dot_y + 2 * dot_y_vel;
                            249 ;--- end asm ---
   0477 58            [ 2]  250 	aslb	; dot_y_vel.15
   0478 EB 63         [ 5]  251 	addb	3,s	; dot_y_vel.15, dot_y.14
   047A F7 C8 93      [ 5]  252 	stb	_dot_y	; dot_y_vel.15, dot_y
   047D                     253 L11:
                            254 ;----- asm -----
                            255 ; 175 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            256 	; #ENR#[122]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
                            257 ;--- end asm ---
   047D F6 C8 92      [ 5]  258 	ldb	_dot_x	; tmp59, dot_x
   0480 CB 64         [ 2]  259 	addb	#100	; tmp59,
   0482 C1 C8         [ 2]  260 	cmpb	#-56	;cmpqi:	; tmp59,
   0484 10 22 01 51   [ 6]  261 	lbhi	L22	;
   0488                     262 L18:
                            263 ;----- asm -----
                            264 ; 93 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            265 	; #ENR#[69]    loop_setup();
                            266 ; 28 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            267 	; #ENR#[27]  Wait_Recal();
                            268 ;--- end asm ---
   0488 BD F1 92      [ 8]  269 	jsr	___Wait_Recal
                            270 ;----- asm -----
                            271 ; 30 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            272 	; #ENR#[28]  check_buttons(); /* update status of buttons * /
                            273 ;--- end asm ---
   048B BD F1 BA      [ 8]  274 	jsr	___Read_Btns
                            275 ;----- asm -----
                            276 ; 32 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            277 	; #ENR#[29]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
                            278 ;--- end asm ---
   048E C6 7F         [ 2]  279 	ldb	#127	;,
   0490 BD 03 03      [ 8]  280 	jsr	__Intensity_a
                            281 ;----- asm -----
                            282 ; 34 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            283 	; #ENR#[30]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
                            284 ;--- end asm ---
   0493 C6 7F         [ 2]  285 	ldb	#127	;,
   0495 F7 D0 04      [ 5]  286 	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
                            287 ;----- asm -----
                            288 ; 97 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            289 	; #ENR#[72]    Print_Str_d(127, -128, player1_score_str);
                            290 ;--- end asm ---
   0498 E7 E2         [ 6]  291 	stb	,-s	;,
   049A 8E C8 84      [ 3]  292 	ldx	#_player1_score_str	;,
   049D 5C            [ 2]  293 	incb	;
   049E BD 01 6E      [ 8]  294 	jsr	__Print_Str_d
                            295 ;----- asm -----
                            296 ; 99 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            297 	; #ENR#[73]    Print_Str_d(-128, -128, player2_score_str);
                            298 ;--- end asm ---
   04A1 C6 80         [ 2]  299 	ldb	#-128	;,
   04A3 E7 E2         [ 6]  300 	stb	,-s	;,
   04A5 8E C8 8B      [ 3]  301 	ldx	#_player2_score_str	;,
   04A8 BD 01 6E      [ 8]  302 	jsr	__Print_Str_d
                            303 ;----- asm -----
                            304 ; 103 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            305 	; #ENR#[76]    Dot_d(dot_y, dot_x);
                            306 ;--- end asm ---
   04AB F6 C8 93      [ 5]  307 	ldb	_dot_y	;, dot_y
   04AE E7 E2         [ 6]  308 	stb	,-s	;,
   04B0 F6 C8 92      [ 5]  309 	ldb	_dot_x	;, dot_x
   04B3 BD 01 52      [ 8]  310 	jsr	__Dot_d
                            311 ;----- asm -----
                            312 ; 105 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            313 	; #ENR#[77]    Moveto_d(-dot_y, -dot_x);
                            314 ;--- end asm ---
   04B6 F6 C8 92      [ 5]  315 	ldb	_dot_x	;, dot_x
   04B9 50            [ 2]  316 	negb	;
   04BA E7 63         [ 5]  317 	stb	3,s	;,
   04BC F6 C8 93      [ 5]  318 	ldb	_dot_y	;, dot_y
   04BF 50            [ 2]  319 	negb	;
   04C0 34 04         [ 6]  320 	pshs	b	;
   04C2 E6 64         [ 5]  321 	ldb	4,s	;,
   04C4 BD 02 F9      [ 8]  322 	jsr	__Moveto_d
                            323 ;----- asm -----
                            324 ; 109 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            325 	; #ENR#[80]    if (button_1_1_held() && player1_x > -BOUND_X) {
                            326 ;--- end asm ---
   04C7 F6 C8 0F      [ 5]  327 	ldb	_Vec_Btn_State	;, Vec_Btn_State
   04CA E7 68         [ 5]  328 	stb	8,s	;, D.3132
   04CC 32 64         [ 5]  329 	leas	4,s	;,,
   04CE C5 01         [ 2]  330 	bitb	#1	;,
   04D0 27 0C         [ 3]  331 	beq	L6	;
   04D2 F6 C8 80      [ 5]  332 	ldb	_player1_x	; player1_x.3, player1_x
   04D5 C1 9D         [ 2]  333 	cmpb	#-99	;cmpqi:	; player1_x.3,
   04D7 2D 05         [ 3]  334 	blt	L6	;
                            335 ;----- asm -----
                            336 ; 111 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            337 	; #ENR#[81]      player1_x -= PADDLE_SPEED;
                            338 ;--- end asm ---
   04D9 CB FD         [ 2]  339 	addb	#-3	; player1_x.3,
   04DB F7 C8 80      [ 5]  340 	stb	_player1_x	; player1_x.3, player1_x
   04DE                     341 L6:
                            342 ;----- asm -----
                            343 ; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            344 	; #ENR#[83]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
                            345 ;--- end asm ---
   04DE C6 02         [ 2]  346 	ldb	#2	; tmp45,
   04E0 E4 64         [ 5]  347 	andb	4,s	; tmp45, D.3132
   04E2 27 0C         [ 3]  348 	beq	L7	;
   04E4 F6 C8 80      [ 5]  349 	ldb	_player1_x	; player1_x.52, player1_x
   04E7 C1 3F         [ 2]  350 	cmpb	#63	;cmpqi:	; player1_x.52,
   04E9 2E 05         [ 3]  351 	bgt	L7	;
                            352 ;----- asm -----
                            353 ; 116 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            354 	; #ENR#[84]      player1_x += PADDLE_SPEED;
                            355 ;--- end asm ---
   04EB CB 03         [ 2]  356 	addb	#3	; player1_x.52,
   04ED F7 C8 80      [ 5]  357 	stb	_player1_x	; player1_x.52, player1_x
   04F0                     358 L7:
                            359 ;----- asm -----
                            360 ; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            361 	; #ENR#[86]    if (button_1_3_held() && player2_x > - BOUND_X) {
                            362 ;--- end asm ---
   04F0 C6 04         [ 2]  363 	ldb	#4	; tmp46,
   04F2 E4 64         [ 5]  364 	andb	4,s	; tmp46, D.3132
   04F4 27 0C         [ 3]  365 	beq	L8	;
   04F6 F6 C8 82      [ 5]  366 	ldb	_player2_x	; player2_x.6, player2_x
   04F9 C1 9D         [ 2]  367 	cmpb	#-99	;cmpqi:	; player2_x.6,
   04FB 2D 05         [ 3]  368 	blt	L8	;
                            369 ;----- asm -----
                            370 ; 121 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            371 	; #ENR#[87]      player2_x -= PADDLE_SPEED;
                            372 ;--- end asm ---
   04FD CB FD         [ 2]  373 	addb	#-3	; player2_x.6,
   04FF F7 C8 82      [ 5]  374 	stb	_player2_x	; player2_x.6, player2_x
   0502                     375 L8:
                            376 ;----- asm -----
                            377 ; 124 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            378 	; #ENR#[89]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
                            379 ;--- end asm ---
   0502 C6 08         [ 2]  380 	ldb	#8	;,
   0504 E4 64         [ 5]  381 	andb	4,s	;, D.3132
   0506 27 0C         [ 3]  382 	beq	L9	;
   0508 F6 C8 82      [ 5]  383 	ldb	_player2_x	; player2_x.53, player2_x
   050B C1 3F         [ 2]  384 	cmpb	#63	;cmpqi:	; player2_x.53,
   050D 2E 05         [ 3]  385 	bgt	L9	;
                            386 ;----- asm -----
                            387 ; 126 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            388 	; #ENR#[90]      player2_x += PADDLE_SPEED;
                            389 ;--- end asm ---
   050F CB 03         [ 2]  390 	addb	#3	; player2_x.53,
   0511 F7 C8 82      [ 5]  391 	stb	_player2_x	; player2_x.53, player2_x
   0514                     392 L9:
                            393 ;----- asm -----
                            394 ; 131 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            395 	; #ENR#[94]    Moveto_d(player1_y, player1_x);
                            396 ;--- end asm ---
   0514 F6 C8 81      [ 5]  397 	ldb	_player1_y	;, player1_y
   0517 E7 E2         [ 6]  398 	stb	,-s	;,
   0519 F6 C8 80      [ 5]  399 	ldb	_player1_x	;, player1_x
   051C BD 02 F9      [ 8]  400 	jsr	__Moveto_d
                            401 ;----- asm -----
                            402 ; 133 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            403 	; #ENR#[95]    Draw_Line_d(0, PADDLE_LENGTH);
                            404 ;--- end asm ---
   051F 6F E2         [ 8]  405 	clr	,-s	;
   0521 C6 24         [ 2]  406 	ldb	#36	;,
   0523 BD 01 C3      [ 8]  407 	jsr	__Draw_Line_d
                            408 ;----- asm -----
                            409 ; 135 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            410 	; #ENR#[96]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
                            411 ;--- end asm ---
   0526 C6 DC         [ 2]  412 	ldb	#-36	; tmp49,
   0528 F0 C8 80      [ 5]  413 	subb	_player1_x	; tmp49, player1_x
   052B E7 62         [ 5]  414 	stb	2,s	; tmp49,
   052D F6 C8 81      [ 5]  415 	ldb	_player1_y	;, player1_y
   0530 50            [ 2]  416 	negb	;
   0531 34 04         [ 6]  417 	pshs	b	;
   0533 E6 63         [ 5]  418 	ldb	3,s	;,
   0535 BD 02 F9      [ 8]  419 	jsr	__Moveto_d
                            420 ;----- asm -----
                            421 ; 139 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            422 	; #ENR#[99]    Moveto_d(player2_y, player2_x);
                            423 ;--- end asm ---
   0538 F6 C8 83      [ 5]  424 	ldb	_player2_y	;, player2_y
   053B E7 E2         [ 6]  425 	stb	,-s	;,
   053D F6 C8 82      [ 5]  426 	ldb	_player2_x	;, player2_x
   0540 BD 02 F9      [ 8]  427 	jsr	__Moveto_d
                            428 ;----- asm -----
                            429 ; 141 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            430 	; #ENR#[100]    Draw_Line_d(0, PADDLE_LENGTH);
                            431 ;--- end asm ---
   0543 6F E2         [ 8]  432 	clr	,-s	;
   0545 C6 24         [ 2]  433 	ldb	#36	;,
   0547 BD 01 C3      [ 8]  434 	jsr	__Draw_Line_d
                            435 ;----- asm -----
                            436 ; 145 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            437 	; #ENR#[103]    dot_x = dot_x + dot_x_vel;
                            438 ;--- end asm ---
   054A F6 C8 94      [ 5]  439 	ldb	_dot_x_vel	;, dot_x_vel
   054D FB C8 92      [ 5]  440 	addb	_dot_x	;, dot_x
   0550 E7 66         [ 5]  441 	stb	6,s	;, dot_x.12
   0552 F7 C8 92      [ 5]  442 	stb	_dot_x	;, dot_x
                            443 ;----- asm -----
                            444 ; 147 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            445 	; #ENR#[104]    dot_y = dot_y + dot_y_vel;
                            446 ;--- end asm ---
   0555 F6 C8 95      [ 5]  447 	ldb	_dot_y_vel	;, dot_y_vel
   0558 E7 67         [ 5]  448 	stb	7,s	;, dot_y_vel.13
   055A FB C8 93      [ 5]  449 	addb	_dot_y	;, dot_y
   055D E7 68         [ 5]  450 	stb	8,s	;, dot_y.14
   055F F7 C8 93      [ 5]  451 	stb	_dot_y	;, dot_y
                            452 ;----- asm -----
                            453 ; 151 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            454 	; #ENR#[107]    if (dot_y > BOUND_Y) {
                            455 ;--- end asm ---
   0562 32 65         [ 5]  456 	leas	5,s	;,,
   0564 C1 78         [ 2]  457 	cmpb	#120	;cmpqi:	;,
   0566 10 2F FE D3   [ 6]  458 	lble	L10	;
                            459 ;----- asm -----
                            460 ; 153 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            461 	; #ENR#[108]      Add_Score_a(1, player2_score_str);
                            462 ;--- end asm ---
   056A 8E C8 8B      [ 3]  463 	ldx	#_player2_score_str	;,
   056D C6 01         [ 2]  464 	ldb	#1	;,
   056F BD 02 7D      [ 8]  465 	jsr	__Add_Score_a
                            466 ;----- asm -----
                            467 ; 155 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            468 	; #ENR#[109]      reset_round();
                            469 ;--- end asm ---
   0572                     470 L19:
                            471 ;----- asm -----
                            472 ; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            473 	; #ENR#[34]  dot_x = 0;
                            474 ;--- end asm ---
   0572 7F C8 92      [ 7]  475 	clr	_dot_x	; dot_x
                            476 ;----- asm -----
                            477 ; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            478 	; #ENR#[35]  dot_y = 0;
                            479 ;--- end asm ---
   0575 7F C8 93      [ 7]  480 	clr	_dot_y	; dot_y
                            481 ;----- asm -----
                            482 ; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            483 	; #ENR#[36]  dot_x_vel = 2;
                            484 ;--- end asm ---
   0578 C6 02         [ 2]  485 	ldb	#2	;,
   057A F7 C8 94      [ 5]  486 	stb	_dot_x_vel	;, dot_x_vel
                            487 ;----- asm -----
                            488 ; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            489 	; #ENR#[37]  dot_y_vel = 2;
                            490 ;--- end asm ---
   057D F7 C8 95      [ 5]  491 	stb	_dot_y_vel	;, dot_y_vel
                            492 ;----- asm -----
                            493 ; 48 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            494 	; #ENR#[39]  player1_x = -HALF_PADDLE;
                            495 ;--- end asm ---
   0580 C6 EE         [ 2]  496 	ldb	#-18	;,
   0582 F7 C8 80      [ 5]  497 	stb	_player1_x	;, player1_x
                            498 ;----- asm -----
                            499 ; 50 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            500 	; #ENR#[40]  player1_y = PADDLE_Y;
                            501 ;--- end asm ---
   0585 C6 64         [ 2]  502 	ldb	#100	;,
   0587 F7 C8 81      [ 5]  503 	stb	_player1_y	;, player1_y
                            504 ;----- asm -----
                            505 ; 52 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            506 	; #ENR#[41]  player2_x = -HALF_PADDLE;
                            507 ;--- end asm ---
   058A C6 EE         [ 2]  508 	ldb	#-18	;,
   058C F7 C8 82      [ 5]  509 	stb	_player2_x	;, player2_x
                            510 ;----- asm -----
                            511 ; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            512 	; #ENR#[42]  player2_y = -PADDLE_Y;
                            513 ;--- end asm ---
   058F C6 9C         [ 2]  514 	ldb	#-100	;,
   0591 F7 C8 83      [ 5]  515 	stb	_player2_y	;, player2_y
   0594 16 FE E6      [ 5]  516 	lbra	L11	;
   0597                     517 L13:
   0597 F6 C8 82      [ 5]  518 	ldb	_player2_x	; player2_x.62, player2_x
   059A E1 61         [ 5]  519 	cmpb	1,s	;cmpqi:(R)	; player2_x.62, dot_x.12
   059C 10 2E FE DD   [ 6]  520 	lbgt	L11	;
   05A0 CB 24         [ 2]  521 	addb	#36	; player2_x.62,
   05A2 E1 61         [ 5]  522 	cmpb	1,s	;cmpqi:(R)	; player2_x.62, dot_x.12
   05A4 10 2D FE D5   [ 6]  523 	lblt	L11	;
   05A8 F6 C8 83      [ 5]  524 	ldb	_player2_y	;, player2_y
   05AB E7 66         [ 5]  525 	stb	6,s	;, player2_y.63
   05AD EB 62         [ 5]  526 	addb	2,s	; tmp56, dot_y_vel.13
   05AF E1 63         [ 5]  527 	cmpb	3,s	;cmpqi:(R)	; tmp56, dot_y.14
   05B1 10 2E FE C8   [ 6]  528 	lbgt	L11	;
   05B5 E6 66         [ 5]  529 	ldb	6,s	; tmp57, player2_y.63
   05B7 E0 62         [ 5]  530 	subb	2,s	; tmp57, dot_y_vel.13
   05B9 E1 63         [ 5]  531 	cmpb	3,s	;cmpqi:(R)	; tmp57, dot_y.14
   05BB 10 2D FE BE   [ 6]  532 	lblt	L11	;
                            533 ;----- asm -----
                            534 ; 168 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            535 	; #ENR#[117]      dot_y_vel = -dot_y_vel;
                            536 ;--- end asm ---
   05BF E6 62         [ 5]  537 	ldb	2,s	; dot_y_vel.64, dot_y_vel.13
   05C1 50            [ 2]  538 	negb	; dot_y_vel.64
   05C2 F7 C8 95      [ 5]  539 	stb	_dot_y_vel	; dot_y_vel.64, dot_y_vel
                            540 ;----- asm -----
                            541 ; 170 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            542 	; #ENR#[118]      dot_y = dot_y + 2 * dot_y_vel;
                            543 ;--- end asm ---
   05C5 58            [ 2]  544 	aslb	; dot_y_vel.64
   05C6 EB 63         [ 5]  545 	addb	3,s	; dot_y_vel.64, dot_y.14
   05C8 F7 C8 93      [ 5]  546 	stb	_dot_y	; dot_y_vel.64, dot_y
   05CB 16 FE AF      [ 5]  547 	lbra	L11	;
   05CE                     548 L21:
                            549 ;----- asm -----
                            550 ; 158 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            551 	; #ENR#[111]      Add_Score_a(1, player1_score_str);
                            552 ;--- end asm ---
   05CE 8E C8 84      [ 3]  553 	ldx	#_player1_score_str	;,
   05D1 C6 01         [ 2]  554 	ldb	#1	;,
   05D3 BD 02 7D      [ 8]  555 	jsr	__Add_Score_a
                            556 ;----- asm -----
                            557 ; 160 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            558 	; #ENR#[112]      reset_round();
                            559 ;--- end asm ---
   05D6 16 FF 99      [ 5]  560 	lbra	L19	;
   05D9                     561 L22:
                            562 ;----- asm -----
                            563 ; 177 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            564 	; #ENR#[123]      dot_x_vel = -dot_x_vel;
                            565 ;--- end asm ---
   05D9 70 C8 94      [ 7]  566 	neg	_dot_x_vel	; dot_x_vel
   05DC 16 FE A9      [ 5]  567 	lbra	L18	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$main$103         0018 GR  |   3 A$main$104         001A GR
  3 A$main$109         001D GR  |   3 A$main$110         001F GR
  3 A$main$111         0022 GR  |   3 A$main$118         0023 GR
  3 A$main$123         0026 GR  |   3 A$main$128         0029 GR
  3 A$main$133         002C GR  |   3 A$main$138         002F GR
  3 A$main$139         0032 GR  |   3 A$main$144         0035 GR
  3 A$main$145         0038 GR  |   3 A$main$150         003B GR
  3 A$main$151         003D GR  |   3 A$main$156         0040 GR
  3 A$main$163         0043 GR  |   3 A$main$168         0046 GR
  3 A$main$173         0049 GR  |   3 A$main$174         004B GR
  3 A$main$179         004E GR  |   3 A$main$184         0051 GR
  3 A$main$185         0053 GR  |   3 A$main$190         0056 GR
  3 A$main$191         0058 GR  |   3 A$main$196         005B GR
  3 A$main$197         005D GR  |   3 A$main$202         0060 GR
  3 A$main$203         0062 GR  |   3 A$main$204         0065 GR
  3 A$main$207         0066 GR  |   3 A$main$212         0068 GR
  3 A$main$217         006B GR  |   3 A$main$219         006E GR
  3 A$main$220         0070 GR  |   3 A$main$221         0072 GR
  3 A$main$222         0076 GR  |   3 A$main$223         0079 GR
  3 A$main$224         007B GR  |   3 A$main$225         007F GR
  3 A$main$226         0081 GR  |   3 A$main$227         0083 GR
  3 A$main$228         0087 GR  |   3 A$main$229         008A GR
  3 A$main$230         008C GR  |   3 A$main$231         008E GR
  3 A$main$232         0090 GR  |   3 A$main$233         0094 GR
  3 A$main$234         0096 GR  |   3 A$main$235         0098 GR
  3 A$main$236         009A GR  |   3 A$main$237         009C GR
  3 A$main$238         009E GR  |   3 A$main$243         00A2 GR
  3 A$main$244         00A4 GR  |   3 A$main$245         00A5 GR
  3 A$main$250         00A8 GR  |   3 A$main$251         00A9 GR
  3 A$main$252         00AB GR  |   3 A$main$258         00AE GR
  3 A$main$259         00B1 GR  |   3 A$main$260         00B3 GR
  3 A$main$261         00B5 GR  |   3 A$main$269         00B9 GR
  3 A$main$274         00BC GR  |   3 A$main$279         00BF GR
  3 A$main$280         00C1 GR  |   3 A$main$285         00C4 GR
  3 A$main$286         00C6 GR  |   3 A$main$291         00C9 GR
  3 A$main$292         00CB GR  |   3 A$main$293         00CE GR
  3 A$main$294         00CF GR  |   3 A$main$299         00D2 GR
  3 A$main$300         00D4 GR  |   3 A$main$301         00D6 GR
  3 A$main$302         00D9 GR  |   3 A$main$307         00DC GR
  3 A$main$308         00DF GR  |   3 A$main$309         00E1 GR
  3 A$main$310         00E4 GR  |   3 A$main$315         00E7 GR
  3 A$main$316         00EA GR  |   3 A$main$317         00EB GR
  3 A$main$318         00ED GR  |   3 A$main$319         00F0 GR
  3 A$main$320         00F1 GR  |   3 A$main$321         00F3 GR
  3 A$main$322         00F5 GR  |   3 A$main$327         00F8 GR
  3 A$main$328         00FB GR  |   3 A$main$329         00FD GR
  3 A$main$330         00FF GR  |   3 A$main$331         0101 GR
  3 A$main$332         0103 GR  |   3 A$main$333         0106 GR
  3 A$main$334         0108 GR  |   3 A$main$339         010A GR
  3 A$main$340         010C GR  |   3 A$main$346         010F GR
  3 A$main$347         0111 GR  |   3 A$main$348         0113 GR
  3 A$main$349         0115 GR  |   3 A$main$350         0118 GR
  3 A$main$351         011A GR  |   3 A$main$356         011C GR
  3 A$main$357         011E GR  |   3 A$main$363         0121 GR
  3 A$main$364         0123 GR  |   3 A$main$365         0125 GR
  3 A$main$366         0127 GR  |   3 A$main$367         012A GR
  3 A$main$368         012C GR  |   3 A$main$373         012E GR
  3 A$main$374         0130 GR  |   3 A$main$380         0133 GR
  3 A$main$381         0135 GR  |   3 A$main$382         0137 GR
  3 A$main$383         0139 GR  |   3 A$main$384         013C GR
  3 A$main$385         013E GR  |   3 A$main$390         0140 GR
  3 A$main$391         0142 GR  |   3 A$main$397         0145 GR
  3 A$main$398         0148 GR  |   3 A$main$399         014A GR
  3 A$main$400         014D GR  |   3 A$main$405         0150 GR
  3 A$main$406         0152 GR  |   3 A$main$407         0154 GR
  3 A$main$412         0157 GR  |   3 A$main$413         0159 GR
  3 A$main$414         015C GR  |   3 A$main$415         015E GR
  3 A$main$416         0161 GR  |   3 A$main$417         0162 GR
  3 A$main$418         0164 GR  |   3 A$main$419         0166 GR
  3 A$main$424         0169 GR  |   3 A$main$425         016C GR
  3 A$main$426         016E GR  |   3 A$main$427         0171 GR
  3 A$main$432         0174 GR  |   3 A$main$433         0176 GR
  3 A$main$434         0178 GR  |   3 A$main$439         017B GR
  3 A$main$440         017E GR  |   3 A$main$441         0181 GR
  3 A$main$442         0183 GR  |   3 A$main$447         0186 GR
  3 A$main$448         0189 GR  |   3 A$main$449         018B GR
  3 A$main$450         018E GR  |   3 A$main$451         0190 GR
  3 A$main$456         0193 GR  |   3 A$main$457         0195 GR
  3 A$main$458         0197 GR  |   3 A$main$463         019B GR
  3 A$main$464         019E GR  |   3 A$main$465         01A0 GR
  3 A$main$475         01A3 GR  |   3 A$main$480         01A6 GR
  3 A$main$485         01A9 GR  |   3 A$main$486         01AB GR
  3 A$main$491         01AE GR  |   3 A$main$496         01B1 GR
  3 A$main$497         01B3 GR  |   3 A$main$502         01B6 GR
  3 A$main$503         01B8 GR  |   3 A$main$508         01BB GR
  3 A$main$509         01BD GR  |   3 A$main$514         01C0 GR
  3 A$main$515         01C2 GR  |   3 A$main$516         01C5 GR
  3 A$main$518         01C8 GR  |   3 A$main$519         01CB GR
  3 A$main$520         01CD GR  |   3 A$main$521         01D1 GR
  3 A$main$522         01D3 GR  |   3 A$main$523         01D5 GR
  3 A$main$524         01D9 GR  |   3 A$main$525         01DC GR
  3 A$main$526         01DE GR  |   3 A$main$527         01E0 GR
  3 A$main$528         01E2 GR  |   3 A$main$529         01E6 GR
  3 A$main$530         01E8 GR  |   3 A$main$531         01EA GR
  3 A$main$532         01EC GR  |   3 A$main$537         01F0 GR
  3 A$main$538         01F2 GR  |   3 A$main$539         01F3 GR
  3 A$main$544         01F6 GR  |   3 A$main$545         01F7 GR
  3 A$main$546         01F9 GR  |   3 A$main$547         01FC GR
  3 A$main$553         01FF GR  |   3 A$main$554         0202 GR
  3 A$main$555         0204 GR  |   3 A$main$560         0207 GR
  3 A$main$566         020A GR  |   3 A$main$567         020D GR
  3 A$main$70          0000 GR  |   3 A$main$75          0003 GR
  3 A$main$80          0006 GR  |   3 A$main$81          0008 GR
  3 A$main$86          000B GR  |   3 A$main$91          000E GR
  3 A$main$92          0010 GR  |   3 A$main$97          0013 GR
  3 A$main$98          0015 GR  |   3 L10                006E R
  3 L11                00AE R   |   3 L13                01C8 R
  3 L18                00B9 R   |   3 L19                01A3 R
  3 L21                01FF R   |   3 L22                020A R
  3 L6                 010F R   |   3 L7                 0121 R
  3 L8                 0133 R   |   3 L9                 0145 R
    _VIA_t1_cnt_lo     **** GX  |     _Vec_Btn_State     **** GX
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Joy_Mux_2     **** GX
    __Add_Score_a      **** GX  |     __Dot_d            **** GX
    __Draw_Line_d      **** GX  |     __Intensity_a      **** GX
    __Moveto_d         **** GX  |     __Print_Str_d      **** GX
    ___Clear_Score     **** GX  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 _dot_x             0012 GR
  2 _dot_x_vel         0014 GR  |   2 _dot_y             0013 GR
  2 _dot_y_vel         0015 GR  |   3 _main              0066 GR
  2 _player1_score     0004 GR  |   2 _player1_x         0000 GR
  2 _player1_y         0001 GR  |   2 _player2_score     000B GR
  2 _player2_x         0002 GR  |   2 _player2_y         0003 GR
  3 _reset_round       0000 GR  |   3 _setup             0023 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size   16   flags    0
   3 .text            size  210   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

