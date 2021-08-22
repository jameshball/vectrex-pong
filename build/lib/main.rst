                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	main.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -fno-gcse -fverbose-asm -W -Wall -Wextra -Wconversion
                             10 ; -Werror -fomit-frame-pointer -fno-toplevel-reorder -mint8
                             11 ; -msoft-reg-count=0 -std=gnu99 -fno-time-report
                             12 ; -IC:\Vide2.5.1.w64\Vide.w64\C\PeerC\vectrex\include -O3
                             13 ; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; -IC:\Vide2.5.1.w64\Vide.w64\vectrex-pong\include
                             15 ; C:\Vide2.5.1.w64\Vide.w64\vectrex-pong\source\main.c
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
                             43 	.globl	_current_song
   C881                      44 _current_song:	.blkb	2
                             45 	.globl	_player1_x
   C883                      46 _player1_x:	.blkb	1
                             47 	.globl	_player1_y
   C884                      48 _player1_y:	.blkb	1
                             49 	.globl	_player2_x
   C885                      50 _player2_x:	.blkb	1
                             51 	.globl	_player2_y
   C886                      52 _player2_y:	.blkb	1
                             53 	.globl	_player1_score_str
   C887                      54 _player1_score_str:	.blkb	7
                             55 	.globl	_player2_score_str
   C88E                      56 _player2_score_str:	.blkb	7
                             57 	.globl	_dot_x
   C895                      58 _dot_x:	.blkb	1
                             59 	.globl	_dot_y
   C896                      60 _dot_y:	.blkb	1
                             61 	.globl	_dot_x_vel
   C897                      62 _dot_x_vel:	.blkb	1
                             63 	.globl	_dot_y_vel
   C898                      64 _dot_y_vel:	.blkb	1
                             65 	.globl	_default_velocity
                             66 	.area	.data
   C880                      67 _default_velocity:
   C880 02                   68 	.byte	2
                             69 	.area	.bss
                             70 	.globl	_dot_brightness
   C899                      71 _dot_brightness:	.blkb	1
                             72 	.globl	_brightness_fade_in
   C89A                      73 _brightness_fade_in:	.blkb	1
                             74 	.globl	_dot_ticks
   C89B                      75 _dot_ticks:	.blkb	1
                             76 	.globl	_flashes
   C89C                      77 _flashes:	.blkb	1
                             78 	.area	.text
                             79 	.globl	_reset_round
   03CF                      80 _reset_round:
   03CF 7F C8 95      [ 7]   81 	clr	_dot_x	; dot_x
   03D2 7F C8 96      [ 7]   82 	clr	_dot_y	; dot_y
   03D5 F6 C8 80      [ 5]   83 	ldb	_default_velocity	; default_velocity.4, default_velocity
   03D8 50            [ 2]   84 	negb	; default_velocity.4
   03D9 F7 C8 80      [ 5]   85 	stb	_default_velocity	; default_velocity.4, default_velocity
   03DC F7 C8 97      [ 5]   86 	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
   03DF F7 C8 98      [ 5]   87 	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
   03E2 7F C8 9B      [ 7]   88 	clr	_dot_ticks	; dot_ticks
   03E5 7F C8 9C      [ 7]   89 	clr	_flashes	; flashes
   03E8 7F C8 99      [ 7]   90 	clr	_dot_brightness	; dot_brightness
   03EB C6 01         [ 2]   91 	ldb	#1	;,
   03ED F7 C8 9A      [ 5]   92 	stb	_brightness_fade_in	;, brightness_fade_in
   03F0 39            [ 5]   93 	rts
                             94 	.globl	_setup
   03F1                      95 _setup:
   03F1 7F C8 1F      [ 7]   96 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
   03F4 7F C8 20      [ 7]   97 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
   03F7 7F C8 21      [ 7]   98 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
   03FA 7F C8 22      [ 7]   99 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
   03FD C6 01         [ 2]  100 	ldb	#1	;,
   03FF F7 C8 56      [ 5]  101 	stb	_Vec_Music_Flag	;, Vec_Music_Flag
   0402 8E FF 26      [ 3]  102 	ldx	#_Vec_Music_9	;,
   0405 BF C8 81      [ 6]  103 	stx	_current_song	;, current_song
   0408 8E C8 87      [ 3]  104 	ldx	#_player1_score_str	;,
   040B BD F8 4F      [ 8]  105 	jsr	___Clear_Score
   040E 8E C8 8E      [ 3]  106 	ldx	#_player2_score_str	;,
   0411 BD F8 4F      [ 8]  107 	jsr	___Clear_Score
   0414 C6 80         [ 2]  108 	ldb	#-128	;,
   0416 F7 C8 8D      [ 5]  109 	stb	_player1_score_str+6	;, player1_score_str
   0419 F7 C8 94      [ 5]  110 	stb	_player2_score_str+6	;, player2_score_str
   041C C6 EE         [ 2]  111 	ldb	#-18	;,
   041E F7 C8 83      [ 5]  112 	stb	_player1_x	;, player1_x
   0421 C6 64         [ 2]  113 	ldb	#100	;,
   0423 F7 C8 84      [ 5]  114 	stb	_player1_y	;, player1_y
   0426 C6 EE         [ 2]  115 	ldb	#-18	;,
   0428 F7 C8 85      [ 5]  116 	stb	_player2_x	;, player2_x
   042B C6 9C         [ 2]  117 	ldb	#-100	;,
   042D F7 C8 86      [ 5]  118 	stb	_player2_y	;, player2_y
   0430 7F C8 95      [ 7]  119 	clr	_dot_x	; dot_x
   0433 7F C8 96      [ 7]  120 	clr	_dot_y	; dot_y
   0436 F6 C8 80      [ 5]  121 	ldb	_default_velocity	; default_velocity.4, default_velocity
   0439 50            [ 2]  122 	negb	; default_velocity.4
   043A F7 C8 80      [ 5]  123 	stb	_default_velocity	; default_velocity.4, default_velocity
   043D F7 C8 97      [ 5]  124 	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
   0440 F7 C8 98      [ 5]  125 	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
   0443 7F C8 9B      [ 7]  126 	clr	_dot_ticks	; dot_ticks
   0446 7F C8 9C      [ 7]  127 	clr	_flashes	; flashes
   0449 7F C8 99      [ 7]  128 	clr	_dot_brightness	; dot_brightness
   044C C6 01         [ 2]  129 	ldb	#1	;,
   044E F7 C8 9A      [ 5]  130 	stb	_brightness_fade_in	;, brightness_fade_in
   0451 39            [ 5]  131 	rts
                            132 	.globl	_main
   0452                     133 _main:
   0452 32 76         [ 5]  134 	leas	-10,s	;,,
   0454 7F C8 1F      [ 7]  135 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
   0457 7F C8 20      [ 7]  136 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
   045A 7F C8 21      [ 7]  137 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
   045D 7F C8 22      [ 7]  138 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
   0460 C6 01         [ 2]  139 	ldb	#1	;,
   0462 F7 C8 56      [ 5]  140 	stb	_Vec_Music_Flag	;, Vec_Music_Flag
   0465 8E FF 26      [ 3]  141 	ldx	#_Vec_Music_9	;,
   0468 BF C8 81      [ 6]  142 	stx	_current_song	;, current_song
   046B 8E C8 87      [ 3]  143 	ldx	#_player1_score_str	;,
   046E BD F8 4F      [ 8]  144 	jsr	___Clear_Score
   0471 8E C8 8E      [ 3]  145 	ldx	#_player2_score_str	;,
   0474 BD F8 4F      [ 8]  146 	jsr	___Clear_Score
   0477 C6 80         [ 2]  147 	ldb	#-128	;,
   0479 F7 C8 8D      [ 5]  148 	stb	_player1_score_str+6	;, player1_score_str
   047C F7 C8 94      [ 5]  149 	stb	_player2_score_str+6	;, player2_score_str
   047F C6 EE         [ 2]  150 	ldb	#-18	;,
   0481 F7 C8 83      [ 5]  151 	stb	_player1_x	;, player1_x
   0484 C6 64         [ 2]  152 	ldb	#100	;,
   0486 F7 C8 84      [ 5]  153 	stb	_player1_y	;, player1_y
   0489 C6 EE         [ 2]  154 	ldb	#-18	;,
   048B F7 C8 85      [ 5]  155 	stb	_player2_x	;, player2_x
   048E C6 9C         [ 2]  156 	ldb	#-100	;,
   0490 F7 C8 86      [ 5]  157 	stb	_player2_y	;, player2_y
   0493 7F C8 95      [ 7]  158 	clr	_dot_x	; dot_x
   0496 7F C8 96      [ 7]  159 	clr	_dot_y	; dot_y
   0499 F6 C8 80      [ 5]  160 	ldb	_default_velocity	; default_velocity.4, default_velocity
   049C 50            [ 2]  161 	negb	; default_velocity.4
   049D F7 C8 80      [ 5]  162 	stb	_default_velocity	; default_velocity.4, default_velocity
   04A0 F7 C8 97      [ 5]  163 	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
   04A3 F7 C8 98      [ 5]  164 	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
   04A6 7F C8 9B      [ 7]  165 	clr	_dot_ticks	; dot_ticks
   04A9 7F C8 9C      [ 7]  166 	clr	_flashes	; flashes
   04AC 7F C8 99      [ 7]  167 	clr	_dot_brightness	; dot_brightness
   04AF C6 01         [ 2]  168 	ldb	#1	;,
   04B1 F7 C8 9A      [ 5]  169 	stb	_brightness_fade_in	;, brightness_fade_in
   04B4 16 01 14      [ 5]  170 	lbra	L20	;
   04B7                     171 L6:
   04B7 7D C8 98      [ 7]  172 	tst	_dot_y_vel	; dot_y_vel
   04BA 10 2F 01 E0   [ 6]  173 	lble	L12	;
   04BE C6 12         [ 2]  174 	ldb	#18	;,
   04C0 E7 E2         [ 6]  175 	stb	,-s	;,
   04C2 5F            [ 2]  176 	clrb	;
   04C3 BD 02 F9      [ 8]  177 	jsr	__Moveto_d
   04C6 C6 12         [ 2]  178 	ldb	#18	;,
   04C8 E7 E2         [ 6]  179 	stb	,-s	;,
   04CA 5F            [ 2]  180 	clrb	;
   04CB BD 01 C3      [ 8]  181 	jsr	__Draw_Line_d
   04CE C6 F7         [ 2]  182 	ldb	#-9	;,
   04D0 E7 E2         [ 6]  183 	stb	,-s	;,
   04D2 BD 01 C3      [ 8]  184 	jsr	__Draw_Line_d
   04D5 C6 09         [ 2]  185 	ldb	#9	;,
   04D7 E7 E2         [ 6]  186 	stb	,-s	;,
   04D9 BD 02 F9      [ 8]  187 	jsr	__Moveto_d
   04DC C6 F7         [ 2]  188 	ldb	#-9	;,
   04DE E7 E2         [ 6]  189 	stb	,-s	;,
   04E0 C6 09         [ 2]  190 	ldb	#9	;,
   04E2 BD 01 C3      [ 8]  191 	jsr	__Draw_Line_d
   04E5 32 65         [ 5]  192 	leas	5,s	;,,
   04E7                     193 L13:
   04E7 7C C8 9B      [ 7]  194 	inc	_dot_ticks	; dot_ticks
   04EA F6 C8 9B      [ 5]  195 	ldb	_dot_ticks	; dot_ticks.35, dot_ticks
   04ED C1 09         [ 2]  196 	cmpb	#9	;cmpqi:	; dot_ticks.35,
   04EF 2F 0D         [ 3]  197 	ble	L8	;
   04F1 7D C8 99      [ 7]  198 	tst	_dot_brightness	; dot_brightness
   04F4 10 27 01 D4   [ 6]  199 	lbeq	L14	;
   04F8 7F C8 99      [ 7]  200 	clr	_dot_brightness	; dot_brightness
   04FB                     201 L15:
   04FB 7F C8 9B      [ 7]  202 	clr	_dot_ticks	; dot_ticks
   04FE                     203 L8:
   04FE BD F3 54      [ 8]  204 	jsr	___Reset0Ref
   0501 C6 7F         [ 2]  205 	ldb	#127	;,
   0503 BD 03 03      [ 8]  206 	jsr	__Intensity_a
   0506 C6 7E         [ 2]  207 	ldb	#126	;,
   0508 E7 E2         [ 6]  208 	stb	,-s	;,
   050A CB 06         [ 2]  209 	addb	#6	;,
   050C BD 02 F9      [ 8]  210 	jsr	__Moveto_d
   050F C6 81         [ 2]  211 	ldb	#-127	;,
   0511 E7 E2         [ 6]  212 	stb	,-s	;,
   0513 5F            [ 2]  213 	clrb	;
   0514 BD 01 C3      [ 8]  214 	jsr	__Draw_Line_d
   0517 C6 81         [ 2]  215 	ldb	#-127	;,
   0519 E7 E2         [ 6]  216 	stb	,-s	;,
   051B 5F            [ 2]  217 	clrb	;
   051C BD 01 C3      [ 8]  218 	jsr	__Draw_Line_d
   051F 6F E2         [ 8]  219 	clr	,-s	;
   0521 C6 7C         [ 2]  220 	ldb	#124	;,
   0523 BD 02 F9      [ 8]  221 	jsr	__Moveto_d
   0526 6F E2         [ 8]  222 	clr	,-s	;
   0528 C6 7C         [ 2]  223 	ldb	#124	;,
   052A BD 02 F9      [ 8]  224 	jsr	__Moveto_d
   052D C6 7F         [ 2]  225 	ldb	#127	;,
   052F E7 E2         [ 6]  226 	stb	,-s	;,
   0531 5F            [ 2]  227 	clrb	;
   0532 BD 01 C3      [ 8]  228 	jsr	__Draw_Line_d
   0535 C6 7F         [ 2]  229 	ldb	#127	;,
   0537 E7 E2         [ 6]  230 	stb	,-s	;,
   0539 5F            [ 2]  231 	clrb	;
   053A BD 01 C3      [ 8]  232 	jsr	__Draw_Line_d
   053D C6 82         [ 2]  233 	ldb	#-126	;,
   053F E7 E2         [ 6]  234 	stb	,-s	;,
   0541 CB 02         [ 2]  235 	addb	#2	;,
   0543 BD 02 F9      [ 8]  236 	jsr	__Moveto_d
   0546 F6 C8 0F      [ 5]  237 	ldb	_Vec_Btn_State	;, Vec_Btn_State
   0549 E7 69         [ 5]  238 	stb	9,s	;, D.3305
   054B 32 68         [ 5]  239 	leas	8,s	;,,
   054D C5 01         [ 2]  240 	bitb	#1	;,
   054F 27 0C         [ 3]  241 	beq	L16	;
   0551 F6 C8 83      [ 5]  242 	ldb	_player1_x	; player1_x.8, player1_x
   0554 C1 89         [ 2]  243 	cmpb	#-119	;cmpqi:	; player1_x.8,
   0556 2D 05         [ 3]  244 	blt	L16	;
   0558 CB FD         [ 2]  245 	addb	#-3	; player1_x.8,
   055A F7 C8 83      [ 5]  246 	stb	_player1_x	; player1_x.8, player1_x
   055D                     247 L16:
   055D C6 02         [ 2]  248 	ldb	#2	; tmp64,
   055F E4 61         [ 5]  249 	andb	1,s	; tmp64, D.3305
   0561 27 0C         [ 3]  250 	beq	L17	;
   0563 F6 C8 83      [ 5]  251 	ldb	_player1_x	; player1_x.77, player1_x
   0566 C1 53         [ 2]  252 	cmpb	#83	;cmpqi:	; player1_x.77,
   0568 2E 05         [ 3]  253 	bgt	L17	;
   056A CB 03         [ 2]  254 	addb	#3	; player1_x.77,
   056C F7 C8 83      [ 5]  255 	stb	_player1_x	; player1_x.77, player1_x
   056F                     256 L17:
   056F C6 04         [ 2]  257 	ldb	#4	; tmp65,
   0571 E4 61         [ 5]  258 	andb	1,s	; tmp65, D.3305
   0573 27 0C         [ 3]  259 	beq	L18	;
   0575 F6 C8 85      [ 5]  260 	ldb	_player2_x	; player2_x.11, player2_x
   0578 C1 89         [ 2]  261 	cmpb	#-119	;cmpqi:	; player2_x.11,
   057A 2D 05         [ 3]  262 	blt	L18	;
   057C CB FD         [ 2]  263 	addb	#-3	; player2_x.11,
   057E F7 C8 85      [ 5]  264 	stb	_player2_x	; player2_x.11, player2_x
   0581                     265 L18:
   0581 C6 08         [ 2]  266 	ldb	#8	;,
   0583 E4 61         [ 5]  267 	andb	1,s	;, D.3305
   0585 27 0C         [ 3]  268 	beq	L19	;
   0587 F6 C8 85      [ 5]  269 	ldb	_player2_x	; player2_x.78, player2_x
   058A C1 53         [ 2]  270 	cmpb	#83	;cmpqi:	; player2_x.78,
   058C 2E 05         [ 3]  271 	bgt	L19	;
   058E CB 03         [ 2]  272 	addb	#3	; player2_x.78,
   0590 F7 C8 85      [ 5]  273 	stb	_player2_x	; player2_x.78, player2_x
   0593                     274 L19:
   0593 F6 C8 84      [ 5]  275 	ldb	_player1_y	;, player1_y
   0596 E7 E2         [ 6]  276 	stb	,-s	;,
   0598 F6 C8 83      [ 5]  277 	ldb	_player1_x	;, player1_x
   059B BD 02 F9      [ 8]  278 	jsr	__Moveto_d
   059E 6F E2         [ 8]  279 	clr	,-s	;
   05A0 C6 24         [ 2]  280 	ldb	#36	;,
   05A2 BD 01 C3      [ 8]  281 	jsr	__Draw_Line_d
   05A5 C6 DC         [ 2]  282 	ldb	#-36	; tmp68,
   05A7 F0 C8 83      [ 5]  283 	subb	_player1_x	; tmp68, player1_x
   05AA E7 62         [ 5]  284 	stb	2,s	; tmp68,
   05AC F6 C8 84      [ 5]  285 	ldb	_player1_y	;, player1_y
   05AF 50            [ 2]  286 	negb	;
   05B0 34 04         [ 6]  287 	pshs	b	;
   05B2 E6 63         [ 5]  288 	ldb	3,s	;,
   05B4 BD 02 F9      [ 8]  289 	jsr	__Moveto_d
   05B7 F6 C8 86      [ 5]  290 	ldb	_player2_y	;, player2_y
   05BA E7 E2         [ 6]  291 	stb	,-s	;,
   05BC F6 C8 85      [ 5]  292 	ldb	_player2_x	;, player2_x
   05BF BD 02 F9      [ 8]  293 	jsr	__Moveto_d
   05C2 6F E2         [ 8]  294 	clr	,-s	;
   05C4 C6 24         [ 2]  295 	ldb	#36	;,
   05C6 BD 01 C3      [ 8]  296 	jsr	__Draw_Line_d
   05C9 32 65         [ 5]  297 	leas	5,s	;,,
   05CB                     298 L20:
   05CB BD F1 AF      [ 8]  299 	jsr	___DP_to_C8
   05CE BE C8 81      [ 6]  300 	ldx	_current_song	;, current_song
   05D1 BD 02 C2      [ 8]  301 	jsr	__Init_Music_chk
   05D4 BD F1 92      [ 8]  302 	jsr	___Wait_Recal
   05D7 BD 02 BB      [ 8]  303 	jsr	__Do_Sound
   05DA BD F1 BA      [ 8]  304 	jsr	___Read_Btns
   05DD C6 7F         [ 2]  305 	ldb	#127	;,
   05DF BD 03 03      [ 8]  306 	jsr	__Intensity_a
   05E2 C6 7F         [ 2]  307 	ldb	#127	;,
   05E4 F7 D0 04      [ 5]  308 	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
   05E7 E7 E2         [ 6]  309 	stb	,-s	;,
   05E9 8E C8 87      [ 3]  310 	ldx	#_player1_score_str	;,
   05EC C6 BE         [ 2]  311 	ldb	#-66	;,
   05EE BD 01 6E      [ 8]  312 	jsr	__Print_Str_d
   05F1 C6 80         [ 2]  313 	ldb	#-128	;,
   05F3 E7 E2         [ 6]  314 	stb	,-s	;,
   05F5 8E C8 8E      [ 3]  315 	ldx	#_player2_score_str	;,
   05F8 CB 3E         [ 2]  316 	addb	#62	;,
   05FA BD 01 6E      [ 8]  317 	jsr	__Print_Str_d
   05FD F6 C8 99      [ 5]  318 	ldb	_dot_brightness	;, dot_brightness
   0600 BD 03 03      [ 8]  319 	jsr	__Intensity_a
   0603 F6 C8 96      [ 5]  320 	ldb	_dot_y	;, dot_y
   0606 E7 E2         [ 6]  321 	stb	,-s	;,
   0608 F6 C8 95      [ 5]  322 	ldb	_dot_x	;, dot_x
   060B BD 01 52      [ 8]  323 	jsr	__Dot_d
   060E 32 63         [ 5]  324 	leas	3,s	;,,
   0610 F6 C8 9C      [ 5]  325 	ldb	_flashes	;, flashes
   0613 C1 04         [ 2]  326 	cmpb	#4	;cmpqi:	;,
   0615 10 2F FE 9E   [ 6]  327 	lble	L6	;
   0619 C6 7F         [ 2]  328 	ldb	#127	;,
   061B F7 C8 99      [ 5]  329 	stb	_dot_brightness	;, dot_brightness
   061E F6 C8 97      [ 5]  330 	ldb	_dot_x_vel	;, dot_x_vel
   0621 E7 69         [ 5]  331 	stb	9,s	;, dot_x_vel.19
   0623 FB C8 95      [ 5]  332 	addb	_dot_x	;, dot_x
   0626 E7 68         [ 5]  333 	stb	8,s	;, dot_x.20
   0628 F7 C8 95      [ 5]  334 	stb	_dot_x	;, dot_x
   062B F6 C8 98      [ 5]  335 	ldb	_dot_y_vel	;, dot_y_vel
   062E E7 67         [ 5]  336 	stb	7,s	;, dot_y_vel.22
   0630 FB C8 96      [ 5]  337 	addb	_dot_y	;, dot_y
   0633 E7 66         [ 5]  338 	stb	6,s	;, dot_y.23
   0635 F7 C8 96      [ 5]  339 	stb	_dot_y	;, dot_y
   0638 8E C8 8E      [ 3]  340 	ldx	#_player2_score_str	;,
   063B C1 7A         [ 2]  341 	cmpb	#122	;cmpqi:	;,
   063D 10 2E 00 99   [ 6]  342 	lbgt	L23	;
   0641 C1 86         [ 2]  343 	cmpb	#-122	;cmpqi:	;,
   0643 10 2D 00 90   [ 6]  344 	lblt	L25	;
   0647 F6 C8 83      [ 5]  345 	ldb	_player1_x	;, player1_x
   064A E7 65         [ 5]  346 	stb	5,s	;, player1_x.24
   064C E0 69         [ 5]  347 	subb	9,s	; tmp50, dot_x_vel.19
   064E E1 68         [ 5]  348 	cmpb	8,s	;cmpqi:(R)	; tmp50, dot_x.20
   0650 10 2E 00 AF   [ 6]  349 	lbgt	L10	;
   0654 E6 69         [ 5]  350 	ldb	9,s	;, dot_x_vel.19
   0656 EB 65         [ 5]  351 	addb	5,s	;, player1_x.24
   0658 CB 24         [ 2]  352 	addb	#36	;,
   065A E7 65         [ 5]  353 	stb	5,s	;, player1_x.24
   065C E6 68         [ 5]  354 	ldb	8,s	;, dot_x.20
   065E E1 65         [ 5]  355 	cmpb	5,s	;cmpqi:	;, player1_x.24
   0660 10 2E 00 9F   [ 6]  356 	lbgt	L10	;
   0664 F6 C8 84      [ 5]  357 	ldb	_player1_y	;, player1_y
   0667 E7 64         [ 5]  358 	stb	4,s	;, player1_y.25
   0669 E0 67         [ 5]  359 	subb	7,s	; tmp53, dot_y_vel.22
   066B E1 66         [ 5]  360 	cmpb	6,s	;cmpqi:(R)	; tmp53, dot_y.23
   066D 10 2E 00 92   [ 6]  361 	lbgt	L10	;
   0671 E6 64         [ 5]  362 	ldb	4,s	;, player1_y.25
   0673 EB 67         [ 5]  363 	addb	7,s	;, dot_y_vel.22
   0675 E7 64         [ 5]  364 	stb	4,s	;, player1_y.25
   0677 E6 66         [ 5]  365 	ldb	6,s	;, dot_y.23
   0679 E1 64         [ 5]  366 	cmpb	4,s	;cmpqi:	;, player1_y.25
   067B 10 2E 00 84   [ 6]  367 	lbgt	L10	;
   067F                     368 L22:
   067F E6 67         [ 5]  369 	ldb	7,s	; dot_y_vel.81, dot_y_vel.22
   0681 50            [ 2]  370 	negb	; dot_y_vel.81
   0682 F7 C8 98      [ 5]  371 	stb	_dot_y_vel	; dot_y_vel.81, dot_y_vel
   0685 58            [ 2]  372 	aslb	; dot_y_vel.81
   0686 EB 66         [ 5]  373 	addb	6,s	; dot_y_vel.81, dot_y.23
   0688 F7 C8 96      [ 5]  374 	stb	_dot_y	; dot_y_vel.81, dot_y
   068B                     375 L11:
   068B E6 68         [ 5]  376 	ldb	8,s	;, dot_x.20
   068D CB 78         [ 2]  377 	addb	#120	;,
   068F C1 F0         [ 2]  378 	cmpb	#-16	;cmpqi:	;,
   0691 10 23 FE 69   [ 6]  379 	lbls	L8	;
   0695 E6 69         [ 5]  380 	ldb	9,s	;, dot_x_vel.19
   0697 50            [ 2]  381 	negb	;
   0698 F7 C8 97      [ 5]  382 	stb	_dot_x_vel	;, dot_x_vel
   069B 16 FE 60      [ 5]  383 	lbra	L8	;
   069E                     384 L12:
   069E C6 EE         [ 2]  385 	ldb	#-18	;,
   06A0 E7 E2         [ 6]  386 	stb	,-s	;,
   06A2 5F            [ 2]  387 	clrb	;
   06A3 BD 02 F9      [ 8]  388 	jsr	__Moveto_d
   06A6 C6 EE         [ 2]  389 	ldb	#-18	;,
   06A8 E7 E2         [ 6]  390 	stb	,-s	;,
   06AA 5F            [ 2]  391 	clrb	;
   06AB BD 01 C3      [ 8]  392 	jsr	__Draw_Line_d
   06AE C6 09         [ 2]  393 	ldb	#9	;,
   06B0 E7 E2         [ 6]  394 	stb	,-s	;,
   06B2 C6 F7         [ 2]  395 	ldb	#-9	;,
   06B4 BD 01 C3      [ 8]  396 	jsr	__Draw_Line_d
   06B7 C6 F7         [ 2]  397 	ldb	#-9	;,
   06B9 E7 E2         [ 6]  398 	stb	,-s	;,
   06BB C6 09         [ 2]  399 	ldb	#9	;,
   06BD BD 02 F9      [ 8]  400 	jsr	__Moveto_d
   06C0 C6 09         [ 2]  401 	ldb	#9	;,
   06C2 E7 E2         [ 6]  402 	stb	,-s	;,
   06C4 BD 01 C3      [ 8]  403 	jsr	__Draw_Line_d
   06C7 32 65         [ 5]  404 	leas	5,s	;,,
   06C9 16 FE 1B      [ 5]  405 	lbra	L13	;
   06CC                     406 L14:
   06CC C6 7F         [ 2]  407 	ldb	#127	;,
   06CE F7 C8 99      [ 5]  408 	stb	_dot_brightness	;, dot_brightness
   06D1 7C C8 9C      [ 7]  409 	inc	_flashes	; flashes
   06D4 16 FE 24      [ 5]  410 	lbra	L15	;
   06D7                     411 L25:
   06D7 8E C8 87      [ 3]  412 	ldx	#_player1_score_str	;,
   06DA                     413 L23:
   06DA C6 01         [ 2]  414 	ldb	#1	;,
   06DC BD 02 7D      [ 8]  415 	jsr	__Add_Score_a
   06DF 7F C8 95      [ 7]  416 	clr	_dot_x	; dot_x
   06E2 7F C8 96      [ 7]  417 	clr	_dot_y	; dot_y
   06E5 F6 C8 80      [ 5]  418 	ldb	_default_velocity	; default_velocity.4, default_velocity
   06E8 50            [ 2]  419 	negb	; default_velocity.4
   06E9 F7 C8 80      [ 5]  420 	stb	_default_velocity	; default_velocity.4, default_velocity
   06EC F7 C8 97      [ 5]  421 	stb	_dot_x_vel	; default_velocity.4, dot_x_vel
   06EF F7 C8 98      [ 5]  422 	stb	_dot_y_vel	; default_velocity.4, dot_y_vel
   06F2 7F C8 9B      [ 7]  423 	clr	_dot_ticks	; dot_ticks
   06F5 7F C8 9C      [ 7]  424 	clr	_flashes	; flashes
   06F8 7F C8 99      [ 7]  425 	clr	_dot_brightness	; dot_brightness
   06FB C6 01         [ 2]  426 	ldb	#1	;,
   06FD F7 C8 9A      [ 5]  427 	stb	_brightness_fade_in	;, brightness_fade_in
   0700 16 FD FB      [ 5]  428 	lbra	L8	;
   0703                     429 L10:
   0703 F6 C8 85      [ 5]  430 	ldb	_player2_x	;, player2_x
   0706 E7 63         [ 5]  431 	stb	3,s	;, player2_x.28
   0708 E0 69         [ 5]  432 	subb	9,s	; tmp56, dot_x_vel.19
   070A E1 68         [ 5]  433 	cmpb	8,s	;cmpqi:(R)	; tmp56, dot_x.20
   070C 10 2E FF 7B   [ 6]  434 	lbgt	L11	;
   0710 E6 69         [ 5]  435 	ldb	9,s	;, dot_x_vel.19
   0712 EB 63         [ 5]  436 	addb	3,s	;, player2_x.28
   0714 CB 24         [ 2]  437 	addb	#36	;,
   0716 E7 63         [ 5]  438 	stb	3,s	;, player2_x.28
   0718 E6 68         [ 5]  439 	ldb	8,s	;, dot_x.20
   071A E1 63         [ 5]  440 	cmpb	3,s	;cmpqi:	;, player2_x.28
   071C 10 2E FF 6B   [ 6]  441 	lbgt	L11	;
   0720 F6 C8 86      [ 5]  442 	ldb	_player2_y	;, player2_y
   0723 E7 62         [ 5]  443 	stb	2,s	;, player2_y.29
   0725 EB 67         [ 5]  444 	addb	7,s	; tmp59, dot_y_vel.22
   0727 E1 66         [ 5]  445 	cmpb	6,s	;cmpqi:(R)	; tmp59, dot_y.23
   0729 10 2E FF 5E   [ 6]  446 	lbgt	L11	;
   072D E6 62         [ 5]  447 	ldb	2,s	; tmp60, player2_y.29
   072F E0 67         [ 5]  448 	subb	7,s	; tmp60, dot_y_vel.22
   0731 E1 66         [ 5]  449 	cmpb	6,s	;cmpqi:(R)	; tmp60, dot_y.23
   0733 10 2D FF 54   [ 6]  450 	lblt	L11	;
   0737 16 FF 45      [ 5]  451 	lbra	L22	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  4 A$main$100         002E GR  |   4 A$main$101         0030 GR
  4 A$main$102         0033 GR  |   4 A$main$103         0036 GR
  4 A$main$104         0039 GR  |   4 A$main$105         003C GR
  4 A$main$106         003F GR  |   4 A$main$107         0042 GR
  4 A$main$108         0045 GR  |   4 A$main$109         0047 GR
  4 A$main$110         004A GR  |   4 A$main$111         004D GR
  4 A$main$112         004F GR  |   4 A$main$113         0052 GR
  4 A$main$114         0054 GR  |   4 A$main$115         0057 GR
  4 A$main$116         0059 GR  |   4 A$main$117         005C GR
  4 A$main$118         005E GR  |   4 A$main$119         0061 GR
  4 A$main$120         0064 GR  |   4 A$main$121         0067 GR
  4 A$main$122         006A GR  |   4 A$main$123         006B GR
  4 A$main$124         006E GR  |   4 A$main$125         0071 GR
  4 A$main$126         0074 GR  |   4 A$main$127         0077 GR
  4 A$main$128         007A GR  |   4 A$main$129         007D GR
  4 A$main$130         007F GR  |   4 A$main$131         0082 GR
  4 A$main$134         0083 GR  |   4 A$main$135         0085 GR
  4 A$main$136         0088 GR  |   4 A$main$137         008B GR
  4 A$main$138         008E GR  |   4 A$main$139         0091 GR
  4 A$main$140         0093 GR  |   4 A$main$141         0096 GR
  4 A$main$142         0099 GR  |   4 A$main$143         009C GR
  4 A$main$144         009F GR  |   4 A$main$145         00A2 GR
  4 A$main$146         00A5 GR  |   4 A$main$147         00A8 GR
  4 A$main$148         00AA GR  |   4 A$main$149         00AD GR
  4 A$main$150         00B0 GR  |   4 A$main$151         00B2 GR
  4 A$main$152         00B5 GR  |   4 A$main$153         00B7 GR
  4 A$main$154         00BA GR  |   4 A$main$155         00BC GR
  4 A$main$156         00BF GR  |   4 A$main$157         00C1 GR
  4 A$main$158         00C4 GR  |   4 A$main$159         00C7 GR
  4 A$main$160         00CA GR  |   4 A$main$161         00CD GR
  4 A$main$162         00CE GR  |   4 A$main$163         00D1 GR
  4 A$main$164         00D4 GR  |   4 A$main$165         00D7 GR
  4 A$main$166         00DA GR  |   4 A$main$167         00DD GR
  4 A$main$168         00E0 GR  |   4 A$main$169         00E2 GR
  4 A$main$170         00E5 GR  |   4 A$main$172         00E8 GR
  4 A$main$173         00EB GR  |   4 A$main$174         00EF GR
  4 A$main$175         00F1 GR  |   4 A$main$176         00F3 GR
  4 A$main$177         00F4 GR  |   4 A$main$178         00F7 GR
  4 A$main$179         00F9 GR  |   4 A$main$180         00FB GR
  4 A$main$181         00FC GR  |   4 A$main$182         00FF GR
  4 A$main$183         0101 GR  |   4 A$main$184         0103 GR
  4 A$main$185         0106 GR  |   4 A$main$186         0108 GR
  4 A$main$187         010A GR  |   4 A$main$188         010D GR
  4 A$main$189         010F GR  |   4 A$main$190         0111 GR
  4 A$main$191         0113 GR  |   4 A$main$192         0116 GR
  4 A$main$194         0118 GR  |   4 A$main$195         011B GR
  4 A$main$196         011E GR  |   4 A$main$197         0120 GR
  4 A$main$198         0122 GR  |   4 A$main$199         0125 GR
  4 A$main$200         0129 GR  |   4 A$main$202         012C GR
  4 A$main$204         012F GR  |   4 A$main$205         0132 GR
  4 A$main$206         0134 GR  |   4 A$main$207         0137 GR
  4 A$main$208         0139 GR  |   4 A$main$209         013B GR
  4 A$main$210         013D GR  |   4 A$main$211         0140 GR
  4 A$main$212         0142 GR  |   4 A$main$213         0144 GR
  4 A$main$214         0145 GR  |   4 A$main$215         0148 GR
  4 A$main$216         014A GR  |   4 A$main$217         014C GR
  4 A$main$218         014D GR  |   4 A$main$219         0150 GR
  4 A$main$220         0152 GR  |   4 A$main$221         0154 GR
  4 A$main$222         0157 GR  |   4 A$main$223         0159 GR
  4 A$main$224         015B GR  |   4 A$main$225         015E GR
  4 A$main$226         0160 GR  |   4 A$main$227         0162 GR
  4 A$main$228         0163 GR  |   4 A$main$229         0166 GR
  4 A$main$230         0168 GR  |   4 A$main$231         016A GR
  4 A$main$232         016B GR  |   4 A$main$233         016E GR
  4 A$main$234         0170 GR  |   4 A$main$235         0172 GR
  4 A$main$236         0174 GR  |   4 A$main$237         0177 GR
  4 A$main$238         017A GR  |   4 A$main$239         017C GR
  4 A$main$240         017E GR  |   4 A$main$241         0180 GR
  4 A$main$242         0182 GR  |   4 A$main$243         0185 GR
  4 A$main$244         0187 GR  |   4 A$main$245         0189 GR
  4 A$main$246         018B GR  |   4 A$main$248         018E GR
  4 A$main$249         0190 GR  |   4 A$main$250         0192 GR
  4 A$main$251         0194 GR  |   4 A$main$252         0197 GR
  4 A$main$253         0199 GR  |   4 A$main$254         019B GR
  4 A$main$255         019D GR  |   4 A$main$257         01A0 GR
  4 A$main$258         01A2 GR  |   4 A$main$259         01A4 GR
  4 A$main$260         01A6 GR  |   4 A$main$261         01A9 GR
  4 A$main$262         01AB GR  |   4 A$main$263         01AD GR
  4 A$main$264         01AF GR  |   4 A$main$266         01B2 GR
  4 A$main$267         01B4 GR  |   4 A$main$268         01B6 GR
  4 A$main$269         01B8 GR  |   4 A$main$270         01BB GR
  4 A$main$271         01BD GR  |   4 A$main$272         01BF GR
  4 A$main$273         01C1 GR  |   4 A$main$275         01C4 GR
  4 A$main$276         01C7 GR  |   4 A$main$277         01C9 GR
  4 A$main$278         01CC GR  |   4 A$main$279         01CF GR
  4 A$main$280         01D1 GR  |   4 A$main$281         01D3 GR
  4 A$main$282         01D6 GR  |   4 A$main$283         01D8 GR
  4 A$main$284         01DB GR  |   4 A$main$285         01DD GR
  4 A$main$286         01E0 GR  |   4 A$main$287         01E1 GR
  4 A$main$288         01E3 GR  |   4 A$main$289         01E5 GR
  4 A$main$290         01E8 GR  |   4 A$main$291         01EB GR
  4 A$main$292         01ED GR  |   4 A$main$293         01F0 GR
  4 A$main$294         01F3 GR  |   4 A$main$295         01F5 GR
  4 A$main$296         01F7 GR  |   4 A$main$297         01FA GR
  4 A$main$299         01FC GR  |   4 A$main$300         01FF GR
  4 A$main$301         0202 GR  |   4 A$main$302         0205 GR
  4 A$main$303         0208 GR  |   4 A$main$304         020B GR
  4 A$main$305         020E GR  |   4 A$main$306         0210 GR
  4 A$main$307         0213 GR  |   4 A$main$308         0215 GR
  4 A$main$309         0218 GR  |   4 A$main$310         021A GR
  4 A$main$311         021D GR  |   4 A$main$312         021F GR
  4 A$main$313         0222 GR  |   4 A$main$314         0224 GR
  4 A$main$315         0226 GR  |   4 A$main$316         0229 GR
  4 A$main$317         022B GR  |   4 A$main$318         022E GR
  4 A$main$319         0231 GR  |   4 A$main$320         0234 GR
  4 A$main$321         0237 GR  |   4 A$main$322         0239 GR
  4 A$main$323         023C GR  |   4 A$main$324         023F GR
  4 A$main$325         0241 GR  |   4 A$main$326         0244 GR
  4 A$main$327         0246 GR  |   4 A$main$328         024A GR
  4 A$main$329         024C GR  |   4 A$main$330         024F GR
  4 A$main$331         0252 GR  |   4 A$main$332         0254 GR
  4 A$main$333         0257 GR  |   4 A$main$334         0259 GR
  4 A$main$335         025C GR  |   4 A$main$336         025F GR
  4 A$main$337         0261 GR  |   4 A$main$338         0264 GR
  4 A$main$339         0266 GR  |   4 A$main$340         0269 GR
  4 A$main$341         026C GR  |   4 A$main$342         026E GR
  4 A$main$343         0272 GR  |   4 A$main$344         0274 GR
  4 A$main$345         0278 GR  |   4 A$main$346         027B GR
  4 A$main$347         027D GR  |   4 A$main$348         027F GR
  4 A$main$349         0281 GR  |   4 A$main$350         0285 GR
  4 A$main$351         0287 GR  |   4 A$main$352         0289 GR
  4 A$main$353         028B GR  |   4 A$main$354         028D GR
  4 A$main$355         028F GR  |   4 A$main$356         0291 GR
  4 A$main$357         0295 GR  |   4 A$main$358         0298 GR
  4 A$main$359         029A GR  |   4 A$main$360         029C GR
  4 A$main$361         029E GR  |   4 A$main$362         02A2 GR
  4 A$main$363         02A4 GR  |   4 A$main$364         02A6 GR
  4 A$main$365         02A8 GR  |   4 A$main$366         02AA GR
  4 A$main$367         02AC GR  |   4 A$main$369         02B0 GR
  4 A$main$370         02B2 GR  |   4 A$main$371         02B3 GR
  4 A$main$372         02B6 GR  |   4 A$main$373         02B7 GR
  4 A$main$374         02B9 GR  |   4 A$main$376         02BC GR
  4 A$main$377         02BE GR  |   4 A$main$378         02C0 GR
  4 A$main$379         02C2 GR  |   4 A$main$380         02C6 GR
  4 A$main$381         02C8 GR  |   4 A$main$382         02C9 GR
  4 A$main$383         02CC GR  |   4 A$main$385         02CF GR
  4 A$main$386         02D1 GR  |   4 A$main$387         02D3 GR
  4 A$main$388         02D4 GR  |   4 A$main$389         02D7 GR
  4 A$main$390         02D9 GR  |   4 A$main$391         02DB GR
  4 A$main$392         02DC GR  |   4 A$main$393         02DF GR
  4 A$main$394         02E1 GR  |   4 A$main$395         02E3 GR
  4 A$main$396         02E5 GR  |   4 A$main$397         02E8 GR
  4 A$main$398         02EA GR  |   4 A$main$399         02EC GR
  4 A$main$400         02EE GR  |   4 A$main$401         02F1 GR
  4 A$main$402         02F3 GR  |   4 A$main$403         02F5 GR
  4 A$main$404         02F8 GR  |   4 A$main$405         02FA GR
  4 A$main$407         02FD GR  |   4 A$main$408         02FF GR
  4 A$main$409         0302 GR  |   4 A$main$410         0305 GR
  4 A$main$412         0308 GR  |   4 A$main$414         030B GR
  4 A$main$415         030D GR  |   4 A$main$416         0310 GR
  4 A$main$417         0313 GR  |   4 A$main$418         0316 GR
  4 A$main$419         0319 GR  |   4 A$main$420         031A GR
  4 A$main$421         031D GR  |   4 A$main$422         0320 GR
  4 A$main$423         0323 GR  |   4 A$main$424         0326 GR
  4 A$main$425         0329 GR  |   4 A$main$426         032C GR
  4 A$main$427         032E GR  |   4 A$main$428         0331 GR
  4 A$main$430         0334 GR  |   4 A$main$431         0337 GR
  4 A$main$432         0339 GR  |   4 A$main$433         033B GR
  4 A$main$434         033D GR  |   4 A$main$435         0341 GR
  4 A$main$436         0343 GR  |   4 A$main$437         0345 GR
  4 A$main$438         0347 GR  |   4 A$main$439         0349 GR
  4 A$main$440         034B GR  |   4 A$main$441         034D GR
  4 A$main$442         0351 GR  |   4 A$main$443         0354 GR
  4 A$main$444         0356 GR  |   4 A$main$445         0358 GR
  4 A$main$446         035A GR  |   4 A$main$447         035E GR
  4 A$main$448         0360 GR  |   4 A$main$449         0362 GR
  4 A$main$450         0364 GR  |   4 A$main$451         0368 GR
  4 A$main$81          0000 GR  |   4 A$main$82          0003 GR
  4 A$main$83          0006 GR  |   4 A$main$84          0009 GR
  4 A$main$85          000A GR  |   4 A$main$86          000D GR
  4 A$main$87          0010 GR  |   4 A$main$88          0013 GR
  4 A$main$89          0016 GR  |   4 A$main$90          0019 GR
  4 A$main$91          001C GR  |   4 A$main$92          001E GR
  4 A$main$93          0021 GR  |   4 A$main$96          0022 GR
  4 A$main$97          0025 GR  |   4 A$main$98          0028 GR
  4 A$main$99          002B GR  |   4 L10                0334 R
  4 L11                02BC R   |   4 L12                02CF R
  4 L13                0118 R   |   4 L14                02FD R
  4 L15                012C R   |   4 L16                018E R
  4 L17                01A0 R   |   4 L18                01B2 R
  4 L19                01C4 R   |   4 L20                01FC R
  4 L22                02B0 R   |   4 L23                030B R
  4 L25                0308 R   |   4 L6                 00E8 R
  4 L8                 012F R   |     _VIA_t1_cnt_lo     **** GX
    _Vec_Btn_State     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_2     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Music_9       **** GX
    _Vec_Music_Fla     **** GX  |     __Add_Score_a      **** GX
    __Do_Sound         **** GX  |     __Dot_d            **** GX
    __Draw_Line_d      **** GX  |     __Init_Music_c     **** GX
    __Intensity_a      **** GX  |     __Moveto_d         **** GX
    __Print_Str_d      **** GX  |     ___Clear_Score     **** GX
    ___DP_to_C8        **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
  2 _brightness_fa     0019 GR  |   2 _current_song      0000 GR
  3 _default_veloc     0000 GR  |   2 _dot_brightnes     0018 GR
  2 _dot_ticks         001A GR  |   2 _dot_x             0014 GR
  2 _dot_x_vel         0016 GR  |   2 _dot_y             0015 GR
  2 _dot_y_vel         0017 GR  |   2 _flashes           001B GR
  4 _main              0083 GR  |   2 _player1_score     0006 GR
  2 _player1_x         0002 GR  |   2 _player1_y         0003 GR
  2 _player2_score     000D GR  |   2 _player2_x         0004 GR
  2 _player2_y         0005 GR  |   4 _reset_round       0000 GR
  4 _setup             0022 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size   1C   flags    0
   3 .data            size    1   flags  100
   4 .text            size  36B   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

