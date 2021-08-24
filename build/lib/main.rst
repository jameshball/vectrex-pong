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
   C886                      44 _current_song:	.blkb	2
                             45 	.globl	_player1_x
   C888                      46 _player1_x:	.blkb	1
                             47 	.globl	_player1_y
   C889                      48 _player1_y:	.blkb	1
                             49 	.globl	_player2_x
   C88A                      50 _player2_x:	.blkb	1
                             51 	.globl	_player2_y
   C88B                      52 _player2_y:	.blkb	1
                             53 	.globl	_player1_score_str
   C88C                      54 _player1_score_str:	.blkb	7
                             55 	.globl	_player2_score_str
   C893                      56 _player2_score_str:	.blkb	7
                             57 	.globl	_dot_x
   C89A                      58 _dot_x:	.blkb	1
                             59 	.globl	_dot_y
   C89B                      60 _dot_y:	.blkb	1
                             61 	.globl	_dot_x_vel
   C89C                      62 _dot_x_vel:	.blkb	1
                             63 	.globl	_dot_y_vel
   C89D                      64 _dot_y_vel:	.blkb	1
                             65 	.globl	_velocity_scale
                             66 	.area	.data
   C880                      67 _velocity_scale:
   C880 01                   68 	.byte	1
                             69 	.area	.bss
                             70 	.globl	_dot_brightness
   C89E                      71 _dot_brightness:	.blkb	1
                             72 	.globl	_brightness_fade_in
   C89F                      73 _brightness_fade_in:	.blkb	1
                             74 	.globl	_dot_ticks
   C8A0                      75 _dot_ticks:	.blkb	1
                             76 	.globl	_flashes
   C8A1                      77 _flashes:	.blkb	1
                             78 	.globl	_edge
                             79 	.area	.data
   C881                      80 _edge:
   C881 01                   81 	.byte	1
   C882 81                   82 	.byte	-127
   C883 00                   83 	.byte	0
   C884 81                   84 	.byte	-127
   C885 00                   85 	.byte	0
                             86 	.area	.text
                             87 	.globl	_reset_round
   03CF                      88 _reset_round:
   03CF 32 7B         [ 5]   89 	leas	-5,s	;,,
   03D1 7F C8 9A      [ 7]   90 	clr	_dot_x	; dot_x
   03D4 7F C8 9B      [ 7]   91 	clr	_dot_y	; dot_y
   03D7 70 C8 80      [ 7]   92 	neg	_velocity_scale	; velocity_scale
   03DA BD 02 04      [ 8]   93 	jsr	__Random
   03DD E7 E4         [ 4]   94 	stb	,s	;, D.3249
   03DF F6 C8 80      [ 5]   95 	ldb	_velocity_scale	;, velocity_scale
   03E2 E7 63         [ 5]   96 	stb	3,s	;, velocity_scale.49
   03E4 E6 E4         [ 4]   97 	ldb	,s	;, D.3249
   03E6 A6 63         [ 5]   98 	lda	3,s	;mulqihi3	; velocity_scale.49
   03E8 3D            [11]   99 	mul
   03E9 1F 01         [ 6]  100 	tfr	d,x	;, tmp31
   03EB 1F 10         [ 6]  101 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp31,
   03ED E7 62         [ 5]  102 	stb	2,s	;,
   03EF 1F 10         [ 6]  103 	tfr	x,d	; tmp31,
   03F1 2D 54         [ 3]  104 	blt	L6	;
   03F3                     105 L2:
   03F3 67 62         [ 7]  106 	asr	2,s	;
   03F5 67 62         [ 7]  107 	asr	2,s	;
   03F7 67 62         [ 7]  108 	asr	2,s	;
   03F9 67 62         [ 7]  109 	asr	2,s	;
   03FB 67 62         [ 7]  110 	asr	2,s	;
   03FD 67 62         [ 7]  111 	asr	2,s	;
   03FF 68 63         [ 7]  112 	asl	3,s	; velocity_scale.49
   0401 E6 62         [ 5]  113 	ldb	2,s	;,
   0403 EB 63         [ 5]  114 	addb	3,s	;, velocity_scale.49
   0405 F7 C8 9C      [ 5]  115 	stb	_dot_x_vel	;, dot_x_vel
   0408 BD 02 04      [ 8]  116 	jsr	__Random
   040B E7 E4         [ 4]  117 	stb	,s	;, D.3251
   040D F6 C8 80      [ 5]  118 	ldb	_velocity_scale	;, velocity_scale
   0410 E7 64         [ 5]  119 	stb	4,s	;, velocity_scale.50
   0412 E6 E4         [ 4]  120 	ldb	,s	;, D.3251
   0414 A6 64         [ 5]  121 	lda	4,s	;mulqihi3	; velocity_scale.50
   0416 3D            [11]  122 	mul
   0417 1F 01         [ 6]  123 	tfr	d,x	;, tmp37
   0419 1F 10         [ 6]  124 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp37,
   041B E7 61         [ 5]  125 	stb	1,s	;,
   041D 1F 10         [ 6]  126 	tfr	x,d	; tmp37,
   041F 2D 2F         [ 3]  127 	blt	L7	;
   0421                     128 L3:
   0421 67 61         [ 7]  129 	asr	1,s	;
   0423 67 61         [ 7]  130 	asr	1,s	;
   0425 67 61         [ 7]  131 	asr	1,s	;
   0427 67 61         [ 7]  132 	asr	1,s	;
   0429 67 61         [ 7]  133 	asr	1,s	;
   042B 67 61         [ 7]  134 	asr	1,s	;
   042D 68 64         [ 7]  135 	asl	4,s	; velocity_scale.50
   042F E6 61         [ 5]  136 	ldb	1,s	;,
   0431 EB 64         [ 5]  137 	addb	4,s	;, velocity_scale.50
   0433 F7 C8 9D      [ 5]  138 	stb	_dot_y_vel	;, dot_y_vel
   0436 7F C8 A0      [ 7]  139 	clr	_dot_ticks	; dot_ticks
   0439 7F C8 A1      [ 7]  140 	clr	_flashes	; flashes
   043C 7F C8 9E      [ 7]  141 	clr	_dot_brightness	; dot_brightness
   043F C6 01         [ 2]  142 	ldb	#1	;,
   0441 F7 C8 9F      [ 5]  143 	stb	_brightness_fade_in	;, brightness_fade_in
   0444 32 65         [ 5]  144 	leas	5,s	;,,
   0446 39            [ 5]  145 	rts
   0447                     146 L6:
   0447 E6 62         [ 5]  147 	ldb	2,s	;,
   0449 CB 3F         [ 2]  148 	addb	#63	;,
   044B E7 62         [ 5]  149 	stb	2,s	;,
   044D 16 FF A3      [ 5]  150 	lbra	L2	;
   0450                     151 L7:
   0450 E6 61         [ 5]  152 	ldb	1,s	;,
   0452 CB 3F         [ 2]  153 	addb	#63	;,
   0454 E7 61         [ 5]  154 	stb	1,s	;,
   0456 20 C9         [ 3]  155 	bra	L3	;
                            156 	.globl	_setup
   0458                     157 _setup:
   0458 32 7B         [ 5]  158 	leas	-5,s	;,,
   045A 7F C8 1F      [ 7]  159 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
   045D 7F C8 20      [ 7]  160 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
   0460 7F C8 21      [ 7]  161 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
   0463 7F C8 22      [ 7]  162 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
   0466 C6 01         [ 2]  163 	ldb	#1	;,
   0468 F7 C8 56      [ 5]  164 	stb	_Vec_Music_Flag	;, Vec_Music_Flag
   046B 8E FF 26      [ 3]  165 	ldx	#_Vec_Music_9	;,
   046E BF C8 86      [ 6]  166 	stx	_current_song	;, current_song
   0471 8E C8 8C      [ 3]  167 	ldx	#_player1_score_str	;,
   0474 BD F8 4F      [ 8]  168 	jsr	___Clear_Score
   0477 8E C8 93      [ 3]  169 	ldx	#_player2_score_str	;,
   047A BD F8 4F      [ 8]  170 	jsr	___Clear_Score
   047D C6 80         [ 2]  171 	ldb	#-128	;,
   047F F7 C8 92      [ 5]  172 	stb	_player1_score_str+6	;, player1_score_str
   0482 F7 C8 99      [ 5]  173 	stb	_player2_score_str+6	;, player2_score_str
   0485 C6 EE         [ 2]  174 	ldb	#-18	;,
   0487 F7 C8 88      [ 5]  175 	stb	_player1_x	;, player1_x
   048A C6 64         [ 2]  176 	ldb	#100	;,
   048C F7 C8 89      [ 5]  177 	stb	_player1_y	;, player1_y
   048F C6 EE         [ 2]  178 	ldb	#-18	;,
   0491 F7 C8 8A      [ 5]  179 	stb	_player2_x	;, player2_x
   0494 C6 9C         [ 2]  180 	ldb	#-100	;,
   0496 F7 C8 8B      [ 5]  181 	stb	_player2_y	;, player2_y
   0499 7F C8 9A      [ 7]  182 	clr	_dot_x	; dot_x
   049C 7F C8 9B      [ 7]  183 	clr	_dot_y	; dot_y
   049F 70 C8 80      [ 7]  184 	neg	_velocity_scale	; velocity_scale
   04A2 BD 02 04      [ 8]  185 	jsr	__Random
   04A5 E7 E4         [ 4]  186 	stb	,s	;, D.3383
   04A7 F6 C8 80      [ 5]  187 	ldb	_velocity_scale	;, velocity_scale
   04AA E7 63         [ 5]  188 	stb	3,s	;, velocity_scale.64
   04AC E6 E4         [ 4]  189 	ldb	,s	;, D.3383
   04AE A6 63         [ 5]  190 	lda	3,s	;mulqihi3	; velocity_scale.64
   04B0 3D            [11]  191 	mul
   04B1 1F 01         [ 6]  192 	tfr	d,x	;, tmp34
   04B3 1F 10         [ 6]  193 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp34,
   04B5 E7 62         [ 5]  194 	stb	2,s	;,
   04B7 1F 10         [ 6]  195 	tfr	x,d	; tmp34,
   04B9 2D 54         [ 3]  196 	blt	L12	;
   04BB                     197 L9:
   04BB 67 62         [ 7]  198 	asr	2,s	;
   04BD 67 62         [ 7]  199 	asr	2,s	;
   04BF 67 62         [ 7]  200 	asr	2,s	;
   04C1 67 62         [ 7]  201 	asr	2,s	;
   04C3 67 62         [ 7]  202 	asr	2,s	;
   04C5 67 62         [ 7]  203 	asr	2,s	;
   04C7 68 63         [ 7]  204 	asl	3,s	; velocity_scale.64
   04C9 E6 62         [ 5]  205 	ldb	2,s	;,
   04CB EB 63         [ 5]  206 	addb	3,s	;, velocity_scale.64
   04CD F7 C8 9C      [ 5]  207 	stb	_dot_x_vel	;, dot_x_vel
   04D0 BD 02 04      [ 8]  208 	jsr	__Random
   04D3 E7 E4         [ 4]  209 	stb	,s	;, D.3384
   04D5 F6 C8 80      [ 5]  210 	ldb	_velocity_scale	;, velocity_scale
   04D8 E7 64         [ 5]  211 	stb	4,s	;, velocity_scale.65
   04DA E6 E4         [ 4]  212 	ldb	,s	;, D.3384
   04DC A6 64         [ 5]  213 	lda	4,s	;mulqihi3	; velocity_scale.65
   04DE 3D            [11]  214 	mul
   04DF 1F 01         [ 6]  215 	tfr	d,x	;, tmp40
   04E1 1F 10         [ 6]  216 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp40,
   04E3 E7 61         [ 5]  217 	stb	1,s	;,
   04E5 1F 10         [ 6]  218 	tfr	x,d	; tmp40,
   04E7 2D 2F         [ 3]  219 	blt	L13	;
   04E9                     220 L10:
   04E9 67 61         [ 7]  221 	asr	1,s	;
   04EB 67 61         [ 7]  222 	asr	1,s	;
   04ED 67 61         [ 7]  223 	asr	1,s	;
   04EF 67 61         [ 7]  224 	asr	1,s	;
   04F1 67 61         [ 7]  225 	asr	1,s	;
   04F3 67 61         [ 7]  226 	asr	1,s	;
   04F5 68 64         [ 7]  227 	asl	4,s	; velocity_scale.65
   04F7 E6 61         [ 5]  228 	ldb	1,s	;,
   04F9 EB 64         [ 5]  229 	addb	4,s	;, velocity_scale.65
   04FB F7 C8 9D      [ 5]  230 	stb	_dot_y_vel	;, dot_y_vel
   04FE 7F C8 A0      [ 7]  231 	clr	_dot_ticks	; dot_ticks
   0501 7F C8 A1      [ 7]  232 	clr	_flashes	; flashes
   0504 7F C8 9E      [ 7]  233 	clr	_dot_brightness	; dot_brightness
   0507 C6 01         [ 2]  234 	ldb	#1	;,
   0509 F7 C8 9F      [ 5]  235 	stb	_brightness_fade_in	;, brightness_fade_in
   050C 32 65         [ 5]  236 	leas	5,s	;,,
   050E 39            [ 5]  237 	rts
   050F                     238 L12:
   050F E6 62         [ 5]  239 	ldb	2,s	;,
   0511 CB 3F         [ 2]  240 	addb	#63	;,
   0513 E7 62         [ 5]  241 	stb	2,s	;,
   0515 16 FF A3      [ 5]  242 	lbra	L9	;
   0518                     243 L13:
   0518 E6 61         [ 5]  244 	ldb	1,s	;,
   051A CB 3F         [ 2]  245 	addb	#63	;,
   051C E7 61         [ 5]  246 	stb	1,s	;,
   051E 20 C9         [ 3]  247 	bra	L10	;
                            248 	.globl	_main
   0520                     249 _main:
   0520 32 E8 ED      [ 5]  250 	leas	-19,s	;,,
   0523 7F C8 1F      [ 7]  251 	clr	_Vec_Joy_Mux_1_X	; Vec_Joy_Mux_1_X
   0526 7F C8 20      [ 7]  252 	clr	_Vec_Joy_Mux_1_Y	; Vec_Joy_Mux_1_Y
   0529 7F C8 21      [ 7]  253 	clr	_Vec_Joy_Mux_2_X	; Vec_Joy_Mux_2_X
   052C 7F C8 22      [ 7]  254 	clr	_Vec_Joy_Mux_2_Y	; Vec_Joy_Mux_2_Y
   052F C6 01         [ 2]  255 	ldb	#1	;,
   0531 F7 C8 56      [ 5]  256 	stb	_Vec_Music_Flag	;, Vec_Music_Flag
   0534 8E FF 26      [ 3]  257 	ldx	#_Vec_Music_9	;,
   0537 BF C8 86      [ 6]  258 	stx	_current_song	;, current_song
   053A 8E C8 8C      [ 3]  259 	ldx	#_player1_score_str	;,
   053D BD F8 4F      [ 8]  260 	jsr	___Clear_Score
   0540 8E C8 93      [ 3]  261 	ldx	#_player2_score_str	;,
   0543 BD F8 4F      [ 8]  262 	jsr	___Clear_Score
   0546 C6 80         [ 2]  263 	ldb	#-128	;,
   0548 F7 C8 92      [ 5]  264 	stb	_player1_score_str+6	;, player1_score_str
   054B F7 C8 99      [ 5]  265 	stb	_player2_score_str+6	;, player2_score_str
   054E C6 EE         [ 2]  266 	ldb	#-18	;,
   0550 F7 C8 88      [ 5]  267 	stb	_player1_x	;, player1_x
   0553 C6 64         [ 2]  268 	ldb	#100	;,
   0555 F7 C8 89      [ 5]  269 	stb	_player1_y	;, player1_y
   0558 C6 EE         [ 2]  270 	ldb	#-18	;,
   055A F7 C8 8A      [ 5]  271 	stb	_player2_x	;, player2_x
   055D C6 9C         [ 2]  272 	ldb	#-100	;,
   055F F7 C8 8B      [ 5]  273 	stb	_player2_y	;, player2_y
   0562 7F C8 9A      [ 7]  274 	clr	_dot_x	; dot_x
   0565 7F C8 9B      [ 7]  275 	clr	_dot_y	; dot_y
   0568 70 C8 80      [ 7]  276 	neg	_velocity_scale	; velocity_scale
   056B BD 02 04      [ 8]  277 	jsr	__Random
   056E E7 E4         [ 4]  278 	stb	,s	;, D.3415
   0570 F6 C8 80      [ 5]  279 	ldb	_velocity_scale	;, velocity_scale
   0573 E7 6D         [ 5]  280 	stb	13,s	;, velocity_scale.89
   0575 E6 E4         [ 4]  281 	ldb	,s	;, D.3415
   0577 A6 6D         [ 5]  282 	lda	13,s	;mulqihi3	; velocity_scale.89
   0579 3D            [11]  283 	mul
   057A 1F 01         [ 6]  284 	tfr	d,x	;, tmp57
   057C 1F 10         [ 6]  285 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp57,
   057E E7 66         [ 5]  286 	stb	6,s	;,
   0580 1F 10         [ 6]  287 	tfr	x,d	; tmp57,
   0582 10 2D 03 CC   [ 6]  288 	lblt	L39	;
   0586                     289 L15:
   0586 67 66         [ 7]  290 	asr	6,s	;
   0588 67 66         [ 7]  291 	asr	6,s	;
   058A 67 66         [ 7]  292 	asr	6,s	;
   058C 67 66         [ 7]  293 	asr	6,s	;
   058E 67 66         [ 7]  294 	asr	6,s	;
   0590 67 66         [ 7]  295 	asr	6,s	;
   0592 68 6D         [ 7]  296 	asl	13,s	; velocity_scale.89
   0594 E6 66         [ 5]  297 	ldb	6,s	;,
   0596 EB 6D         [ 5]  298 	addb	13,s	;, velocity_scale.89
   0598 F7 C8 9C      [ 5]  299 	stb	_dot_x_vel	;, dot_x_vel
   059B BD 02 04      [ 8]  300 	jsr	__Random
   059E E7 E4         [ 4]  301 	stb	,s	;, D.3416
   05A0 F6 C8 80      [ 5]  302 	ldb	_velocity_scale	;, velocity_scale
   05A3 E7 6E         [ 5]  303 	stb	14,s	;, velocity_scale.90
   05A5 E6 E4         [ 4]  304 	ldb	,s	;, D.3416
   05A7 A6 6E         [ 5]  305 	lda	14,s	;mulqihi3	; velocity_scale.90
   05A9 3D            [11]  306 	mul
   05AA 1F 01         [ 6]  307 	tfr	d,x	;, tmp63
   05AC 1F 10         [ 6]  308 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp63,
   05AE E7 65         [ 5]  309 	stb	5,s	;,
   05B0 1F 10         [ 6]  310 	tfr	x,d	; tmp63,
   05B2 10 2D 03 A5   [ 6]  311 	lblt	L40	;
   05B6                     312 L16:
   05B6 67 65         [ 7]  313 	asr	5,s	;
   05B8 67 65         [ 7]  314 	asr	5,s	;
   05BA 67 65         [ 7]  315 	asr	5,s	;
   05BC 67 65         [ 7]  316 	asr	5,s	;
   05BE 67 65         [ 7]  317 	asr	5,s	;
   05C0 67 65         [ 7]  318 	asr	5,s	;
   05C2 68 6E         [ 7]  319 	asl	14,s	; velocity_scale.90
   05C4 E6 65         [ 5]  320 	ldb	5,s	;,
   05C6 EB 6E         [ 5]  321 	addb	14,s	;, velocity_scale.90
   05C8 F7 C8 9D      [ 5]  322 	stb	_dot_y_vel	;, dot_y_vel
   05CB 7F C8 A0      [ 7]  323 	clr	_dot_ticks	; dot_ticks
   05CE 7F C8 A1      [ 7]  324 	clr	_flashes	; flashes
   05D1 7F C8 9E      [ 7]  325 	clr	_dot_brightness	; dot_brightness
   05D4 C6 01         [ 2]  326 	ldb	#1	;,
   05D6 F7 C8 9F      [ 5]  327 	stb	_brightness_fade_in	;, brightness_fade_in
   05D9 16 01 33      [ 5]  328 	lbra	L36	;
   05DC                     329 L17:
   05DC 7D C8 9D      [ 7]  330 	tst	_dot_y_vel	; dot_y_vel
   05DF 10 2F 01 E4   [ 6]  331 	lble	L28	;
   05E3 C6 12         [ 2]  332 	ldb	#18	;,
   05E5 E7 E2         [ 6]  333 	stb	,-s	;,
   05E7 5F            [ 2]  334 	clrb	;
   05E8 BD 02 F9      [ 8]  335 	jsr	__Moveto_d
   05EB C6 12         [ 2]  336 	ldb	#18	;,
   05ED E7 E2         [ 6]  337 	stb	,-s	;,
   05EF 5F            [ 2]  338 	clrb	;
   05F0 BD 01 C3      [ 8]  339 	jsr	__Draw_Line_d
   05F3 C6 F7         [ 2]  340 	ldb	#-9	;,
   05F5 E7 E2         [ 6]  341 	stb	,-s	;,
   05F7 BD 01 C3      [ 8]  342 	jsr	__Draw_Line_d
   05FA C6 09         [ 2]  343 	ldb	#9	;,
   05FC E7 E2         [ 6]  344 	stb	,-s	;,
   05FE BD 02 F9      [ 8]  345 	jsr	__Moveto_d
   0601 C6 F7         [ 2]  346 	ldb	#-9	;,
   0603 E7 E2         [ 6]  347 	stb	,-s	;,
   0605 C6 09         [ 2]  348 	ldb	#9	;,
   0607 BD 01 C3      [ 8]  349 	jsr	__Draw_Line_d
   060A 32 65         [ 5]  350 	leas	5,s	;,,
   060C                     351 L29:
   060C 7C C8 A0      [ 7]  352 	inc	_dot_ticks	; dot_ticks
   060F F6 C8 A0      [ 5]  353 	ldb	_dot_ticks	; dot_ticks.37, dot_ticks
   0612 C1 09         [ 2]  354 	cmpb	#9	;cmpqi:	; dot_ticks.37,
   0614 2F 0D         [ 3]  355 	ble	L27	;
   0616 7D C8 9E      [ 7]  356 	tst	_dot_brightness	; dot_brightness
   0619 10 27 01 D8   [ 6]  357 	lbeq	L30	;
   061D 7F C8 9E      [ 7]  358 	clr	_dot_brightness	; dot_brightness
   0620                     359 L31:
   0620 7F C8 A0      [ 7]  360 	clr	_dot_ticks	; dot_ticks
   0623                     361 L27:
   0623 BD F3 54      [ 8]  362 	jsr	___Reset0Ref
   0626 C6 7F         [ 2]  363 	ldb	#127	;,
   0628 BD 03 03      [ 8]  364 	jsr	__Intensity_a
   062B C6 7E         [ 2]  365 	ldb	#126	;,
   062D E7 E2         [ 6]  366 	stb	,-s	;,
   062F CB 06         [ 2]  367 	addb	#6	;,
   0631 BD 02 F9      [ 8]  368 	jsr	__Moveto_d
   0634 8E C8 81      [ 3]  369 	ldx	#_edge	;,
   0637 BD F3 CE      [ 8]  370 	jsr	___Draw_VLc
   063A C6 7F         [ 2]  371 	ldb	#127	;,
   063C E7 E2         [ 6]  372 	stb	,-s	;,
   063E C6 7C         [ 2]  373 	ldb	#124	;,
   0640 BD 02 F9      [ 8]  374 	jsr	__Moveto_d
   0643 C6 7F         [ 2]  375 	ldb	#127	;,
   0645 E7 E2         [ 6]  376 	stb	,-s	;,
   0647 C6 7C         [ 2]  377 	ldb	#124	;,
   0649 BD 02 F9      [ 8]  378 	jsr	__Moveto_d
   064C 8E C8 81      [ 3]  379 	ldx	#_edge	;,
   064F BD F3 CE      [ 8]  380 	jsr	___Draw_VLc
   0652 C6 7F         [ 2]  381 	ldb	#127	;,
   0654 E7 E2         [ 6]  382 	stb	,-s	;,
   0656 CB 05         [ 2]  383 	addb	#5	;,
   0658 BD 02 F9      [ 8]  384 	jsr	__Moveto_d
   065B F6 C8 0F      [ 5]  385 	ldb	_Vec_Btn_State	;, Vec_Btn_State
   065E E7 6B         [ 5]  386 	stb	11,s	;, D.3308
   0660 32 64         [ 5]  387 	leas	4,s	;,,
   0662 C5 01         [ 2]  388 	bitb	#1	;,
   0664 27 0C         [ 3]  389 	beq	L32	;
   0666 F6 C8 88      [ 5]  390 	ldb	_player1_x	; player1_x.10, player1_x
   0669 C1 89         [ 2]  391 	cmpb	#-119	;cmpqi:	; player1_x.10,
   066B 2D 05         [ 3]  392 	blt	L32	;
   066D CB FD         [ 2]  393 	addb	#-3	; player1_x.10,
   066F F7 C8 88      [ 5]  394 	stb	_player1_x	; player1_x.10, player1_x
   0672                     395 L32:
   0672 C6 02         [ 2]  396 	ldb	#2	; tmp101,
   0674 E4 67         [ 5]  397 	andb	7,s	; tmp101, D.3308
   0676 27 0C         [ 3]  398 	beq	L33	;
   0678 F6 C8 88      [ 5]  399 	ldb	_player1_x	; player1_x.85, player1_x
   067B C1 53         [ 2]  400 	cmpb	#83	;cmpqi:	; player1_x.85,
   067D 2E 05         [ 3]  401 	bgt	L33	;
   067F CB 03         [ 2]  402 	addb	#3	; player1_x.85,
   0681 F7 C8 88      [ 5]  403 	stb	_player1_x	; player1_x.85, player1_x
   0684                     404 L33:
   0684 C6 04         [ 2]  405 	ldb	#4	; tmp102,
   0686 E4 67         [ 5]  406 	andb	7,s	; tmp102, D.3308
   0688 27 0C         [ 3]  407 	beq	L34	;
   068A F6 C8 8A      [ 5]  408 	ldb	_player2_x	; player2_x.13, player2_x
   068D C1 89         [ 2]  409 	cmpb	#-119	;cmpqi:	; player2_x.13,
   068F 2D 05         [ 3]  410 	blt	L34	;
   0691 CB FD         [ 2]  411 	addb	#-3	; player2_x.13,
   0693 F7 C8 8A      [ 5]  412 	stb	_player2_x	; player2_x.13, player2_x
   0696                     413 L34:
   0696 C6 08         [ 2]  414 	ldb	#8	;,
   0698 E4 67         [ 5]  415 	andb	7,s	;, D.3308
   069A 27 0C         [ 3]  416 	beq	L35	;
   069C F6 C8 8A      [ 5]  417 	ldb	_player2_x	; player2_x.86, player2_x
   069F C1 53         [ 2]  418 	cmpb	#83	;cmpqi:	; player2_x.86,
   06A1 2E 05         [ 3]  419 	bgt	L35	;
   06A3 CB 03         [ 2]  420 	addb	#3	; player2_x.86,
   06A5 F7 C8 8A      [ 5]  421 	stb	_player2_x	; player2_x.86, player2_x
   06A8                     422 L35:
   06A8 F6 C8 89      [ 5]  423 	ldb	_player1_y	;, player1_y
   06AB E7 E2         [ 6]  424 	stb	,-s	;,
   06AD F6 C8 88      [ 5]  425 	ldb	_player1_x	;, player1_x
   06B0 BD 02 F9      [ 8]  426 	jsr	__Moveto_d
   06B3 6F E2         [ 8]  427 	clr	,-s	;
   06B5 C6 24         [ 2]  428 	ldb	#36	;,
   06B7 BD 01 C3      [ 8]  429 	jsr	__Draw_Line_d
   06BA C6 F8         [ 2]  430 	ldb	#-8	;,
   06BC E7 E2         [ 6]  431 	stb	,-s	;,
   06BE 5F            [ 2]  432 	clrb	;
   06BF BD 01 C3      [ 8]  433 	jsr	__Draw_Line_d
   06C2 6F E2         [ 8]  434 	clr	,-s	;
   06C4 C6 DC         [ 2]  435 	ldb	#-36	;,
   06C6 BD 01 C3      [ 8]  436 	jsr	__Draw_Line_d
   06C9 C6 08         [ 2]  437 	ldb	#8	;,
   06CB E7 E2         [ 6]  438 	stb	,-s	;,
   06CD 5F            [ 2]  439 	clrb	;
   06CE BD 01 C3      [ 8]  440 	jsr	__Draw_Line_d
   06D1 F6 C8 88      [ 5]  441 	ldb	_player1_x	;, player1_x
   06D4 50            [ 2]  442 	negb	;
   06D5 E7 65         [ 5]  443 	stb	5,s	;,
   06D7 F6 C8 89      [ 5]  444 	ldb	_player1_y	;, player1_y
   06DA 50            [ 2]  445 	negb	;
   06DB 34 04         [ 6]  446 	pshs	b	;
   06DD E6 66         [ 5]  447 	ldb	6,s	;,
   06DF BD 02 F9      [ 8]  448 	jsr	__Moveto_d
   06E2 F6 C8 8B      [ 5]  449 	ldb	_player2_y	;, player2_y
   06E5 E7 E2         [ 6]  450 	stb	,-s	;,
   06E7 F6 C8 8A      [ 5]  451 	ldb	_player2_x	;, player2_x
   06EA BD 02 F9      [ 8]  452 	jsr	__Moveto_d
   06ED 6F E2         [ 8]  453 	clr	,-s	;
   06EF C6 24         [ 2]  454 	ldb	#36	;,
   06F1 BD 01 C3      [ 8]  455 	jsr	__Draw_Line_d
   06F4 32 68         [ 5]  456 	leas	8,s	;,,
   06F6 C6 F8         [ 2]  457 	ldb	#-8	;,
   06F8 E7 E2         [ 6]  458 	stb	,-s	;,
   06FA 5F            [ 2]  459 	clrb	;
   06FB BD 01 C3      [ 8]  460 	jsr	__Draw_Line_d
   06FE 6F E2         [ 8]  461 	clr	,-s	;
   0700 C6 DC         [ 2]  462 	ldb	#-36	;,
   0702 BD 01 C3      [ 8]  463 	jsr	__Draw_Line_d
   0705 C6 08         [ 2]  464 	ldb	#8	;,
   0707 E7 E2         [ 6]  465 	stb	,-s	;,
   0709 5F            [ 2]  466 	clrb	;
   070A BD 01 C3      [ 8]  467 	jsr	__Draw_Line_d
   070D 32 63         [ 5]  468 	leas	3,s	;,,
   070F                     469 L36:
   070F BD F1 AF      [ 8]  470 	jsr	___DP_to_C8
   0712 BE C8 86      [ 6]  471 	ldx	_current_song	;, current_song
   0715 BD 02 C2      [ 8]  472 	jsr	__Init_Music_chk
   0718 BD F1 92      [ 8]  473 	jsr	___Wait_Recal
   071B BD 02 BB      [ 8]  474 	jsr	__Do_Sound
   071E BD F1 BA      [ 8]  475 	jsr	___Read_Btns
   0721 C6 7F         [ 2]  476 	ldb	#127	;,
   0723 BD 03 03      [ 8]  477 	jsr	__Intensity_a
   0726 C6 7F         [ 2]  478 	ldb	#127	;,
   0728 F7 D0 04      [ 5]  479 	stb	_VIA_t1_cnt_lo	;, VIA_t1_cnt_lo
   072B E7 E2         [ 6]  480 	stb	,-s	;,
   072D 8E C8 8C      [ 3]  481 	ldx	#_player1_score_str	;,
   0730 C6 BE         [ 2]  482 	ldb	#-66	;,
   0732 BD 01 6E      [ 8]  483 	jsr	__Print_Str_d
   0735 C6 80         [ 2]  484 	ldb	#-128	;,
   0737 E7 E2         [ 6]  485 	stb	,-s	;,
   0739 8E C8 93      [ 3]  486 	ldx	#_player2_score_str	;,
   073C CB 3E         [ 2]  487 	addb	#62	;,
   073E BD 01 6E      [ 8]  488 	jsr	__Print_Str_d
   0741 F6 C8 9E      [ 5]  489 	ldb	_dot_brightness	;, dot_brightness
   0744 BD 03 03      [ 8]  490 	jsr	__Intensity_a
   0747 F6 C8 9B      [ 5]  491 	ldb	_dot_y	;, dot_y
   074A E7 E2         [ 6]  492 	stb	,-s	;,
   074C F6 C8 9A      [ 5]  493 	ldb	_dot_x	;, dot_x
   074F BD 01 52      [ 8]  494 	jsr	__Dot_d
   0752 32 63         [ 5]  495 	leas	3,s	;,,
   0754 F6 C8 A1      [ 5]  496 	ldb	_flashes	;, flashes
   0757 C1 04         [ 2]  497 	cmpb	#4	;cmpqi:	;,
   0759 10 2F FE 7F   [ 6]  498 	lble	L17	;
   075D C6 7F         [ 2]  499 	ldb	#127	;,
   075F F7 C8 9E      [ 5]  500 	stb	_dot_brightness	;, dot_brightness
   0762 F6 C8 9C      [ 5]  501 	ldb	_dot_x_vel	;, dot_x_vel
   0765 FB C8 9A      [ 5]  502 	addb	_dot_x	;, dot_x
   0768 E7 6C         [ 5]  503 	stb	12,s	;, dot_x.22
   076A F7 C8 9A      [ 5]  504 	stb	_dot_x	;, dot_x
   076D F6 C8 9D      [ 5]  505 	ldb	_dot_y_vel	;, dot_y_vel
   0770 E7 6B         [ 5]  506 	stb	11,s	;, dot_y_vel.24
   0772 FB C8 9B      [ 5]  507 	addb	_dot_y	;, dot_y
   0775 E7 6A         [ 5]  508 	stb	10,s	;, dot_y.25
   0777 F7 C8 9B      [ 5]  509 	stb	_dot_y	;, dot_y
   077A C1 7A         [ 2]  510 	cmpb	#122	;cmpqi:	;,
   077C 10 2E 00 80   [ 6]  511 	lbgt	L41	;
   0780 C1 86         [ 2]  512 	cmpb	#-122	;cmpqi:	;,
   0782 10 2D 01 00   [ 6]  513 	lblt	L42	;
   0786 6D 6B         [ 7]  514 	tst	11,s	; dot_y_vel.24
   0788 10 2F 01 71   [ 6]  515 	lble	L25	;
   078C F6 C8 88      [ 5]  516 	ldb	_player1_x	; player1_x.26, player1_x
   078F E1 6C         [ 5]  517 	cmpb	12,s	;cmpqi:(R)	; player1_x.26, dot_x.22
   0791 2E 23         [ 3]  518 	bgt	L21	;
   0793 CB 24         [ 2]  519 	addb	#36	; player1_x.26,
   0795 E1 6C         [ 5]  520 	cmpb	12,s	;cmpqi:(R)	; player1_x.26, dot_x.22
   0797 2D 1D         [ 3]  521 	blt	L21	;
   0799 F6 C8 89      [ 5]  522 	ldb	_player1_y	;, player1_y
   079C E7 69         [ 5]  523 	stb	9,s	;, player1_y.27
   079E CB F6         [ 2]  524 	addb	#-10	; tmp94,
   07A0 E1 6A         [ 5]  525 	cmpb	10,s	;cmpqi:(R)	; tmp94, dot_y.25
   07A2 2E 12         [ 3]  526 	bgt	L21	;
   07A4 E6 6A         [ 5]  527 	ldb	10,s	;, dot_y.25
   07A6 E1 69         [ 5]  528 	cmpb	9,s	;cmpqi:	;, player1_y.27
   07A8 2E 0C         [ 3]  529 	bgt	L21	;
   07AA                     530 L26:
   07AA E6 6B         [ 5]  531 	ldb	11,s	; dot_y_vel.30, dot_y_vel.24
   07AC 50            [ 2]  532 	negb	; dot_y_vel.30
   07AD F7 C8 9D      [ 5]  533 	stb	_dot_y_vel	; dot_y_vel.30, dot_y_vel
   07B0 58            [ 2]  534 	aslb	; dot_y_vel.30
   07B1 EB 6A         [ 5]  535 	addb	10,s	; dot_y_vel.30, dot_y.25
   07B3 F7 C8 9B      [ 5]  536 	stb	_dot_y	; dot_y_vel.30, dot_y
   07B6                     537 L21:
   07B6 F6 C8 9A      [ 5]  538 	ldb	_dot_x	; tmp99, dot_x
   07B9 CB 78         [ 2]  539 	addb	#120	; tmp99,
   07BB C1 F0         [ 2]  540 	cmpb	#-16	;cmpqi:	; tmp99,
   07BD 10 23 FE 62   [ 6]  541 	lbls	L27	;
   07C1 70 C8 9C      [ 7]  542 	neg	_dot_x_vel	; dot_x_vel
   07C4 16 FE 5C      [ 5]  543 	lbra	L27	;
   07C7                     544 L28:
   07C7 C6 EE         [ 2]  545 	ldb	#-18	;,
   07C9 E7 E2         [ 6]  546 	stb	,-s	;,
   07CB 5F            [ 2]  547 	clrb	;
   07CC BD 02 F9      [ 8]  548 	jsr	__Moveto_d
   07CF C6 EE         [ 2]  549 	ldb	#-18	;,
   07D1 E7 E2         [ 6]  550 	stb	,-s	;,
   07D3 5F            [ 2]  551 	clrb	;
   07D4 BD 01 C3      [ 8]  552 	jsr	__Draw_Line_d
   07D7 C6 09         [ 2]  553 	ldb	#9	;,
   07D9 E7 E2         [ 6]  554 	stb	,-s	;,
   07DB C6 F7         [ 2]  555 	ldb	#-9	;,
   07DD BD 01 C3      [ 8]  556 	jsr	__Draw_Line_d
   07E0 C6 F7         [ 2]  557 	ldb	#-9	;,
   07E2 E7 E2         [ 6]  558 	stb	,-s	;,
   07E4 C6 09         [ 2]  559 	ldb	#9	;,
   07E6 BD 02 F9      [ 8]  560 	jsr	__Moveto_d
   07E9 C6 09         [ 2]  561 	ldb	#9	;,
   07EB E7 E2         [ 6]  562 	stb	,-s	;,
   07ED BD 01 C3      [ 8]  563 	jsr	__Draw_Line_d
   07F0 32 65         [ 5]  564 	leas	5,s	;,,
   07F2 16 FE 17      [ 5]  565 	lbra	L29	;
   07F5                     566 L30:
   07F5 C6 7F         [ 2]  567 	ldb	#127	;,
   07F7 F7 C8 9E      [ 5]  568 	stb	_dot_brightness	;, dot_brightness
   07FA 7C C8 A1      [ 7]  569 	inc	_flashes	; flashes
   07FD 16 FE 20      [ 5]  570 	lbra	L31	;
   0800                     571 L41:
   0800 8E C8 93      [ 3]  572 	ldx	#_player2_score_str	;,
   0803 C6 01         [ 2]  573 	ldb	#1	;,
   0805 BD 02 7D      [ 8]  574 	jsr	__Add_Score_a
   0808 7F C8 9A      [ 7]  575 	clr	_dot_x	; dot_x
   080B 7F C8 9B      [ 7]  576 	clr	_dot_y	; dot_y
   080E 70 C8 80      [ 7]  577 	neg	_velocity_scale	; velocity_scale
   0811 BD 02 04      [ 8]  578 	jsr	__Random
   0814 E7 E4         [ 4]  579 	stb	,s	;, D.3453
   0816 F6 C8 80      [ 5]  580 	ldb	_velocity_scale	;, velocity_scale
   0819 E7 6F         [ 5]  581 	stb	15,s	;, velocity_scale.94
   081B E6 E4         [ 4]  582 	ldb	,s	;, D.3453
   081D A6 6F         [ 5]  583 	lda	15,s	;mulqihi3	; velocity_scale.94
   081F 3D            [11]  584 	mul
   0820 1F 01         [ 6]  585 	tfr	d,x	;, tmp69
   0822 1F 10         [ 6]  586 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp69,
   0824 E7 64         [ 5]  587 	stb	4,s	;,
   0826 1F 10         [ 6]  588 	tfr	x,d	; tmp69,
   0828 10 2D 01 0B   [ 6]  589 	lblt	L43	;
   082C                     590 L19:
   082C 67 64         [ 7]  591 	asr	4,s	;
   082E 67 64         [ 7]  592 	asr	4,s	;
   0830 67 64         [ 7]  593 	asr	4,s	;
   0832 67 64         [ 7]  594 	asr	4,s	;
   0834 67 64         [ 7]  595 	asr	4,s	;
   0836 67 64         [ 7]  596 	asr	4,s	;
   0838 68 6F         [ 7]  597 	asl	15,s	; velocity_scale.94
   083A E6 64         [ 5]  598 	ldb	4,s	;,
   083C EB 6F         [ 5]  599 	addb	15,s	;, velocity_scale.94
   083E F7 C8 9C      [ 5]  600 	stb	_dot_x_vel	;, dot_x_vel
   0841 BD 02 04      [ 8]  601 	jsr	__Random
   0844 E7 E4         [ 4]  602 	stb	,s	;, D.3454
   0846 F6 C8 80      [ 5]  603 	ldb	_velocity_scale	;, velocity_scale
   0849 E7 E8 10      [ 5]  604 	stb	16,s	;, velocity_scale.95
   084C E6 E4         [ 4]  605 	ldb	,s	;, D.3454
   084E A6 E8 10      [ 5]  606 	lda	16,s	;mulqihi3	; velocity_scale.95
   0851 3D            [11]  607 	mul
   0852 1F 01         [ 6]  608 	tfr	d,x	;, tmp75
   0854 1F 10         [ 6]  609 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp75,
   0856 E7 63         [ 5]  610 	stb	3,s	;,
   0858 1F 10         [ 6]  611 	tfr	x,d	; tmp75,
   085A 10 2D 00 D0   [ 6]  612 	lblt	L44	;
   085E                     613 L20:
   085E 67 63         [ 7]  614 	asr	3,s	;
   0860 67 63         [ 7]  615 	asr	3,s	;
   0862 67 63         [ 7]  616 	asr	3,s	;
   0864 67 63         [ 7]  617 	asr	3,s	;
   0866 67 63         [ 7]  618 	asr	3,s	;
   0868 67 63         [ 7]  619 	asr	3,s	;
   086A 68 E8 10      [ 7]  620 	asl	16,s	; velocity_scale.95
   086D E6 63         [ 5]  621 	ldb	3,s	;,
   086F EB E8 10      [ 5]  622 	addb	16,s	;, velocity_scale.95
   0872                     623 L38:
   0872 F7 C8 9D      [ 5]  624 	stb	_dot_y_vel	;, dot_y_vel
   0875 7F C8 A0      [ 7]  625 	clr	_dot_ticks	; dot_ticks
   0878 7F C8 A1      [ 7]  626 	clr	_flashes	; flashes
   087B 7F C8 9E      [ 7]  627 	clr	_dot_brightness	; dot_brightness
   087E C6 01         [ 2]  628 	ldb	#1	;,
   0880 F7 C8 9F      [ 5]  629 	stb	_brightness_fade_in	;, brightness_fade_in
   0883 16 FF 30      [ 5]  630 	lbra	L21	;
   0886                     631 L42:
   0886 8E C8 8C      [ 3]  632 	ldx	#_player1_score_str	;,
   0889 C6 01         [ 2]  633 	ldb	#1	;,
   088B BD 02 7D      [ 8]  634 	jsr	__Add_Score_a
   088E 7F C8 9A      [ 7]  635 	clr	_dot_x	; dot_x
   0891 7F C8 9B      [ 7]  636 	clr	_dot_y	; dot_y
   0894 70 C8 80      [ 7]  637 	neg	_velocity_scale	; velocity_scale
   0897 BD 02 04      [ 8]  638 	jsr	__Random
   089A E7 E4         [ 4]  639 	stb	,s	;, D.3466
   089C F6 C8 80      [ 5]  640 	ldb	_velocity_scale	;, velocity_scale
   089F E7 E8 11      [ 5]  641 	stb	17,s	;, velocity_scale.97
   08A2 E6 E4         [ 4]  642 	ldb	,s	;, D.3466
   08A4 A6 E8 11      [ 5]  643 	lda	17,s	;mulqihi3	; velocity_scale.97
   08A7 3D            [11]  644 	mul
   08A8 1F 01         [ 6]  645 	tfr	d,x	;, tmp81
   08AA 1F 10         [ 6]  646 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp81,
   08AC E7 62         [ 5]  647 	stb	2,s	;,
   08AE 1F 10         [ 6]  648 	tfr	x,d	; tmp81,
   08B0 10 2D 00 95   [ 6]  649 	lblt	L45	;
   08B4                     650 L23:
   08B4 67 62         [ 7]  651 	asr	2,s	;
   08B6 67 62         [ 7]  652 	asr	2,s	;
   08B8 67 62         [ 7]  653 	asr	2,s	;
   08BA 67 62         [ 7]  654 	asr	2,s	;
   08BC 67 62         [ 7]  655 	asr	2,s	;
   08BE 67 62         [ 7]  656 	asr	2,s	;
   08C0 68 E8 11      [ 7]  657 	asl	17,s	; velocity_scale.97
   08C3 E6 62         [ 5]  658 	ldb	2,s	;,
   08C5 EB E8 11      [ 5]  659 	addb	17,s	;, velocity_scale.97
   08C8 F7 C8 9C      [ 5]  660 	stb	_dot_x_vel	;, dot_x_vel
   08CB BD 02 04      [ 8]  661 	jsr	__Random
   08CE E7 E4         [ 4]  662 	stb	,s	;, D.3467
   08D0 F6 C8 80      [ 5]  663 	ldb	_velocity_scale	;, velocity_scale
   08D3 E7 E8 12      [ 5]  664 	stb	18,s	;, velocity_scale.98
   08D6 E6 E4         [ 4]  665 	ldb	,s	;, D.3467
   08D8 A6 E8 12      [ 5]  666 	lda	18,s	;mulqihi3	; velocity_scale.98
   08DB 3D            [11]  667 	mul
   08DC 1F 01         [ 6]  668 	tfr	d,x	;, tmp87
   08DE 1F 10         [ 6]  669 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp87,
   08E0 E7 61         [ 5]  670 	stb	1,s	;,
   08E2 1F 10         [ 6]  671 	tfr	x,d	; tmp87,
   08E4 2D 5A         [ 3]  672 	blt	L46	;
   08E6                     673 L24:
   08E6 67 61         [ 7]  674 	asr	1,s	;
   08E8 67 61         [ 7]  675 	asr	1,s	;
   08EA 67 61         [ 7]  676 	asr	1,s	;
   08EC 67 61         [ 7]  677 	asr	1,s	;
   08EE 67 61         [ 7]  678 	asr	1,s	;
   08F0 67 61         [ 7]  679 	asr	1,s	;
   08F2 68 E8 12      [ 7]  680 	asl	18,s	; velocity_scale.98
   08F5 E6 61         [ 5]  681 	ldb	1,s	;,
   08F7 EB E8 12      [ 5]  682 	addb	18,s	;, velocity_scale.98
   08FA 16 FF 75      [ 5]  683 	lbra	L38	;
   08FD                     684 L25:
   08FD 6D 6B         [ 7]  685 	tst	11,s	; dot_y_vel.24
   08FF 10 27 FE B3   [ 6]  686 	lbeq	L21	;
   0903 F6 C8 8A      [ 5]  687 	ldb	_player2_x	; player2_x.28, player2_x
   0906 E1 6C         [ 5]  688 	cmpb	12,s	;cmpqi:(R)	; player2_x.28, dot_x.22
   0908 10 2E FE AA   [ 6]  689 	lbgt	L21	;
   090C CB 24         [ 2]  690 	addb	#36	; player2_x.28,
   090E E1 6C         [ 5]  691 	cmpb	12,s	;cmpqi:(R)	; player2_x.28, dot_x.22
   0910 10 2D FE A2   [ 6]  692 	lblt	L21	;
   0914 F6 C8 8B      [ 5]  693 	ldb	_player2_y	;, player2_y
   0917 E7 68         [ 5]  694 	stb	8,s	;, player2_y.29
   0919 CB F8         [ 2]  695 	addb	#-8	; tmp96,
   091B E1 6A         [ 5]  696 	cmpb	10,s	;cmpqi:(R)	; tmp96, dot_y.25
   091D 10 2E FE 95   [ 6]  697 	lbgt	L21	;
   0921 6A 68         [ 7]  698 	dec	8,s	; player2_y.29
   0923 E6 6A         [ 5]  699 	ldb	10,s	;, dot_y.25
   0925 E1 68         [ 5]  700 	cmpb	8,s	;cmpqi:	;, player2_y.29
   0927 10 2C FE 8B   [ 6]  701 	lbge	L21	;
   092B 16 FE 7C      [ 5]  702 	lbra	L26	;
   092E                     703 L44:
   092E E6 63         [ 5]  704 	ldb	3,s	;,
   0930 CB 3F         [ 2]  705 	addb	#63	;,
   0932 E7 63         [ 5]  706 	stb	3,s	;,
   0934 16 FF 27      [ 5]  707 	lbra	L20	;
   0937                     708 L43:
   0937 E6 64         [ 5]  709 	ldb	4,s	;,
   0939 CB 3F         [ 2]  710 	addb	#63	;,
   093B E7 64         [ 5]  711 	stb	4,s	;,
   093D 16 FE EC      [ 5]  712 	lbra	L19	;
   0940                     713 L46:
   0940 E6 61         [ 5]  714 	ldb	1,s	;,
   0942 CB 3F         [ 2]  715 	addb	#63	;,
   0944 E7 61         [ 5]  716 	stb	1,s	;,
   0946 16 FF 9D      [ 5]  717 	lbra	L24	;
   0949                     718 L45:
   0949 E6 62         [ 5]  719 	ldb	2,s	;,
   094B CB 3F         [ 2]  720 	addb	#63	;,
   094D E7 62         [ 5]  721 	stb	2,s	;,
   094F 16 FF 62      [ 5]  722 	lbra	L23	;
   0952                     723 L39:
   0952 E6 66         [ 5]  724 	ldb	6,s	;,
   0954 CB 3F         [ 2]  725 	addb	#63	;,
   0956 E7 66         [ 5]  726 	stb	6,s	;,
   0958 16 FC 2B      [ 5]  727 	lbra	L15	;
   095B                     728 L40:
   095B E6 65         [ 5]  729 	ldb	5,s	;,
   095D CB 3F         [ 2]  730 	addb	#63	;,
   095F E7 65         [ 5]  731 	stb	5,s	;,
   0961 16 FC 52      [ 5]  732 	lbra	L16	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  4 A$main$100         001A GR  |   4 A$main$101         001C GR
  4 A$main$102         001E GR  |   4 A$main$103         0020 GR
  4 A$main$104         0022 GR  |   4 A$main$106         0024 GR
  4 A$main$107         0026 GR  |   4 A$main$108         0028 GR
  4 A$main$109         002A GR  |   4 A$main$110         002C GR
  4 A$main$111         002E GR  |   4 A$main$112         0030 GR
  4 A$main$113         0032 GR  |   4 A$main$114         0034 GR
  4 A$main$115         0036 GR  |   4 A$main$116         0039 GR
  4 A$main$117         003C GR  |   4 A$main$118         003E GR
  4 A$main$119         0041 GR  |   4 A$main$120         0043 GR
  4 A$main$121         0045 GR  |   4 A$main$122         0047 GR
  4 A$main$123         0048 GR  |   4 A$main$124         004A GR
  4 A$main$125         004C GR  |   4 A$main$126         004E GR
  4 A$main$127         0050 GR  |   4 A$main$129         0052 GR
  4 A$main$130         0054 GR  |   4 A$main$131         0056 GR
  4 A$main$132         0058 GR  |   4 A$main$133         005A GR
  4 A$main$134         005C GR  |   4 A$main$135         005E GR
  4 A$main$136         0060 GR  |   4 A$main$137         0062 GR
  4 A$main$138         0064 GR  |   4 A$main$139         0067 GR
  4 A$main$140         006A GR  |   4 A$main$141         006D GR
  4 A$main$142         0070 GR  |   4 A$main$143         0072 GR
  4 A$main$144         0075 GR  |   4 A$main$145         0077 GR
  4 A$main$147         0078 GR  |   4 A$main$148         007A GR
  4 A$main$149         007C GR  |   4 A$main$150         007E GR
  4 A$main$152         0081 GR  |   4 A$main$153         0083 GR
  4 A$main$154         0085 GR  |   4 A$main$155         0087 GR
  4 A$main$158         0089 GR  |   4 A$main$159         008B GR
  4 A$main$160         008E GR  |   4 A$main$161         0091 GR
  4 A$main$162         0094 GR  |   4 A$main$163         0097 GR
  4 A$main$164         0099 GR  |   4 A$main$165         009C GR
  4 A$main$166         009F GR  |   4 A$main$167         00A2 GR
  4 A$main$168         00A5 GR  |   4 A$main$169         00A8 GR
  4 A$main$170         00AB GR  |   4 A$main$171         00AE GR
  4 A$main$172         00B0 GR  |   4 A$main$173         00B3 GR
  4 A$main$174         00B6 GR  |   4 A$main$175         00B8 GR
  4 A$main$176         00BB GR  |   4 A$main$177         00BD GR
  4 A$main$178         00C0 GR  |   4 A$main$179         00C2 GR
  4 A$main$180         00C5 GR  |   4 A$main$181         00C7 GR
  4 A$main$182         00CA GR  |   4 A$main$183         00CD GR
  4 A$main$184         00D0 GR  |   4 A$main$185         00D3 GR
  4 A$main$186         00D6 GR  |   4 A$main$187         00D8 GR
  4 A$main$188         00DB GR  |   4 A$main$189         00DD GR
  4 A$main$190         00DF GR  |   4 A$main$191         00E1 GR
  4 A$main$192         00E2 GR  |   4 A$main$193         00E4 GR
  4 A$main$194         00E6 GR  |   4 A$main$195         00E8 GR
  4 A$main$196         00EA GR  |   4 A$main$198         00EC GR
  4 A$main$199         00EE GR  |   4 A$main$200         00F0 GR
  4 A$main$201         00F2 GR  |   4 A$main$202         00F4 GR
  4 A$main$203         00F6 GR  |   4 A$main$204         00F8 GR
  4 A$main$205         00FA GR  |   4 A$main$206         00FC GR
  4 A$main$207         00FE GR  |   4 A$main$208         0101 GR
  4 A$main$209         0104 GR  |   4 A$main$210         0106 GR
  4 A$main$211         0109 GR  |   4 A$main$212         010B GR
  4 A$main$213         010D GR  |   4 A$main$214         010F GR
  4 A$main$215         0110 GR  |   4 A$main$216         0112 GR
  4 A$main$217         0114 GR  |   4 A$main$218         0116 GR
  4 A$main$219         0118 GR  |   4 A$main$221         011A GR
  4 A$main$222         011C GR  |   4 A$main$223         011E GR
  4 A$main$224         0120 GR  |   4 A$main$225         0122 GR
  4 A$main$226         0124 GR  |   4 A$main$227         0126 GR
  4 A$main$228         0128 GR  |   4 A$main$229         012A GR
  4 A$main$230         012C GR  |   4 A$main$231         012F GR
  4 A$main$232         0132 GR  |   4 A$main$233         0135 GR
  4 A$main$234         0138 GR  |   4 A$main$235         013A GR
  4 A$main$236         013D GR  |   4 A$main$237         013F GR
  4 A$main$239         0140 GR  |   4 A$main$240         0142 GR
  4 A$main$241         0144 GR  |   4 A$main$242         0146 GR
  4 A$main$244         0149 GR  |   4 A$main$245         014B GR
  4 A$main$246         014D GR  |   4 A$main$247         014F GR
  4 A$main$250         0151 GR  |   4 A$main$251         0154 GR
  4 A$main$252         0157 GR  |   4 A$main$253         015A GR
  4 A$main$254         015D GR  |   4 A$main$255         0160 GR
  4 A$main$256         0162 GR  |   4 A$main$257         0165 GR
  4 A$main$258         0168 GR  |   4 A$main$259         016B GR
  4 A$main$260         016E GR  |   4 A$main$261         0171 GR
  4 A$main$262         0174 GR  |   4 A$main$263         0177 GR
  4 A$main$264         0179 GR  |   4 A$main$265         017C GR
  4 A$main$266         017F GR  |   4 A$main$267         0181 GR
  4 A$main$268         0184 GR  |   4 A$main$269         0186 GR
  4 A$main$270         0189 GR  |   4 A$main$271         018B GR
  4 A$main$272         018E GR  |   4 A$main$273         0190 GR
  4 A$main$274         0193 GR  |   4 A$main$275         0196 GR
  4 A$main$276         0199 GR  |   4 A$main$277         019C GR
  4 A$main$278         019F GR  |   4 A$main$279         01A1 GR
  4 A$main$280         01A4 GR  |   4 A$main$281         01A6 GR
  4 A$main$282         01A8 GR  |   4 A$main$283         01AA GR
  4 A$main$284         01AB GR  |   4 A$main$285         01AD GR
  4 A$main$286         01AF GR  |   4 A$main$287         01B1 GR
  4 A$main$288         01B3 GR  |   4 A$main$290         01B7 GR
  4 A$main$291         01B9 GR  |   4 A$main$292         01BB GR
  4 A$main$293         01BD GR  |   4 A$main$294         01BF GR
  4 A$main$295         01C1 GR  |   4 A$main$296         01C3 GR
  4 A$main$297         01C5 GR  |   4 A$main$298         01C7 GR
  4 A$main$299         01C9 GR  |   4 A$main$300         01CC GR
  4 A$main$301         01CF GR  |   4 A$main$302         01D1 GR
  4 A$main$303         01D4 GR  |   4 A$main$304         01D6 GR
  4 A$main$305         01D8 GR  |   4 A$main$306         01DA GR
  4 A$main$307         01DB GR  |   4 A$main$308         01DD GR
  4 A$main$309         01DF GR  |   4 A$main$310         01E1 GR
  4 A$main$311         01E3 GR  |   4 A$main$313         01E7 GR
  4 A$main$314         01E9 GR  |   4 A$main$315         01EB GR
  4 A$main$316         01ED GR  |   4 A$main$317         01EF GR
  4 A$main$318         01F1 GR  |   4 A$main$319         01F3 GR
  4 A$main$320         01F5 GR  |   4 A$main$321         01F7 GR
  4 A$main$322         01F9 GR  |   4 A$main$323         01FC GR
  4 A$main$324         01FF GR  |   4 A$main$325         0202 GR
  4 A$main$326         0205 GR  |   4 A$main$327         0207 GR
  4 A$main$328         020A GR  |   4 A$main$330         020D GR
  4 A$main$331         0210 GR  |   4 A$main$332         0214 GR
  4 A$main$333         0216 GR  |   4 A$main$334         0218 GR
  4 A$main$335         0219 GR  |   4 A$main$336         021C GR
  4 A$main$337         021E GR  |   4 A$main$338         0220 GR
  4 A$main$339         0221 GR  |   4 A$main$340         0224 GR
  4 A$main$341         0226 GR  |   4 A$main$342         0228 GR
  4 A$main$343         022B GR  |   4 A$main$344         022D GR
  4 A$main$345         022F GR  |   4 A$main$346         0232 GR
  4 A$main$347         0234 GR  |   4 A$main$348         0236 GR
  4 A$main$349         0238 GR  |   4 A$main$350         023B GR
  4 A$main$352         023D GR  |   4 A$main$353         0240 GR
  4 A$main$354         0243 GR  |   4 A$main$355         0245 GR
  4 A$main$356         0247 GR  |   4 A$main$357         024A GR
  4 A$main$358         024E GR  |   4 A$main$360         0251 GR
  4 A$main$362         0254 GR  |   4 A$main$363         0257 GR
  4 A$main$364         0259 GR  |   4 A$main$365         025C GR
  4 A$main$366         025E GR  |   4 A$main$367         0260 GR
  4 A$main$368         0262 GR  |   4 A$main$369         0265 GR
  4 A$main$370         0268 GR  |   4 A$main$371         026B GR
  4 A$main$372         026D GR  |   4 A$main$373         026F GR
  4 A$main$374         0271 GR  |   4 A$main$375         0274 GR
  4 A$main$376         0276 GR  |   4 A$main$377         0278 GR
  4 A$main$378         027A GR  |   4 A$main$379         027D GR
  4 A$main$380         0280 GR  |   4 A$main$381         0283 GR
  4 A$main$382         0285 GR  |   4 A$main$383         0287 GR
  4 A$main$384         0289 GR  |   4 A$main$385         028C GR
  4 A$main$386         028F GR  |   4 A$main$387         0291 GR
  4 A$main$388         0293 GR  |   4 A$main$389         0295 GR
  4 A$main$390         0297 GR  |   4 A$main$391         029A GR
  4 A$main$392         029C GR  |   4 A$main$393         029E GR
  4 A$main$394         02A0 GR  |   4 A$main$396         02A3 GR
  4 A$main$397         02A5 GR  |   4 A$main$398         02A7 GR
  4 A$main$399         02A9 GR  |   4 A$main$400         02AC GR
  4 A$main$401         02AE GR  |   4 A$main$402         02B0 GR
  4 A$main$403         02B2 GR  |   4 A$main$405         02B5 GR
  4 A$main$406         02B7 GR  |   4 A$main$407         02B9 GR
  4 A$main$408         02BB GR  |   4 A$main$409         02BE GR
  4 A$main$410         02C0 GR  |   4 A$main$411         02C2 GR
  4 A$main$412         02C4 GR  |   4 A$main$414         02C7 GR
  4 A$main$415         02C9 GR  |   4 A$main$416         02CB GR
  4 A$main$417         02CD GR  |   4 A$main$418         02D0 GR
  4 A$main$419         02D2 GR  |   4 A$main$420         02D4 GR
  4 A$main$421         02D6 GR  |   4 A$main$423         02D9 GR
  4 A$main$424         02DC GR  |   4 A$main$425         02DE GR
  4 A$main$426         02E1 GR  |   4 A$main$427         02E4 GR
  4 A$main$428         02E6 GR  |   4 A$main$429         02E8 GR
  4 A$main$430         02EB GR  |   4 A$main$431         02ED GR
  4 A$main$432         02EF GR  |   4 A$main$433         02F0 GR
  4 A$main$434         02F3 GR  |   4 A$main$435         02F5 GR
  4 A$main$436         02F7 GR  |   4 A$main$437         02FA GR
  4 A$main$438         02FC GR  |   4 A$main$439         02FE GR
  4 A$main$440         02FF GR  |   4 A$main$441         0302 GR
  4 A$main$442         0305 GR  |   4 A$main$443         0306 GR
  4 A$main$444         0308 GR  |   4 A$main$445         030B GR
  4 A$main$446         030C GR  |   4 A$main$447         030E GR
  4 A$main$448         0310 GR  |   4 A$main$449         0313 GR
  4 A$main$450         0316 GR  |   4 A$main$451         0318 GR
  4 A$main$452         031B GR  |   4 A$main$453         031E GR
  4 A$main$454         0320 GR  |   4 A$main$455         0322 GR
  4 A$main$456         0325 GR  |   4 A$main$457         0327 GR
  4 A$main$458         0329 GR  |   4 A$main$459         032B GR
  4 A$main$460         032C GR  |   4 A$main$461         032F GR
  4 A$main$462         0331 GR  |   4 A$main$463         0333 GR
  4 A$main$464         0336 GR  |   4 A$main$465         0338 GR
  4 A$main$466         033A GR  |   4 A$main$467         033B GR
  4 A$main$468         033E GR  |   4 A$main$470         0340 GR
  4 A$main$471         0343 GR  |   4 A$main$472         0346 GR
  4 A$main$473         0349 GR  |   4 A$main$474         034C GR
  4 A$main$475         034F GR  |   4 A$main$476         0352 GR
  4 A$main$477         0354 GR  |   4 A$main$478         0357 GR
  4 A$main$479         0359 GR  |   4 A$main$480         035C GR
  4 A$main$481         035E GR  |   4 A$main$482         0361 GR
  4 A$main$483         0363 GR  |   4 A$main$484         0366 GR
  4 A$main$485         0368 GR  |   4 A$main$486         036A GR
  4 A$main$487         036D GR  |   4 A$main$488         036F GR
  4 A$main$489         0372 GR  |   4 A$main$490         0375 GR
  4 A$main$491         0378 GR  |   4 A$main$492         037B GR
  4 A$main$493         037D GR  |   4 A$main$494         0380 GR
  4 A$main$495         0383 GR  |   4 A$main$496         0385 GR
  4 A$main$497         0388 GR  |   4 A$main$498         038A GR
  4 A$main$499         038E GR  |   4 A$main$500         0390 GR
  4 A$main$501         0393 GR  |   4 A$main$502         0396 GR
  4 A$main$503         0399 GR  |   4 A$main$504         039B GR
  4 A$main$505         039E GR  |   4 A$main$506         03A1 GR
  4 A$main$507         03A3 GR  |   4 A$main$508         03A6 GR
  4 A$main$509         03A8 GR  |   4 A$main$510         03AB GR
  4 A$main$511         03AD GR  |   4 A$main$512         03B1 GR
  4 A$main$513         03B3 GR  |   4 A$main$514         03B7 GR
  4 A$main$515         03B9 GR  |   4 A$main$516         03BD GR
  4 A$main$517         03C0 GR  |   4 A$main$518         03C2 GR
  4 A$main$519         03C4 GR  |   4 A$main$520         03C6 GR
  4 A$main$521         03C8 GR  |   4 A$main$522         03CA GR
  4 A$main$523         03CD GR  |   4 A$main$524         03CF GR
  4 A$main$525         03D1 GR  |   4 A$main$526         03D3 GR
  4 A$main$527         03D5 GR  |   4 A$main$528         03D7 GR
  4 A$main$529         03D9 GR  |   4 A$main$531         03DB GR
  4 A$main$532         03DD GR  |   4 A$main$533         03DE GR
  4 A$main$534         03E1 GR  |   4 A$main$535         03E2 GR
  4 A$main$536         03E4 GR  |   4 A$main$538         03E7 GR
  4 A$main$539         03EA GR  |   4 A$main$540         03EC GR
  4 A$main$541         03EE GR  |   4 A$main$542         03F2 GR
  4 A$main$543         03F5 GR  |   4 A$main$545         03F8 GR
  4 A$main$546         03FA GR  |   4 A$main$547         03FC GR
  4 A$main$548         03FD GR  |   4 A$main$549         0400 GR
  4 A$main$550         0402 GR  |   4 A$main$551         0404 GR
  4 A$main$552         0405 GR  |   4 A$main$553         0408 GR
  4 A$main$554         040A GR  |   4 A$main$555         040C GR
  4 A$main$556         040E GR  |   4 A$main$557         0411 GR
  4 A$main$558         0413 GR  |   4 A$main$559         0415 GR
  4 A$main$560         0417 GR  |   4 A$main$561         041A GR
  4 A$main$562         041C GR  |   4 A$main$563         041E GR
  4 A$main$564         0421 GR  |   4 A$main$565         0423 GR
  4 A$main$567         0426 GR  |   4 A$main$568         0428 GR
  4 A$main$569         042B GR  |   4 A$main$570         042E GR
  4 A$main$572         0431 GR  |   4 A$main$573         0434 GR
  4 A$main$574         0436 GR  |   4 A$main$575         0439 GR
  4 A$main$576         043C GR  |   4 A$main$577         043F GR
  4 A$main$578         0442 GR  |   4 A$main$579         0445 GR
  4 A$main$580         0447 GR  |   4 A$main$581         044A GR
  4 A$main$582         044C GR  |   4 A$main$583         044E GR
  4 A$main$584         0450 GR  |   4 A$main$585         0451 GR
  4 A$main$586         0453 GR  |   4 A$main$587         0455 GR
  4 A$main$588         0457 GR  |   4 A$main$589         0459 GR
  4 A$main$591         045D GR  |   4 A$main$592         045F GR
  4 A$main$593         0461 GR  |   4 A$main$594         0463 GR
  4 A$main$595         0465 GR  |   4 A$main$596         0467 GR
  4 A$main$597         0469 GR  |   4 A$main$598         046B GR
  4 A$main$599         046D GR  |   4 A$main$600         046F GR
  4 A$main$601         0472 GR  |   4 A$main$602         0475 GR
  4 A$main$603         0477 GR  |   4 A$main$604         047A GR
  4 A$main$605         047D GR  |   4 A$main$606         047F GR
  4 A$main$607         0482 GR  |   4 A$main$608         0483 GR
  4 A$main$609         0485 GR  |   4 A$main$610         0487 GR
  4 A$main$611         0489 GR  |   4 A$main$612         048B GR
  4 A$main$614         048F GR  |   4 A$main$615         0491 GR
  4 A$main$616         0493 GR  |   4 A$main$617         0495 GR
  4 A$main$618         0497 GR  |   4 A$main$619         0499 GR
  4 A$main$620         049B GR  |   4 A$main$621         049E GR
  4 A$main$622         04A0 GR  |   4 A$main$624         04A3 GR
  4 A$main$625         04A6 GR  |   4 A$main$626         04A9 GR
  4 A$main$627         04AC GR  |   4 A$main$628         04AF GR
  4 A$main$629         04B1 GR  |   4 A$main$630         04B4 GR
  4 A$main$632         04B7 GR  |   4 A$main$633         04BA GR
  4 A$main$634         04BC GR  |   4 A$main$635         04BF GR
  4 A$main$636         04C2 GR  |   4 A$main$637         04C5 GR
  4 A$main$638         04C8 GR  |   4 A$main$639         04CB GR
  4 A$main$640         04CD GR  |   4 A$main$641         04D0 GR
  4 A$main$642         04D3 GR  |   4 A$main$643         04D5 GR
  4 A$main$644         04D8 GR  |   4 A$main$645         04D9 GR
  4 A$main$646         04DB GR  |   4 A$main$647         04DD GR
  4 A$main$648         04DF GR  |   4 A$main$649         04E1 GR
  4 A$main$651         04E5 GR  |   4 A$main$652         04E7 GR
  4 A$main$653         04E9 GR  |   4 A$main$654         04EB GR
  4 A$main$655         04ED GR  |   4 A$main$656         04EF GR
  4 A$main$657         04F1 GR  |   4 A$main$658         04F4 GR
  4 A$main$659         04F6 GR  |   4 A$main$660         04F9 GR
  4 A$main$661         04FC GR  |   4 A$main$662         04FF GR
  4 A$main$663         0501 GR  |   4 A$main$664         0504 GR
  4 A$main$665         0507 GR  |   4 A$main$666         0509 GR
  4 A$main$667         050C GR  |   4 A$main$668         050D GR
  4 A$main$669         050F GR  |   4 A$main$670         0511 GR
  4 A$main$671         0513 GR  |   4 A$main$672         0515 GR
  4 A$main$674         0517 GR  |   4 A$main$675         0519 GR
  4 A$main$676         051B GR  |   4 A$main$677         051D GR
  4 A$main$678         051F GR  |   4 A$main$679         0521 GR
  4 A$main$680         0523 GR  |   4 A$main$681         0526 GR
  4 A$main$682         0528 GR  |   4 A$main$683         052B GR
  4 A$main$685         052E GR  |   4 A$main$686         0530 GR
  4 A$main$687         0534 GR  |   4 A$main$688         0537 GR
  4 A$main$689         0539 GR  |   4 A$main$690         053D GR
  4 A$main$691         053F GR  |   4 A$main$692         0541 GR
  4 A$main$693         0545 GR  |   4 A$main$694         0548 GR
  4 A$main$695         054A GR  |   4 A$main$696         054C GR
  4 A$main$697         054E GR  |   4 A$main$698         0552 GR
  4 A$main$699         0554 GR  |   4 A$main$700         0556 GR
  4 A$main$701         0558 GR  |   4 A$main$702         055C GR
  4 A$main$704         055F GR  |   4 A$main$705         0561 GR
  4 A$main$706         0563 GR  |   4 A$main$707         0565 GR
  4 A$main$709         0568 GR  |   4 A$main$710         056A GR
  4 A$main$711         056C GR  |   4 A$main$712         056E GR
  4 A$main$714         0571 GR  |   4 A$main$715         0573 GR
  4 A$main$716         0575 GR  |   4 A$main$717         0577 GR
  4 A$main$719         057A GR  |   4 A$main$720         057C GR
  4 A$main$721         057E GR  |   4 A$main$722         0580 GR
  4 A$main$724         0583 GR  |   4 A$main$725         0585 GR
  4 A$main$726         0587 GR  |   4 A$main$727         0589 GR
  4 A$main$729         058C GR  |   4 A$main$730         058E GR
  4 A$main$731         0590 GR  |   4 A$main$732         0592 GR
  4 A$main$89          0000 GR  |   4 A$main$90          0002 GR
  4 A$main$91          0005 GR  |   4 A$main$92          0008 GR
  4 A$main$93          000B GR  |   4 A$main$94          000E GR
  4 A$main$95          0010 GR  |   4 A$main$96          0013 GR
  4 A$main$97          0015 GR  |   4 A$main$98          0017 GR
  4 A$main$99          0019 GR  |   4 L10                011A R
  4 L12                0140 R   |   4 L13                0149 R
  4 L15                01B7 R   |   4 L16                01E7 R
  4 L17                020D R   |   4 L19                045D R
  4 L2                 0024 R   |   4 L20                048F R
  4 L21                03E7 R   |   4 L23                04E5 R
  4 L24                0517 R   |   4 L25                052E R
  4 L26                03DB R   |   4 L27                0254 R
  4 L28                03F8 R   |   4 L29                023D R
  4 L3                 0052 R   |   4 L30                0426 R
  4 L31                0251 R   |   4 L32                02A3 R
  4 L33                02B5 R   |   4 L34                02C7 R
  4 L35                02D9 R   |   4 L36                0340 R
  4 L38                04A3 R   |   4 L39                0583 R
  4 L40                058C R   |   4 L41                0431 R
  4 L42                04B7 R   |   4 L43                0568 R
  4 L44                055F R   |   4 L45                057A R
  4 L46                0571 R   |   4 L6                 0078 R
  4 L7                 0081 R   |   4 L9                 00EC R
    _VIA_t1_cnt_lo     **** GX  |     _Vec_Btn_State     **** GX
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Joy_Mux_2     **** GX
    _Vec_Music_9       **** GX  |     _Vec_Music_Fla     **** GX
    __Add_Score_a      **** GX  |     __Do_Sound         **** GX
    __Dot_d            **** GX  |     __Draw_Line_d      **** GX
    __Init_Music_c     **** GX  |     __Intensity_a      **** GX
    __Moveto_d         **** GX  |     __Print_Str_d      **** GX
    __Random           **** GX  |     ___Clear_Score     **** GX
    ___DP_to_C8        **** GX  |     ___Draw_VLc        **** GX
    ___Read_Btns       **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |   2 _brightness_fa     0019 GR
  2 _current_song      0000 GR  |   2 _dot_brightnes     0018 GR
  2 _dot_ticks         001A GR  |   2 _dot_x             0014 GR
  2 _dot_x_vel         0016 GR  |   2 _dot_y             0015 GR
  2 _dot_y_vel         0017 GR  |   3 _edge              0001 GR
  2 _flashes           001B GR  |   4 _main              0151 GR
  2 _player1_score     0006 GR  |   2 _player1_x         0002 GR
  2 _player1_y         0003 GR  |   2 _player2_score     000D GR
  2 _player2_x         0004 GR  |   2 _player2_y         0005 GR
  4 _reset_round       0000 GR  |   4 _setup             0089 GR
  3 _velocity_scal     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size   1C   flags    0
   3 .data            size    6   flags  100
   4 .text            size  595   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

