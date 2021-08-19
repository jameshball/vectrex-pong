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
                             42 	.globl	_player1_x
                             43 	.area	.data
   C880                      44 _player1_x:
   C880 EE                   45 	.byte	-18
                             46 	.globl	_player1_y
   C881                      47 _player1_y:
   C881 64                   48 	.byte	100
                             49 	.globl	_player2_x
   C882                      50 _player2_x:
   C882 EE                   51 	.byte	-18
                             52 	.globl	_player2_y
   C883                      53 _player2_y:
   C883 9C                   54 	.byte	-100
                             55 	.area	.bss
                             56 	.globl	_player1_score_str
   C888                      57 _player1_score_str:	.blkb	7
                             58 	.globl	_player2_score_str
   C88F                      59 _player2_score_str:	.blkb	7
                             60 	.globl	_dot_x
                             61 	.area	.data
   C884                      62 _dot_x:
   C884 00                   63 	.byte	0
                             64 	.globl	_dot_y
   C885                      65 _dot_y:
   C885 00                   66 	.byte	0
                             67 	.globl	_dot_x_vel
   C886                      68 _dot_x_vel:
   C886 02                   69 	.byte	2
                             70 	.globl	_dot_y_vel
   C887                      71 _dot_y_vel:
   C887 02                   72 	.byte	2
                             73 	.area	.text
                             74 	.globl	_setup
   03CF                      75 _setup:
                             76 ;----- asm -----
                             77 ; 35 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             78 	; #ENR#[34]  disable_controller_1_x();
                             79 ;--- end asm ---
   03CF 7F C8 1F      [ 7]   80 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
                             81 ;----- asm -----
                             82 ; 37 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             83 	; #ENR#[35]  disable_controller_1_y();
                             84 ;--- end asm ---
   03D2 7F C8 20      [ 7]   85 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
                             86 ;----- asm -----
                             87 ; 39 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             88 	; #ENR#[36]  disable_controller_2_x();
                             89 ;--- end asm ---
   03D5 7F C8 21      [ 7]   90 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
                             91 ;----- asm -----
                             92 ; 41 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             93 	; #ENR#[37]  disable_controller_2_y();
                             94 ;--- end asm ---
   03D8 7F C8 22      [ 7]   95 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
                             96 ;----- asm -----
                             97 ; 43 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                             98 	; #ENR#[38]  Clear_Score(player1_score_str);
                             99 ;--- end asm ---
   03DB 8E C8 88      [ 3]  100 	ldx	#_player1_score_str	;,
   03DE BD F8 4F      [ 8]  101 	jsr	___Clear_Score
                            102 ;----- asm -----
                            103 ; 45 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            104 	; #ENR#[39]  Clear_Score(player2_score_str);
                            105 ;--- end asm ---
   03E1 8E C8 8F      [ 3]  106 	ldx	#_player2_score_str	;,
   03E4 BD F8 4F      [ 8]  107 	jsr	___Clear_Score
                            108 ;----- asm -----
                            109 ; 47 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            110 	; #ENR#[40]  player1_score_str[6] = '€';
                            111 ;--- end asm ---
   03E7 C6 80         [ 2]  112 	ldb	#-128	;,
   03E9 F7 C8 8E      [ 5]  113 	stb	_player1_score_str+6	;, player1_score_str
                            114 ;----- asm -----
                            115 ; 49 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            116 	; #ENR#[41]  player2_score_str[6] = '€';
                            117 ;--- end asm ---
   03EC F7 C8 95      [ 5]  118 	stb	_player2_score_str+6	;, player2_score_str
   03EF 39            [ 5]  119 	rts
                            120 	.globl	_reset_round
   03F0                     121 _reset_round:
                            122 ;----- asm -----
                            123 ; 65 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            124 	; #ENR#[52]  dot_x = 0;
                            125 ;--- end asm ---
   03F0 7F C8 84      [ 7]  126 	clr	_dot_x	; dot_x
                            127 ;----- asm -----
                            128 ; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            129 	; #ENR#[53]  dot_y = 0;
                            130 ;--- end asm ---
   03F3 7F C8 85      [ 7]  131 	clr	_dot_y	; dot_y
                            132 ;----- asm -----
                            133 ; 69 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            134 	; #ENR#[54]  dot_x_vel = 2;
                            135 ;--- end asm ---
   03F6 C6 02         [ 2]  136 	ldb	#2	;,
   03F8 F7 C8 86      [ 5]  137 	stb	_dot_x_vel	;, dot_x_vel
                            138 ;----- asm -----
                            139 ; 71 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            140 	; #ENR#[55]  dot_y_vel = 2;
                            141 ;--- end asm ---
   03FB F7 C8 87      [ 5]  142 	stb	_dot_y_vel	;, dot_y_vel
   03FE 39            [ 5]  143 	rts
                            144 	.globl	_main
   03FF                     145 _main:
   03FF 32 79         [ 5]  146 	leas	-7,s	;,,
                            147 ;----- asm -----
                            148 ; 81 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            149 	; #ENR#[64]  setup();
                            150 ;--- end asm ---
   0401 BD 03 CF      [ 8]  151 	jsr	_setup
                            152 ;----- asm -----
                            153 ; 84 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            154 	; #ENR#[66]  while (1) {
                            155 ;--- end asm ---
   0404 16 00 4B      [ 5]  156 	lbra	L18	;
   0407                     157 L10:
   0407 E6 63         [ 5]  158 	ldb	3,s	;, dot_y.14
   0409 C1 88         [ 2]  159 	cmpb	#-120	;cmpqi:	;,
   040B 10 2D 01 75   [ 6]  160 	lblt	L21	;
   040F F6 C8 80      [ 5]  161 	ldb	_player1_x	; player1_x.59, player1_x
   0412 E1 61         [ 5]  162 	cmpb	1,s	;cmpqi:(R)	; player1_x.59, dot_x.12
   0414 10 2E 01 35   [ 6]  163 	lbgt	L13	;
   0418 CB 24         [ 2]  164 	addb	#36	; player1_x.59,
   041A E1 61         [ 5]  165 	cmpb	1,s	;cmpqi:(R)	; player1_x.59, dot_x.12
   041C 10 2D 01 2D   [ 6]  166 	lblt	L13	;
   0420 F6 C8 81      [ 5]  167 	ldb	_player1_y	;, player1_y
   0423 E7 65         [ 5]  168 	stb	5,s	;, player1_y.60
   0425 E0 62         [ 5]  169 	subb	2,s	; tmp52, dot_y_vel.13
   0427 E1 63         [ 5]  170 	cmpb	3,s	;cmpqi:(R)	; tmp52, dot_y.14
   0429 10 2E 01 20   [ 6]  171 	lbgt	L13	;
   042D E6 65         [ 5]  172 	ldb	5,s	;, player1_y.60
   042F EB 62         [ 5]  173 	addb	2,s	;, dot_y_vel.13
   0431 E7 65         [ 5]  174 	stb	5,s	;, player1_y.60
   0433 E6 63         [ 5]  175 	ldb	3,s	;, dot_y.14
   0435 E1 65         [ 5]  176 	cmpb	5,s	;cmpqi:	;, player1_y.60
   0437 10 2E 01 12   [ 6]  177 	lbgt	L13	;
                            178 ;----- asm -----
                            179 ; 156 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            180 	; #ENR#[112]      dot_y_vel = -dot_y_vel;
                            181 ;--- end asm ---
   043B E6 62         [ 5]  182 	ldb	2,s	; dot_y_vel.15, dot_y_vel.13
   043D 50            [ 2]  183 	negb	; dot_y_vel.15
   043E F7 C8 87      [ 5]  184 	stb	_dot_y_vel	; dot_y_vel.15, dot_y_vel
                            185 ;----- asm -----
                            186 ; 158 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            187 	; #ENR#[113]      dot_y = dot_y + 2 * dot_y_vel;
                            188 ;--- end asm ---
   0441 58            [ 2]  189 	aslb	; dot_y_vel.15
   0442 EB 63         [ 5]  190 	addb	3,s	; dot_y_vel.15, dot_y.14
   0444 F7 C8 85      [ 5]  191 	stb	_dot_y	; dot_y_vel.15, dot_y
   0447                     192 L11:
                            193 ;----- asm -----
                            194 ; 168 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            195 	; #ENR#[120]    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
                            196 ;--- end asm ---
   0447 F6 C8 84      [ 5]  197 	ldb	_dot_x	; tmp59, dot_x
   044A CB 64         [ 2]  198 	addb	#100	; tmp59,
   044C C1 C8         [ 2]  199 	cmpb	#-56	;cmpqi:	; tmp59,
   044E 10 22 01 3D   [ 6]  200 	lbhi	L22	;
   0452                     201 L18:
                            202 ;----- asm -----
                            203 ; 86 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            204 	; #ENR#[67]    loop_setup();
                            205 ; 54 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            206 	; #ENR#[45]  Wait_Recal();
                            207 ;--- end asm ---
   0452 BD F1 92      [ 8]  208 	jsr	___Wait_Recal
                            209 ;----- asm -----
                            210 ; 56 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            211 	; #ENR#[46]  check_buttons(); /* update status of buttons * /
                            212 ;--- end asm ---
   0455 BD F1 BA      [ 8]  213 	jsr	___Read_Btns
                            214 ;----- asm -----
                            215 ; 58 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            216 	; #ENR#[47]  Intensity_a(MAX_BRIGHTNESS); /* set some brightness * /
                            217 ;--- end asm ---
   0458 C6 7F         [ 2]  218 	ldb	#127	;,
   045A BD 03 03      [ 8]  219 	jsr	__Intensity_a
                            220 ;----- asm -----
                            221 ; 60 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            222 	; #ENR#[48]  VIA_t1_cnt_lo = SCALE;      /* set scale factor * /
                            223 ;--- end asm ---
   045D C6 7F         [ 2]  224 	ldb	#127	;,
   045F F7 D0 04      [ 5]  225 	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
                            226 ;----- asm -----
                            227 ; 90 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            228 	; #ENR#[70]    Print_Str_d(127, -128, player1_score_str);
                            229 ;--- end asm ---
   0462 E7 E2         [ 6]  230 	stb	,-s	;,
   0464 8E C8 88      [ 3]  231 	ldx	#_player1_score_str	;,
   0467 5C            [ 2]  232 	incb	;
   0468 BD 01 6E      [ 8]  233 	jsr	__Print_Str_d
                            234 ;----- asm -----
                            235 ; 92 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            236 	; #ENR#[71]    Print_Str_d(-128, -128, player2_score_str);
                            237 ;--- end asm ---
   046B C6 80         [ 2]  238 	ldb	#-128	;,
   046D E7 E2         [ 6]  239 	stb	,-s	;,
   046F 8E C8 8F      [ 3]  240 	ldx	#_player2_score_str	;,
   0472 BD 01 6E      [ 8]  241 	jsr	__Print_Str_d
                            242 ;----- asm -----
                            243 ; 96 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            244 	; #ENR#[74]    Dot_d(dot_y, dot_x);
                            245 ;--- end asm ---
   0475 F6 C8 85      [ 5]  246 	ldb	_dot_y	;, dot_y
   0478 E7 E2         [ 6]  247 	stb	,-s	;,
   047A F6 C8 84      [ 5]  248 	ldb	_dot_x	;, dot_x
   047D BD 01 52      [ 8]  249 	jsr	__Dot_d
                            250 ;----- asm -----
                            251 ; 98 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            252 	; #ENR#[75]    Moveto_d(-dot_y, -dot_x);
                            253 ;--- end asm ---
   0480 F6 C8 84      [ 5]  254 	ldb	_dot_x	;, dot_x
   0483 50            [ 2]  255 	negb	;
   0484 E7 63         [ 5]  256 	stb	3,s	;,
   0486 F6 C8 85      [ 5]  257 	ldb	_dot_y	;, dot_y
   0489 50            [ 2]  258 	negb	;
   048A 34 04         [ 6]  259 	pshs	b	;
   048C E6 64         [ 5]  260 	ldb	4,s	;,
   048E BD 02 F9      [ 8]  261 	jsr	__Moveto_d
                            262 ;----- asm -----
                            263 ; 102 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            264 	; #ENR#[78]    if (button_1_1_held() && player1_x > -BOUND_X) {
                            265 ;--- end asm ---
   0491 F6 C8 0F      [ 5]  266 	ldb	_Vec_Btn_State	;, Vec_Btn_State
   0494 E7 68         [ 5]  267 	stb	8,s	;, D.3132
   0496 32 64         [ 5]  268 	leas	4,s	;,,
   0498 C5 01         [ 2]  269 	bitb	#1	;,
   049A 27 0C         [ 3]  270 	beq	L6	;
   049C F6 C8 80      [ 5]  271 	ldb	_player1_x	; player1_x.3, player1_x
   049F C1 9D         [ 2]  272 	cmpb	#-99	;cmpqi:	; player1_x.3,
   04A1 2D 05         [ 3]  273 	blt	L6	;
                            274 ;----- asm -----
                            275 ; 104 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            276 	; #ENR#[79]      player1_x -= PADDLE_SPEED;
                            277 ;--- end asm ---
   04A3 CB FD         [ 2]  278 	addb	#-3	; player1_x.3,
   04A5 F7 C8 80      [ 5]  279 	stb	_player1_x	; player1_x.3, player1_x
   04A8                     280 L6:
                            281 ;----- asm -----
                            282 ; 107 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            283 	; #ENR#[81]    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
                            284 ;--- end asm ---
   04A8 C6 02         [ 2]  285 	ldb	#2	; tmp45,
   04AA E4 64         [ 5]  286 	andb	4,s	; tmp45, D.3132
   04AC 27 0C         [ 3]  287 	beq	L7	;
   04AE F6 C8 80      [ 5]  288 	ldb	_player1_x	; player1_x.51, player1_x
   04B1 C1 3F         [ 2]  289 	cmpb	#63	;cmpqi:	; player1_x.51,
   04B3 2E 05         [ 3]  290 	bgt	L7	;
                            291 ;----- asm -----
                            292 ; 109 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            293 	; #ENR#[82]      player1_x += PADDLE_SPEED;
                            294 ;--- end asm ---
   04B5 CB 03         [ 2]  295 	addb	#3	; player1_x.51,
   04B7 F7 C8 80      [ 5]  296 	stb	_player1_x	; player1_x.51, player1_x
   04BA                     297 L7:
                            298 ;----- asm -----
                            299 ; 112 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            300 	; #ENR#[84]    if (button_1_3_held() && player2_x > - BOUND_X) {
                            301 ;--- end asm ---
   04BA C6 04         [ 2]  302 	ldb	#4	; tmp46,
   04BC E4 64         [ 5]  303 	andb	4,s	; tmp46, D.3132
   04BE 27 0C         [ 3]  304 	beq	L8	;
   04C0 F6 C8 82      [ 5]  305 	ldb	_player2_x	; player2_x.6, player2_x
   04C3 C1 9D         [ 2]  306 	cmpb	#-99	;cmpqi:	; player2_x.6,
   04C5 2D 05         [ 3]  307 	blt	L8	;
                            308 ;----- asm -----
                            309 ; 114 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            310 	; #ENR#[85]      player2_x -= PADDLE_SPEED;
                            311 ;--- end asm ---
   04C7 CB FD         [ 2]  312 	addb	#-3	; player2_x.6,
   04C9 F7 C8 82      [ 5]  313 	stb	_player2_x	; player2_x.6, player2_x
   04CC                     314 L8:
                            315 ;----- asm -----
                            316 ; 117 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            317 	; #ENR#[87]    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
                            318 ;--- end asm ---
   04CC C6 08         [ 2]  319 	ldb	#8	;,
   04CE E4 64         [ 5]  320 	andb	4,s	;, D.3132
   04D0 27 0C         [ 3]  321 	beq	L9	;
   04D2 F6 C8 82      [ 5]  322 	ldb	_player2_x	; player2_x.52, player2_x
   04D5 C1 3F         [ 2]  323 	cmpb	#63	;cmpqi:	; player2_x.52,
   04D7 2E 05         [ 3]  324 	bgt	L9	;
                            325 ;----- asm -----
                            326 ; 119 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            327 	; #ENR#[88]      player2_x += PADDLE_SPEED;
                            328 ;--- end asm ---
   04D9 CB 03         [ 2]  329 	addb	#3	; player2_x.52,
   04DB F7 C8 82      [ 5]  330 	stb	_player2_x	; player2_x.52, player2_x
   04DE                     331 L9:
                            332 ;----- asm -----
                            333 ; 124 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            334 	; #ENR#[92]    Moveto_d(player1_y, player1_x);
                            335 ;--- end asm ---
   04DE F6 C8 81      [ 5]  336 	ldb	_player1_y	;, player1_y
   04E1 E7 E2         [ 6]  337 	stb	,-s	;,
   04E3 F6 C8 80      [ 5]  338 	ldb	_player1_x	;, player1_x
   04E6 BD 02 F9      [ 8]  339 	jsr	__Moveto_d
                            340 ;----- asm -----
                            341 ; 126 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            342 	; #ENR#[93]    Draw_Line_d(0, PADDLE_LENGTH);
                            343 ;--- end asm ---
   04E9 6F E2         [ 8]  344 	clr	,-s	;
   04EB C6 24         [ 2]  345 	ldb	#36	;,
   04ED BD 01 C3      [ 8]  346 	jsr	__Draw_Line_d
                            347 ;----- asm -----
                            348 ; 128 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            349 	; #ENR#[94]    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);
                            350 ;--- end asm ---
   04F0 C6 DC         [ 2]  351 	ldb	#-36	; tmp49,
   04F2 F0 C8 80      [ 5]  352 	subb	_player1_x	; tmp49, player1_x
   04F5 E7 62         [ 5]  353 	stb	2,s	; tmp49,
   04F7 F6 C8 81      [ 5]  354 	ldb	_player1_y	;, player1_y
   04FA 50            [ 2]  355 	negb	;
   04FB 34 04         [ 6]  356 	pshs	b	;
   04FD E6 63         [ 5]  357 	ldb	3,s	;,
   04FF BD 02 F9      [ 8]  358 	jsr	__Moveto_d
                            359 ;----- asm -----
                            360 ; 132 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            361 	; #ENR#[97]    Moveto_d(player2_y, player2_x);
                            362 ;--- end asm ---
   0502 F6 C8 83      [ 5]  363 	ldb	_player2_y	;, player2_y
   0505 E7 E2         [ 6]  364 	stb	,-s	;,
   0507 F6 C8 82      [ 5]  365 	ldb	_player2_x	;, player2_x
   050A BD 02 F9      [ 8]  366 	jsr	__Moveto_d
                            367 ;----- asm -----
                            368 ; 134 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            369 	; #ENR#[98]    Draw_Line_d(0, PADDLE_LENGTH);
                            370 ;--- end asm ---
   050D 6F E2         [ 8]  371 	clr	,-s	;
   050F C6 24         [ 2]  372 	ldb	#36	;,
   0511 BD 01 C3      [ 8]  373 	jsr	__Draw_Line_d
                            374 ;----- asm -----
                            375 ; 138 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            376 	; #ENR#[101]    dot_x = dot_x + dot_x_vel;
                            377 ;--- end asm ---
   0514 F6 C8 86      [ 5]  378 	ldb	_dot_x_vel	;, dot_x_vel
   0517 FB C8 84      [ 5]  379 	addb	_dot_x	;, dot_x
   051A E7 66         [ 5]  380 	stb	6,s	;, dot_x.12
   051C F7 C8 84      [ 5]  381 	stb	_dot_x	;, dot_x
                            382 ;----- asm -----
                            383 ; 140 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            384 	; #ENR#[102]    dot_y = dot_y + dot_y_vel;
                            385 ;--- end asm ---
   051F F6 C8 87      [ 5]  386 	ldb	_dot_y_vel	;, dot_y_vel
   0522 E7 67         [ 5]  387 	stb	7,s	;, dot_y_vel.13
   0524 FB C8 85      [ 5]  388 	addb	_dot_y	;, dot_y
   0527 E7 68         [ 5]  389 	stb	8,s	;, dot_y.14
   0529 F7 C8 85      [ 5]  390 	stb	_dot_y	;, dot_y
                            391 ;----- asm -----
                            392 ; 144 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            393 	; #ENR#[105]    if (dot_y > BOUND_Y) {
                            394 ;--- end asm ---
   052C 32 65         [ 5]  395 	leas	5,s	;,,
   052E C1 78         [ 2]  396 	cmpb	#120	;cmpqi:	;,
   0530 10 2F FE D3   [ 6]  397 	lble	L10	;
                            398 ;----- asm -----
                            399 ; 146 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            400 	; #ENR#[106]      Add_Score_a(1, player2_score_str);
                            401 ;--- end asm ---
   0534 8E C8 8F      [ 3]  402 	ldx	#_player2_score_str	;,
   0537 C6 01         [ 2]  403 	ldb	#1	;,
   0539 BD 02 7D      [ 8]  404 	jsr	__Add_Score_a
                            405 ;----- asm -----
                            406 ; 148 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            407 	; #ENR#[107]      reset_round();
                            408 ;--- end asm ---
   053C                     409 L19:
                            410 ;----- asm -----
                            411 ; 65 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            412 	; #ENR#[52]  dot_x = 0;
                            413 ;--- end asm ---
   053C 7F C8 84      [ 7]  414 	clr	_dot_x	; dot_x
                            415 ;----- asm -----
                            416 ; 67 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            417 	; #ENR#[53]  dot_y = 0;
                            418 ;--- end asm ---
   053F 7F C8 85      [ 7]  419 	clr	_dot_y	; dot_y
                            420 ;----- asm -----
                            421 ; 69 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            422 	; #ENR#[54]  dot_x_vel = 2;
                            423 ;--- end asm ---
   0542 C6 02         [ 2]  424 	ldb	#2	;,
   0544 F7 C8 86      [ 5]  425 	stb	_dot_x_vel	;, dot_x_vel
                            426 ;----- asm -----
                            427 ; 71 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            428 	; #ENR#[55]  dot_y_vel = 2;
                            429 ;--- end asm ---
   0547 F7 C8 87      [ 5]  430 	stb	_dot_y_vel	;, dot_y_vel
   054A 16 FE FA      [ 5]  431 	lbra	L11	;
   054D                     432 L13:
   054D F6 C8 82      [ 5]  433 	ldb	_player2_x	; player2_x.61, player2_x
   0550 E1 61         [ 5]  434 	cmpb	1,s	;cmpqi:(R)	; player2_x.61, dot_x.12
   0552 10 2E FE F1   [ 6]  435 	lbgt	L11	;
   0556 CB 24         [ 2]  436 	addb	#36	; player2_x.61,
   0558 E1 61         [ 5]  437 	cmpb	1,s	;cmpqi:(R)	; player2_x.61, dot_x.12
   055A 10 2D FE E9   [ 6]  438 	lblt	L11	;
   055E F6 C8 83      [ 5]  439 	ldb	_player2_y	;, player2_y
   0561 E7 66         [ 5]  440 	stb	6,s	;, player2_y.62
   0563 EB 62         [ 5]  441 	addb	2,s	; tmp56, dot_y_vel.13
   0565 E1 63         [ 5]  442 	cmpb	3,s	;cmpqi:(R)	; tmp56, dot_y.14
   0567 10 2E FE DC   [ 6]  443 	lbgt	L11	;
   056B E6 66         [ 5]  444 	ldb	6,s	; tmp57, player2_y.62
   056D E0 62         [ 5]  445 	subb	2,s	; tmp57, dot_y_vel.13
   056F E1 63         [ 5]  446 	cmpb	3,s	;cmpqi:(R)	; tmp57, dot_y.14
   0571 10 2D FE D2   [ 6]  447 	lblt	L11	;
                            448 ;----- asm -----
                            449 ; 161 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            450 	; #ENR#[115]      dot_y_vel = -dot_y_vel;
                            451 ;--- end asm ---
   0575 E6 62         [ 5]  452 	ldb	2,s	; dot_y_vel.63, dot_y_vel.13
   0577 50            [ 2]  453 	negb	; dot_y_vel.63
   0578 F7 C8 87      [ 5]  454 	stb	_dot_y_vel	; dot_y_vel.63, dot_y_vel
                            455 ;----- asm -----
                            456 ; 163 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            457 	; #ENR#[116]      dot_y = dot_y + 2 * dot_y_vel;
                            458 ;--- end asm ---
   057B 58            [ 2]  459 	aslb	; dot_y_vel.63
   057C EB 63         [ 5]  460 	addb	3,s	; dot_y_vel.63, dot_y.14
   057E F7 C8 85      [ 5]  461 	stb	_dot_y	; dot_y_vel.63, dot_y
   0581 16 FE C3      [ 5]  462 	lbra	L11	;
   0584                     463 L21:
                            464 ;----- asm -----
                            465 ; 151 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            466 	; #ENR#[109]      Add_Score_a(1, player1_score_str);
                            467 ;--- end asm ---
   0584 8E C8 88      [ 3]  468 	ldx	#_player1_score_str	;,
   0587 C6 01         [ 2]  469 	ldb	#1	;,
   0589 BD 02 7D      [ 8]  470 	jsr	__Add_Score_a
                            471 ;----- asm -----
                            472 ; 153 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            473 	; #ENR#[110]      reset_round();
                            474 ;--- end asm ---
   058C 16 FF AD      [ 5]  475 	lbra	L19	;
   058F                     476 L22:
                            477 ;----- asm -----
                            478 ; 170 "C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.enr.c" 1
                            479 	; #ENR#[121]      dot_x_vel = -dot_x_vel;
                            480 ;--- end asm ---
   058F 70 C8 86      [ 7]  481 	neg	_dot_x_vel	; dot_x_vel
   0592 16 FE BD      [ 5]  482 	lbra	L18	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  4 A$main$100         000C GR  |   4 A$main$101         000F GR
  4 A$main$106         0012 GR  |   4 A$main$107         0015 GR
  4 A$main$112         0018 GR  |   4 A$main$113         001A GR
  4 A$main$118         001D GR  |   4 A$main$119         0020 GR
  4 A$main$126         0021 GR  |   4 A$main$131         0024 GR
  4 A$main$136         0027 GR  |   4 A$main$137         0029 GR
  4 A$main$142         002C GR  |   4 A$main$143         002F GR
  4 A$main$146         0030 GR  |   4 A$main$151         0032 GR
  4 A$main$156         0035 GR  |   4 A$main$158         0038 GR
  4 A$main$159         003A GR  |   4 A$main$160         003C GR
  4 A$main$161         0040 GR  |   4 A$main$162         0043 GR
  4 A$main$163         0045 GR  |   4 A$main$164         0049 GR
  4 A$main$165         004B GR  |   4 A$main$166         004D GR
  4 A$main$167         0051 GR  |   4 A$main$168         0054 GR
  4 A$main$169         0056 GR  |   4 A$main$170         0058 GR
  4 A$main$171         005A GR  |   4 A$main$172         005E GR
  4 A$main$173         0060 GR  |   4 A$main$174         0062 GR
  4 A$main$175         0064 GR  |   4 A$main$176         0066 GR
  4 A$main$177         0068 GR  |   4 A$main$182         006C GR
  4 A$main$183         006E GR  |   4 A$main$184         006F GR
  4 A$main$189         0072 GR  |   4 A$main$190         0073 GR
  4 A$main$191         0075 GR  |   4 A$main$197         0078 GR
  4 A$main$198         007B GR  |   4 A$main$199         007D GR
  4 A$main$200         007F GR  |   4 A$main$208         0083 GR
  4 A$main$213         0086 GR  |   4 A$main$218         0089 GR
  4 A$main$219         008B GR  |   4 A$main$224         008E GR
  4 A$main$225         0090 GR  |   4 A$main$230         0093 GR
  4 A$main$231         0095 GR  |   4 A$main$232         0098 GR
  4 A$main$233         0099 GR  |   4 A$main$238         009C GR
  4 A$main$239         009E GR  |   4 A$main$240         00A0 GR
  4 A$main$241         00A3 GR  |   4 A$main$246         00A6 GR
  4 A$main$247         00A9 GR  |   4 A$main$248         00AB GR
  4 A$main$249         00AE GR  |   4 A$main$254         00B1 GR
  4 A$main$255         00B4 GR  |   4 A$main$256         00B5 GR
  4 A$main$257         00B7 GR  |   4 A$main$258         00BA GR
  4 A$main$259         00BB GR  |   4 A$main$260         00BD GR
  4 A$main$261         00BF GR  |   4 A$main$266         00C2 GR
  4 A$main$267         00C5 GR  |   4 A$main$268         00C7 GR
  4 A$main$269         00C9 GR  |   4 A$main$270         00CB GR
  4 A$main$271         00CD GR  |   4 A$main$272         00D0 GR
  4 A$main$273         00D2 GR  |   4 A$main$278         00D4 GR
  4 A$main$279         00D6 GR  |   4 A$main$285         00D9 GR
  4 A$main$286         00DB GR  |   4 A$main$287         00DD GR
  4 A$main$288         00DF GR  |   4 A$main$289         00E2 GR
  4 A$main$290         00E4 GR  |   4 A$main$295         00E6 GR
  4 A$main$296         00E8 GR  |   4 A$main$302         00EB GR
  4 A$main$303         00ED GR  |   4 A$main$304         00EF GR
  4 A$main$305         00F1 GR  |   4 A$main$306         00F4 GR
  4 A$main$307         00F6 GR  |   4 A$main$312         00F8 GR
  4 A$main$313         00FA GR  |   4 A$main$319         00FD GR
  4 A$main$320         00FF GR  |   4 A$main$321         0101 GR
  4 A$main$322         0103 GR  |   4 A$main$323         0106 GR
  4 A$main$324         0108 GR  |   4 A$main$329         010A GR
  4 A$main$330         010C GR  |   4 A$main$336         010F GR
  4 A$main$337         0112 GR  |   4 A$main$338         0114 GR
  4 A$main$339         0117 GR  |   4 A$main$344         011A GR
  4 A$main$345         011C GR  |   4 A$main$346         011E GR
  4 A$main$351         0121 GR  |   4 A$main$352         0123 GR
  4 A$main$353         0126 GR  |   4 A$main$354         0128 GR
  4 A$main$355         012B GR  |   4 A$main$356         012C GR
  4 A$main$357         012E GR  |   4 A$main$358         0130 GR
  4 A$main$363         0133 GR  |   4 A$main$364         0136 GR
  4 A$main$365         0138 GR  |   4 A$main$366         013B GR
  4 A$main$371         013E GR  |   4 A$main$372         0140 GR
  4 A$main$373         0142 GR  |   4 A$main$378         0145 GR
  4 A$main$379         0148 GR  |   4 A$main$380         014B GR
  4 A$main$381         014D GR  |   4 A$main$386         0150 GR
  4 A$main$387         0153 GR  |   4 A$main$388         0155 GR
  4 A$main$389         0158 GR  |   4 A$main$390         015A GR
  4 A$main$395         015D GR  |   4 A$main$396         015F GR
  4 A$main$397         0161 GR  |   4 A$main$402         0165 GR
  4 A$main$403         0168 GR  |   4 A$main$404         016A GR
  4 A$main$414         016D GR  |   4 A$main$419         0170 GR
  4 A$main$424         0173 GR  |   4 A$main$425         0175 GR
  4 A$main$430         0178 GR  |   4 A$main$431         017B GR
  4 A$main$433         017E GR  |   4 A$main$434         0181 GR
  4 A$main$435         0183 GR  |   4 A$main$436         0187 GR
  4 A$main$437         0189 GR  |   4 A$main$438         018B GR
  4 A$main$439         018F GR  |   4 A$main$440         0192 GR
  4 A$main$441         0194 GR  |   4 A$main$442         0196 GR
  4 A$main$443         0198 GR  |   4 A$main$444         019C GR
  4 A$main$445         019E GR  |   4 A$main$446         01A0 GR
  4 A$main$447         01A2 GR  |   4 A$main$452         01A6 GR
  4 A$main$453         01A8 GR  |   4 A$main$454         01A9 GR
  4 A$main$459         01AC GR  |   4 A$main$460         01AD GR
  4 A$main$461         01AF GR  |   4 A$main$462         01B2 GR
  4 A$main$468         01B5 GR  |   4 A$main$469         01B8 GR
  4 A$main$470         01BA GR  |   4 A$main$475         01BD GR
  4 A$main$481         01C0 GR  |   4 A$main$482         01C3 GR
  4 A$main$80          0000 GR  |   4 A$main$85          0003 GR
  4 A$main$90          0006 GR  |   4 A$main$95          0009 GR
  4 L10                0038 R   |   4 L11                0078 R
  4 L13                017E R   |   4 L18                0083 R
  4 L19                016D R   |   4 L21                01B5 R
  4 L22                01C0 R   |   4 L6                 00D9 R
  4 L7                 00EB R   |   4 L8                 00FD R
  4 L9                 010F R   |     _VIA_t1_cnt_lo     **** GX
    _Vec_Btn_State     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_2     **** GX
    _Vec_Joy_Mux_2     **** GX  |     __Add_Score_a      **** GX
    __Dot_d            **** GX  |     __Draw_Line_d      **** GX
    __Intensity_a      **** GX  |     __Moveto_d         **** GX
    __Print_Str_d      **** GX  |     ___Clear_Score     **** GX
    ___Read_Btns       **** GX  |     ___Wait_Recal      **** GX
  2 _dot_x             0004 GR  |   2 _dot_x_vel         0006 GR
  2 _dot_y             0005 GR  |   2 _dot_y_vel         0007 GR
  4 _main              0030 GR  |   3 _player1_score     0000 GR
  2 _player1_x         0000 GR  |   2 _player1_y         0001 GR
  3 _player2_score     0007 GR  |   2 _player2_x         0002 GR
  2 _player2_y         0003 GR  |   4 _reset_round       0021 GR
  4 _setup             0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size    8   flags  100
   3 .bss             size    E   flags    0
   4 .text            size  1C6   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

