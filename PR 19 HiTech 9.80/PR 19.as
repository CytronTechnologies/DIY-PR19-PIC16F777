opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F777
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 14 "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	dw 0x3FA2 ;#
# 15 "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	dw 0x3FBC ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_delay
	FNCALL	_main,_alphamode
	FNCALL	_main,_betamode
	FNCALL	_main,_shift_display
	FNCALL	_betamode,_deg_330
	FNCALL	_betamode,_delay
	FNCALL	_betamode,_deg_0
	FNCALL	_betamode,_deg_30
	FNCALL	_betamode,_deg_150
	FNCALL	_betamode,_deg_180
	FNCALL	_betamode,_deg_210
	FNCALL	_betamode,_m_stop
	FNCALL	_alphamode,_deg_270
	FNCALL	_alphamode,_delay
	FNCALL	_alphamode,_deg_0
	FNCALL	_alphamode,_deg_90
	FNCALL	_alphamode,_deg_180
	FNCALL	_alphamode,_clockwise
	FNCALL	_alphamode,_m_stop
	FNCALL	_deg_210,_lm_run
	FNCALL	_deg_210,_bm_run
	FNCALL	_deg_210,_mode_display
	FNCALL	_deg_150,_rm_run
	FNCALL	_deg_150,_bm_run
	FNCALL	_deg_150,_mode_display
	FNCALL	_deg_30,_lm_run
	FNCALL	_deg_30,_bm_run
	FNCALL	_deg_30,_mode_display
	FNCALL	_deg_330,_rm_run
	FNCALL	_deg_330,_bm_run
	FNCALL	_deg_330,_mode_display
	FNCALL	_m_stop,_mode_display
	FNCALL	_clockwise,_lm_run
	FNCALL	_clockwise,_rm_run
	FNCALL	_clockwise,_bm_run
	FNCALL	_clockwise,_mode_display
	FNCALL	_deg_180,_lm_run
	FNCALL	_deg_180,_rm_run
	FNCALL	_deg_180,_mode_display
	FNCALL	_deg_90,_lm_run
	FNCALL	_deg_90,_rm_run
	FNCALL	_deg_90,_bm_run
	FNCALL	_deg_90,_mode_display
	FNCALL	_deg_0,_lm_run
	FNCALL	_deg_0,_rm_run
	FNCALL	_deg_0,_mode_display
	FNCALL	_deg_270,_lm_run
	FNCALL	_deg_270,_rm_run
	FNCALL	_deg_270,_bm_run
	FNCALL	_deg_270,_mode_display
	FNCALL	_mode_display,_lcd_clr
	FNCALL	_mode_display,_lcd_goto
	FNCALL	_mode_display,_send_string
	FNCALL	_mode_display,_delay
	FNCALL	_shift_display,_lcd_clr
	FNCALL	_shift_display,_lcd_goto
	FNCALL	_shift_display,_send_string
	FNCALL	_shift_display,_send_config
	FNCALL	_shift_display,_delay
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_lcd_goto,_send_config
	FNCALL	_send_char,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_i
	global	_shift
	global	_CCP1CON
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_ADCON1
_ADCON1	set	159
	global	_CCP3CON
_CCP3CON	set	151
	global	_CCPR3L
_CCPR3L	set	149
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_33:	
	retlw	67	;'C'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_29:	
	retlw	65	;'A'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_34:	
	retlw	65	;'A'
	retlw	108	;'l'
	retlw	112	;'p'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_36:	
	retlw	66	;'B'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_27:	
	retlw	67	;'C'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_4:	
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_31:	
	retlw	67	;'C'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	0
psect	strings
	
STR_23:	
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_17:	
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_11:	
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_25:	
	retlw	51	;'3'
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_19:	
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_13:	
	retlw	49	;'1'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_21:	
	retlw	50	;'2'
	retlw	55	;'7'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_15:	
	retlw	49	;'1'
	retlw	56	;'8'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_7:	
	retlw	54	;'6'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_9:	
	retlw	57	;'9'
	retlw	48	;'0'
	retlw	0
psect	strings
STR_35	equ	STR_33+0
STR_1	equ	STR_33+7
STR_32	equ	STR_33+7
STR_6	equ	STR_4+0
STR_8	equ	STR_4+0
STR_10	equ	STR_4+0
STR_12	equ	STR_4+0
STR_14	equ	STR_4+0
STR_16	equ	STR_4+0
STR_18	equ	STR_4+0
STR_20	equ	STR_4+0
STR_22	equ	STR_4+0
STR_24	equ	STR_4+0
STR_26	equ	STR_4+0
STR_5	equ	STR_25+1
STR_3	equ	STR_23+2
STR_28	equ	STR_23+3
STR_30	equ	STR_23+3
	file	"PR 19.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      1

_shift:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_alphamode
?_alphamode:	; 0 bytes @ 0x0
	global	?_betamode
?_betamode:	; 0 bytes @ 0x0
	global	?_shift_display
?_shift_display:	; 0 bytes @ 0x0
	global	?_deg_270
?_deg_270:	; 0 bytes @ 0x0
	global	?_deg_0
?_deg_0:	; 0 bytes @ 0x0
	global	?_deg_90
?_deg_90:	; 0 bytes @ 0x0
	global	?_deg_180
?_deg_180:	; 0 bytes @ 0x0
	global	?_clockwise
?_clockwise:	; 0 bytes @ 0x0
	global	?_m_stop
?_m_stop:	; 0 bytes @ 0x0
	global	?_deg_330
?_deg_330:	; 0 bytes @ 0x0
	global	?_deg_30
?_deg_30:	; 0 bytes @ 0x0
	global	?_deg_150
?_deg_150:	; 0 bytes @ 0x0
	global	?_deg_210
?_deg_210:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lm_run
?_lm_run:	; 0 bytes @ 0x0
	global	??_lm_run
??_lm_run:	; 0 bytes @ 0x0
	global	?_rm_run
?_rm_run:	; 0 bytes @ 0x0
	global	??_rm_run
??_rm_run:	; 0 bytes @ 0x0
	global	?_bm_run
?_bm_run:	; 0 bytes @ 0x0
	global	??_bm_run
??_bm_run:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	lm_run@dir
lm_run@dir:	; 1 bytes @ 0x0
	global	rm_run@dir
rm_run@dir:	; 1 bytes @ 0x0
	global	bm_run@dir
bm_run@dir:	; 1 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	ds	1
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	ds	1
	global	??_shift_display
??_shift_display:	; 0 bytes @ 0xB
	global	?_mode_display
?_mode_display:	; 0 bytes @ 0xB
	global	mode_display@y
mode_display@y:	; 1 bytes @ 0xB
	ds	1
	global	??_mode_display
??_mode_display:	; 0 bytes @ 0xC
	global	mode_display@x
mode_display@x:	; 1 bytes @ 0xC
	ds	1
	global	??_deg_270
??_deg_270:	; 0 bytes @ 0xD
	global	??_deg_0
??_deg_0:	; 0 bytes @ 0xD
	global	??_deg_90
??_deg_90:	; 0 bytes @ 0xD
	global	??_deg_180
??_deg_180:	; 0 bytes @ 0xD
	global	??_clockwise
??_clockwise:	; 0 bytes @ 0xD
	global	??_m_stop
??_m_stop:	; 0 bytes @ 0xD
	global	??_deg_330
??_deg_330:	; 0 bytes @ 0xD
	global	??_deg_30
??_deg_30:	; 0 bytes @ 0xD
	global	??_deg_150
??_deg_150:	; 0 bytes @ 0xD
	global	??_deg_210
??_deg_210:	; 0 bytes @ 0xD
	ds	1
	global	??_alphamode
??_alphamode:	; 0 bytes @ 0xE
	global	??_betamode
??_betamode:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	1
;;Data sizes: Strings 120, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      1       3
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; mode_display@y	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_30(CODE[1]), STR_28(CODE[1]), STR_26(CODE[7]), STR_24(CODE[7]), 
;;		 -> STR_22(CODE[7]), STR_20(CODE[7]), STR_18(CODE[7]), STR_16(CODE[7]), 
;;		 -> STR_14(CODE[7]), STR_12(CODE[7]), STR_10(CODE[7]), STR_8(CODE[7]), 
;;		 -> STR_6(CODE[7]), STR_4(CODE[7]), STR_2(CODE[5]), 
;;
;; mode_display@x	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_29(CODE[14]), STR_27(CODE[10]), STR_25(CODE[4]), STR_23(CODE[4]), 
;;		 -> STR_21(CODE[4]), STR_19(CODE[4]), STR_17(CODE[4]), STR_15(CODE[4]), 
;;		 -> STR_13(CODE[4]), STR_11(CODE[4]), STR_9(CODE[3]), STR_7(CODE[3]), 
;;		 -> STR_5(CODE[3]), STR_3(CODE[2]), STR_1(CODE[9]), 
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_36(CODE[11]), STR_35(CODE[16]), STR_34(CODE[12]), STR_33(CODE[16]), 
;;		 -> STR_32(CODE[9]), STR_31(CODE[7]), STR_30(CODE[1]), STR_29(CODE[14]), 
;;		 -> STR_28(CODE[1]), STR_27(CODE[10]), STR_26(CODE[7]), STR_25(CODE[4]), 
;;		 -> STR_24(CODE[7]), STR_23(CODE[4]), STR_22(CODE[7]), STR_21(CODE[4]), 
;;		 -> STR_20(CODE[7]), STR_19(CODE[4]), STR_18(CODE[7]), STR_17(CODE[4]), 
;;		 -> STR_16(CODE[7]), STR_15(CODE[4]), STR_14(CODE[7]), STR_13(CODE[4]), 
;;		 -> STR_12(CODE[7]), STR_11(CODE[4]), STR_10(CODE[7]), STR_9(CODE[3]), 
;;		 -> STR_8(CODE[7]), STR_7(CODE[3]), STR_6(CODE[7]), STR_5(CODE[3]), 
;;		 -> STR_4(CODE[7]), STR_3(CODE[2]), STR_2(CODE[5]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _betamode->_deg_330
;;   _betamode->_deg_0
;;   _betamode->_deg_30
;;   _betamode->_deg_150
;;   _betamode->_deg_180
;;   _betamode->_deg_210
;;   _betamode->_m_stop
;;   _alphamode->_deg_270
;;   _alphamode->_deg_0
;;   _alphamode->_deg_90
;;   _alphamode->_deg_180
;;   _alphamode->_clockwise
;;   _alphamode->_m_stop
;;   _deg_210->_mode_display
;;   _deg_150->_mode_display
;;   _deg_30->_mode_display
;;   _deg_330->_mode_display
;;   _m_stop->_mode_display
;;   _clockwise->_mode_display
;;   _deg_180->_mode_display
;;   _deg_90->_mode_display
;;   _deg_0->_mode_display
;;   _deg_270->_mode_display
;;   _mode_display->_lcd_goto
;;   _mode_display->_send_string
;;   _shift_display->_lcd_goto
;;   _shift_display->_send_string
;;   _send_string->_send_char
;;   _lcd_clr->_send_config
;;   _lcd_goto->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    8199
;;                                              0 BANK0      1     1      0
;;                        _send_config
;;                              _delay
;;                          _alphamode
;;                           _betamode
;;                      _shift_display
;; ---------------------------------------------------------------------------------
;; (1) _betamode                                             0     0      0    4010
;;                            _deg_330
;;                              _delay
;;                              _deg_0
;;                             _deg_30
;;                            _deg_150
;;                            _deg_180
;;                            _deg_210
;;                             _m_stop
;; ---------------------------------------------------------------------------------
;; (1) _alphamode                                            0     0      0    3563
;;                            _deg_270
;;                              _delay
;;                              _deg_0
;;                             _deg_90
;;                            _deg_180
;;                          _clockwise
;;                             _m_stop
;; ---------------------------------------------------------------------------------
;; (2) _deg_210                                              1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_150                                              1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _rm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_30                                               1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_330                                              1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _rm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _m_stop                                               1     1      0     491
;;                                             13 COMMON     1     1      0
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _clockwise                                            1     1      0     623
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _rm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_180                                              1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _rm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_90                                               1     1      0     623
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _rm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_0                                                1     1      0     579
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _rm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (2) _deg_270                                              1     1      0     623
;;                                             13 COMMON     1     1      0
;;                             _lm_run
;;                             _rm_run
;;                             _bm_run
;;                       _mode_display
;; ---------------------------------------------------------------------------------
;; (3) _mode_display                                         2     1      1     491
;;                                             11 COMMON     2     1      1
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _shift_display                                        1     1      0     514
;;                                             11 COMMON     1     1      0
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_string                                          2     2      0     134
;;                                              9 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (3) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _bm_run                                               1     1      0      44
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _rm_run                                               1     1      0      44
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _lm_run                                               1     1      0      44
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _delay
;;   _alphamode
;;     _deg_270
;;       _lm_run
;;       _rm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _delay
;;     _deg_0
;;       _lm_run
;;       _rm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_90
;;       _lm_run
;;       _rm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_180
;;       _lm_run
;;       _rm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _clockwise
;;       _lm_run
;;       _rm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _m_stop
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;   _betamode
;;     _deg_330
;;       _rm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _delay
;;     _deg_0
;;       _lm_run
;;       _rm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_30
;;       _lm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_150
;;       _rm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_180
;;       _lm_run
;;       _rm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _deg_210
;;       _lm_run
;;       _bm_run
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;     _m_stop
;;       _mode_display
;;         _lcd_clr
;;           _send_config
;;             _delay
;;           _delay
;;         _lcd_goto
;;           _send_config
;;             _delay
;;         _send_string
;;           _send_char
;;             _delay
;;         _delay
;;   _shift_display
;;     _lcd_clr
;;       _send_config
;;         _delay
;;       _delay
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     _send_config
;;       _delay
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      11       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      1       3       5        3.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;DATA                 0      0      17       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BANK1               50      0       0       8        0.0%
;;BITBANK3            60      0       0       9        0.0%
;;BANK3               60      0       0      10        0.0%
;;BITBANK2            60      0       0      11        0.0%
;;BANK2               60      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 77 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_send_config
;;		_delay
;;		_alphamode
;;		_betamode
;;		_shift_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	77
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	79
	
l2771:	
;PR19.c: 79: ADCON1 = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	82
;PR19.c: 82: TRISA = 0b00000011;
	movlw	(03h)
	movwf	(133)^080h	;volatile
	line	83
	
l2773:	
;PR19.c: 83: TRISB = 0b00000000;
	clrf	(134)^080h	;volatile
	line	84
	
l2775:	
;PR19.c: 84: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	85
	
l2777:	
;PR19.c: 85: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	86
	
l2779:	
;PR19.c: 86: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	87
	
l2781:	
;PR19.c: 87: PORTC = 0x00;
	clrf	(7)	;volatile
	line	88
	
l2783:	
;PR19.c: 88: PORTD = 0x00;
	clrf	(8)	;volatile
	line	91
	
l2785:	
;PR19.c: 91: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	92
	
l2787:	
;PR19.c: 92: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	93
	
l2789:	
;PR19.c: 93: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	94
	
l2791:	
;PR19.c: 94: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	95
	
l2793:	
;PR19.c: 95: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	96
	
l2795:	
;PR19.c: 96: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	99
	
l2797:	
;PR19.c: 99: PR2=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	100
	
l2799:	
;PR19.c: 100: CCP1CON = 0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	101
	
l2801:	
;PR19.c: 101: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	102
	
l2803:	
;PR19.c: 102: CCP3CON = 0b00001100;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(151)^080h	;volatile
	line	103
	
l2805:	
;PR19.c: 103: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	104
	
l2807:	
;PR19.c: 104: CCPR1L = 0;
	clrf	(21)	;volatile
	line	105
	
l2809:	
;PR19.c: 105: CCPR2L = 0;
	clrf	(27)	;volatile
	line	106
	
l2811:	
;PR19.c: 106: CCPR3L = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	goto	l2813
	line	109
;PR19.c: 109: while(1)
	
l703:	
	line	111
	
l2813:	
;PR19.c: 110: {
;PR19.c: 111: if(RA0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l704
u2850:
	line	113
	
l2815:	
;PR19.c: 112: {
;PR19.c: 113: i+=1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	line	114
	
l2817:	
;PR19.c: 114: if(i==3)i=0;
	movf	(_i),w
	xorlw	03h
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2823
u2860:
	
l2819:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	goto	l2823
	
l705:	
	line	115
;PR19.c: 115: while(RA0 == 0)
	goto	l2823
	
l707:	
	line	117
;PR19.c: 116: {
;PR19.c: 117: RA3=1;
	bsf	(43/8),(43)&7
	line	118
	
l2821:	
;PR19.c: 118: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l2823
	line	119
	
l706:	
	line	115
	
l2823:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l707
u2870:
	goto	l704
	
l708:	
	line	120
	
l704:	
	line	121
;PR19.c: 119: }
;PR19.c: 120: }
;PR19.c: 121: if(RA1 == 0)
	btfsc	(41/8),(41)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l709
u2880:
	goto	l2829
	line	123
	
l2825:	
;PR19.c: 122: {
;PR19.c: 123: while(RA1 == 0)
	goto	l2829
	
l711:	
	line	125
;PR19.c: 124: {
;PR19.c: 125: RA3=1;
	bsf	(43/8),(43)&7
	line	126
	
l2827:	
;PR19.c: 126: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l2829
	line	127
	
l710:	
	line	123
	
l2829:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l711
u2890:
	goto	l2835
	
l712:	
	line	128
;PR19.c: 127: }
;PR19.c: 128: switch(i)
	goto	l2835
	line	130
;PR19.c: 129: {
;PR19.c: 130: case 1:alphamode();
	
l714:	
	
l2831:	
	fcall	_alphamode
	line	131
;PR19.c: 131: case 2:betamode();
	
l715:	
	fcall	_betamode
	line	132
;PR19.c: 132: break;
	goto	l709
	line	133
	
l2833:	
;PR19.c: 133: }
	goto	l709
	line	128
	
l713:	
	
l2835:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    28    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2831
	xorlw	2^1	; case 2
	skipnz
	goto	l715
	goto	l709

	line	133
	
l716:	
	line	134
	
l709:	
	line	135
;PR19.c: 134: }
;PR19.c: 135: RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	line	136
	
l2837:	
;PR19.c: 136: shift_display();
	fcall	_shift_display
	goto	l2813
	line	137
	
l717:	
	line	109
	goto	l2813
	
l718:	
	line	138
	
l719:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_betamode
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

;; *************** function _betamode *****************
;; Defined at:
;;		line 166 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_deg_330
;;		_delay
;;		_deg_0
;;		_deg_30
;;		_deg_150
;;		_deg_180
;;		_deg_210
;;		_m_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text573
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	166
	global	__size_of_betamode
	__size_of_betamode	equ	__end_of_betamode-_betamode
	
_betamode:	
	opt	stack 2
; Regs used in _betamode: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	167
	
l2747:	
;PR19.c: 167: while(i==2)
	goto	l2769
	
l729:	
	line	169
	
l2749:	
;PR19.c: 168: {
;PR19.c: 169: deg_330();
	fcall	_deg_330
	line	170
	
l2751:	
;PR19.c: 170: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	171
	
l2753:	
;PR19.c: 171: deg_0();
	fcall	_deg_0
	line	172
;PR19.c: 172: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	173
	
l2755:	
;PR19.c: 173: deg_30();
	fcall	_deg_30
	line	174
	
l2757:	
;PR19.c: 174: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	175
;PR19.c: 175: deg_150();
	fcall	_deg_150
	line	176
	
l2759:	
;PR19.c: 176: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	177
	
l2761:	
;PR19.c: 177: deg_180();
	fcall	_deg_180
	line	178
;PR19.c: 178: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	179
	
l2763:	
;PR19.c: 179: deg_210();
	fcall	_deg_210
	line	180
	
l2765:	
;PR19.c: 180: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	181
;PR19.c: 181: m_stop();
	fcall	_m_stop
	line	182
	
l2767:	
;PR19.c: 182: delay(500000);
	movlw	0
	movwf	(?_delay+3)
	movlw	07h
	movwf	(?_delay+2)
	movlw	0A1h
	movwf	(?_delay+1)
	movlw	020h
	movwf	(?_delay)

	fcall	_delay
	goto	l2769
	line	183
	
l728:	
	line	167
	
l2769:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	xorlw	02h
	skipnz
	goto	u2841
	goto	u2840
u2841:
	goto	l2749
u2840:
	goto	l731
	
l730:	
	line	184
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_betamode
	__end_of_betamode:
;; =============== function _betamode ends ============

	signat	_betamode,88
	global	_alphamode
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function _alphamode *****************
;; Defined at:
;;		line 144 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_deg_270
;;		_delay
;;		_deg_0
;;		_deg_90
;;		_deg_180
;;		_clockwise
;;		_m_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text574
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	144
	global	__size_of_alphamode
	__size_of_alphamode	equ	__end_of_alphamode-_alphamode
	
_alphamode:	
	opt	stack 2
; Regs used in _alphamode: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	145
	
l2723:	
;PR19.c: 145: while(i==1)
	goto	l2745
	
l723:	
	line	147
	
l2725:	
;PR19.c: 146: {
;PR19.c: 147: deg_270();
	fcall	_deg_270
	line	148
	
l2727:	
;PR19.c: 148: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	149
	
l2729:	
;PR19.c: 149: deg_0();
	fcall	_deg_0
	line	150
;PR19.c: 150: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	151
	
l2731:	
;PR19.c: 151: deg_90();
	fcall	_deg_90
	line	152
	
l2733:	
;PR19.c: 152: delay(400000);
	movlw	0
	movwf	(?_delay+3)
	movlw	06h
	movwf	(?_delay+2)
	movlw	01Ah
	movwf	(?_delay+1)
	movlw	080h
	movwf	(?_delay)

	fcall	_delay
	line	153
;PR19.c: 153: deg_180();
	fcall	_deg_180
	line	154
	
l2735:	
;PR19.c: 154: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	155
	
l2737:	
;PR19.c: 155: deg_270();
	fcall	_deg_270
	line	156
;PR19.c: 156: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	157
	
l2739:	
;PR19.c: 157: clockwise();
	fcall	_clockwise
	line	158
	
l2741:	
;PR19.c: 158: delay(100000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	086h
	movwf	(?_delay+1)
	movlw	0A0h
	movwf	(?_delay)

	fcall	_delay
	line	159
;PR19.c: 159: m_stop();
	fcall	_m_stop
	line	160
	
l2743:	
;PR19.c: 160: delay(500000);
	movlw	0
	movwf	(?_delay+3)
	movlw	07h
	movwf	(?_delay+2)
	movlw	0A1h
	movwf	(?_delay+1)
	movlw	020h
	movwf	(?_delay)

	fcall	_delay
	goto	l2745
	line	161
	
l722:	
	line	145
	
l2745:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	xorlw	01h
	skipnz
	goto	u2831
	goto	u2830
u2831:
	goto	l2725
u2830:
	goto	l725
	
l724:	
	line	162
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of_alphamode
	__end_of_alphamode:
;; =============== function _alphamode ends ============

	signat	_alphamode,88
	global	_deg_210
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function _deg_210 *****************
;; Defined at:
;;		line 290 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text575
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	290
	global	__size_of_deg_210
	__size_of_deg_210	equ	__end_of_deg_210-_deg_210
	
_deg_210:	
	opt	stack 2
; Regs used in _deg_210: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	291
	
l2711:	
;PR19.c: 291: CCPR1L=255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	292
	
l2713:	
;PR19.c: 292: CCPR2L=0;
	clrf	(27)	;volatile
	line	293
	
l2715:	
;PR19.c: 293: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	294
	
l2717:	
;PR19.c: 294: lm_run(0);
	movlw	(0)
	fcall	_lm_run
	line	295
	
l2719:	
;PR19.c: 295: bm_run(1);
	movlw	(01h)
	fcall	_bm_run
	line	296
	
l2721:	
;PR19.c: 296: mode_display("210","Degree");
	movlw	((STR_18-__stringbase))&0ffh
	movwf	(??_deg_210+0)+0
	movf	(??_deg_210+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_mode_display
	line	297
	
l767:	
	return
	opt stack 0
GLOBAL	__end_of_deg_210
	__end_of_deg_210:
;; =============== function _deg_210 ends ============

	signat	_deg_210,88
	global	_deg_150
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function _deg_150 *****************
;; Defined at:
;;		line 271 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_rm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text576
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	271
	global	__size_of_deg_150
	__size_of_deg_150	equ	__end_of_deg_150-_deg_150
	
_deg_150:	
	opt	stack 2
; Regs used in _deg_150: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	272
	
l2699:	
;PR19.c: 272: CCPR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	273
	
l2701:	
;PR19.c: 273: CCPR2L=255;
	movlw	(0FFh)
	movwf	(27)	;volatile
	line	274
	
l2703:	
;PR19.c: 274: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	275
	
l2705:	
;PR19.c: 275: rm_run(1);
	movlw	(01h)
	fcall	_rm_run
	line	276
	
l2707:	
;PR19.c: 276: bm_run(0);
	movlw	(0)
	fcall	_bm_run
	line	277
	
l2709:	
;PR19.c: 277: mode_display("150","Degree");
	movlw	((STR_14-__stringbase))&0ffh
	movwf	(??_deg_150+0)+0
	movf	(??_deg_150+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_mode_display
	line	278
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_deg_150
	__end_of_deg_150:
;; =============== function _deg_150 ends ============

	signat	_deg_150,88
	global	_deg_30
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function _deg_30 *****************
;; Defined at:
;;		line 228 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text577
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	228
	global	__size_of_deg_30
	__size_of_deg_30	equ	__end_of_deg_30-_deg_30
	
_deg_30:	
	opt	stack 2
; Regs used in _deg_30: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	229
	
l2687:	
;PR19.c: 229: CCPR1L=255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	230
	
l2689:	
;PR19.c: 230: CCPR2L=0;
	clrf	(27)	;volatile
	line	231
	
l2691:	
;PR19.c: 231: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	232
	
l2693:	
;PR19.c: 232: lm_run(1);
	movlw	(01h)
	fcall	_lm_run
	line	233
	
l2695:	
;PR19.c: 233: bm_run(0);
	movlw	(0)
	fcall	_bm_run
	line	234
	
l2697:	
;PR19.c: 234: mode_display("30","Degree");
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(??_deg_30+0)+0
	movf	(??_deg_30+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_mode_display
	line	235
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_deg_30
	__end_of_deg_30:
;; =============== function _deg_30 ends ============

	signat	_deg_30,88
	global	_deg_330
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function _deg_330 *****************
;; Defined at:
;;		line 333 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_rm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text578
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	333
	global	__size_of_deg_330
	__size_of_deg_330	equ	__end_of_deg_330-_deg_330
	
_deg_330:	
	opt	stack 2
; Regs used in _deg_330: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	334
	
l2675:	
;PR19.c: 334: CCPR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	335
	
l2677:	
;PR19.c: 335: CCPR2L=255;
	movlw	(0FFh)
	movwf	(27)	;volatile
	line	336
	
l2679:	
;PR19.c: 336: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	337
	
l2681:	
;PR19.c: 337: rm_run(0);
	movlw	(0)
	fcall	_rm_run
	line	338
	
l2683:	
;PR19.c: 338: bm_run(1);
	movlw	(01h)
	fcall	_bm_run
	line	339
	
l2685:	
;PR19.c: 339: mode_display("330","Degree");
	movlw	((STR_26-__stringbase))&0ffh
	movwf	(??_deg_330+0)+0
	movf	(??_deg_330+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_25-__stringbase))&0ffh
	fcall	_mode_display
	line	340
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_deg_330
	__end_of_deg_330:
;; =============== function _deg_330 ends ============

	signat	_deg_330,88
	global	_m_stop
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function _m_stop *****************
;; Defined at:
;;		line 189 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_mode_display
;; This function is called by:
;;		_alphamode
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text579
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	189
	global	__size_of_m_stop
	__size_of_m_stop	equ	__end_of_m_stop-_m_stop
	
_m_stop:	
	opt	stack 2
; Regs used in _m_stop: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	190
	
l2671:	
;PR19.c: 190: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	191
;PR19.c: 191: RC3=0;
	bcf	(59/8),(59)&7
	line	192
;PR19.c: 192: RC4=0;
	bcf	(60/8),(60)&7
	line	193
;PR19.c: 193: RC5=0;
	bcf	(61/8),(61)&7
	line	194
;PR19.c: 194: RB3=0;
	bcf	(51/8),(51)&7
	line	195
;PR19.c: 195: RB4=0;
	bcf	(52/8),(52)&7
	line	196
	
l2673:	
;PR19.c: 196: mode_display("Flexibot","Stop");
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_m_stop+0)+0
	movf	(??_m_stop+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_mode_display
	line	197
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of_m_stop
	__end_of_m_stop:
;; =============== function _m_stop ends ============

	signat	_m_stop,88
	global	_clockwise
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _clockwise *****************
;; Defined at:
;;		line 343 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_rm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_alphamode
;; This function uses a non-reentrant model
;;
psect	text580
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	343
	global	__size_of_clockwise
	__size_of_clockwise	equ	__end_of_clockwise-_clockwise
	
_clockwise:	
	opt	stack 2
; Regs used in _clockwise: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	344
	
l2661:	
;PR19.c: 344: CCPR1L=CCPR2L=CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	movwf	(21)	;volatile
	line	345
	
l2663:	
;PR19.c: 345: lm_run(1);
	movlw	(01h)
	fcall	_lm_run
	line	346
	
l2665:	
;PR19.c: 346: rm_run(1);
	movlw	(01h)
	fcall	_rm_run
	line	347
	
l2667:	
;PR19.c: 347: bm_run(1);
	movlw	(01h)
	fcall	_bm_run
	line	348
	
l2669:	
;PR19.c: 348: mode_display("Clockwise","");
	movlw	((STR_28-__stringbase))&0ffh
	movwf	(??_clockwise+0)+0
	movf	(??_clockwise+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_27-__stringbase))&0ffh
	fcall	_mode_display
	line	349
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_clockwise
	__end_of_clockwise:
;; =============== function _clockwise ends ============

	signat	_clockwise,88
	global	_deg_180
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _deg_180 *****************
;; Defined at:
;;		line 281 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_rm_run
;;		_mode_display
;; This function is called by:
;;		_alphamode
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text581
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	281
	global	__size_of_deg_180
	__size_of_deg_180	equ	__end_of_deg_180-_deg_180
	
_deg_180:	
	opt	stack 2
; Regs used in _deg_180: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	282
	
l2651:	
;PR19.c: 282: CCPR1L=CCPR2L=255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	movwf	(21)	;volatile
	line	283
	
l2653:	
;PR19.c: 283: CCPR3L=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	284
	
l2655:	
;PR19.c: 284: lm_run(0);
	movlw	(0)
	fcall	_lm_run
	line	285
	
l2657:	
;PR19.c: 285: rm_run(1);
	movlw	(01h)
	fcall	_rm_run
	line	286
	
l2659:	
;PR19.c: 286: mode_display("180","Degree");
	movlw	((STR_16-__stringbase))&0ffh
	movwf	(??_deg_180+0)+0
	movf	(??_deg_180+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_mode_display
	line	287
	
l764:	
	return
	opt stack 0
GLOBAL	__end_of_deg_180
	__end_of_deg_180:
;; =============== function _deg_180 ends ============

	signat	_deg_180,88
	global	_deg_90
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

;; *************** function _deg_90 *****************
;; Defined at:
;;		line 249 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_rm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_alphamode
;; This function uses a non-reentrant model
;;
psect	text582
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	249
	global	__size_of_deg_90
	__size_of_deg_90	equ	__end_of_deg_90-_deg_90
	
_deg_90:	
	opt	stack 2
; Regs used in _deg_90: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	250
	
l2641:	
;PR19.c: 250: CCPR1L=190;
	movlw	(0BEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	251
;PR19.c: 251: CCPR2L=190;
	movlw	(0BEh)
	movwf	(27)	;volatile
	line	252
;PR19.c: 252: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	253
	
l2643:	
;PR19.c: 253: lm_run(1);
	movlw	(01h)
	fcall	_lm_run
	line	254
	
l2645:	
;PR19.c: 254: rm_run(1);
	movlw	(01h)
	fcall	_rm_run
	line	255
	
l2647:	
;PR19.c: 255: bm_run(0);
	movlw	(0)
	fcall	_bm_run
	line	256
	
l2649:	
;PR19.c: 256: mode_display("90","Degree");
	movlw	((STR_10-__stringbase))&0ffh
	movwf	(??_deg_90+0)+0
	movf	(??_deg_90+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_mode_display
	line	257
	
l755:	
	return
	opt stack 0
GLOBAL	__end_of_deg_90
	__end_of_deg_90:
;; =============== function _deg_90 ends ============

	signat	_deg_90,88
	global	_deg_0
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function _deg_0 *****************
;; Defined at:
;;		line 219 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_rm_run
;;		_mode_display
;; This function is called by:
;;		_alphamode
;;		_betamode
;; This function uses a non-reentrant model
;;
psect	text583
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	219
	global	__size_of_deg_0
	__size_of_deg_0	equ	__end_of_deg_0-_deg_0
	
_deg_0:	
	opt	stack 2
; Regs used in _deg_0: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	220
	
l2631:	
;PR19.c: 220: CCPR1L=CCPR2L=255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	movwf	(21)	;volatile
	line	221
	
l2633:	
;PR19.c: 221: CCPR3L=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	222
	
l2635:	
;PR19.c: 222: lm_run(1);
	movlw	(01h)
	fcall	_lm_run
	line	223
	
l2637:	
;PR19.c: 223: rm_run(0);
	movlw	(0)
	fcall	_rm_run
	line	224
	
l2639:	
;PR19.c: 224: mode_display("0","Degree");
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(??_deg_0+0)+0
	movf	(??_deg_0+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_mode_display
	line	225
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of_deg_0
	__end_of_deg_0:
;; =============== function _deg_0 ends ============

	signat	_deg_0,88
	global	_deg_270
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function _deg_270 *****************
;; Defined at:
;;		line 311 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lm_run
;;		_rm_run
;;		_bm_run
;;		_mode_display
;; This function is called by:
;;		_alphamode
;; This function uses a non-reentrant model
;;
psect	text584
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	311
	global	__size_of_deg_270
	__size_of_deg_270	equ	__end_of_deg_270-_deg_270
	
_deg_270:	
	opt	stack 2
; Regs used in _deg_270: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	312
	
l2621:	
;PR19.c: 312: CCPR1L=190;
	movlw	(0BEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	313
;PR19.c: 313: CCPR2L=190;
	movlw	(0BEh)
	movwf	(27)	;volatile
	line	314
;PR19.c: 314: CCPR3L=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	315
	
l2623:	
;PR19.c: 315: lm_run(0);
	movlw	(0)
	fcall	_lm_run
	line	316
	
l2625:	
;PR19.c: 316: rm_run(0);
	movlw	(0)
	fcall	_rm_run
	line	317
	
l2627:	
;PR19.c: 317: bm_run(1);
	movlw	(01h)
	fcall	_bm_run
	line	318
	
l2629:	
;PR19.c: 318: mode_display("270","Degree");
	movlw	((STR_22-__stringbase))&0ffh
	movwf	(??_deg_270+0)+0
	movf	(??_deg_270+0)+0,w
	movwf	(?_mode_display)
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_mode_display
	line	319
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_deg_270
	__end_of_deg_270:
;; =============== function _deg_270 ends ============

	signat	_deg_270,88
	global	_mode_display
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function _mode_display *****************
;; Defined at:
;;		line 474 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     PTR const unsigned char 
;;		 -> STR_29(14), STR_27(10), STR_25(4), STR_23(4), 
;;		 -> STR_21(4), STR_19(4), STR_17(4), STR_15(4), 
;;		 -> STR_13(4), STR_11(4), STR_9(3), STR_7(3), 
;;		 -> STR_5(3), STR_3(2), STR_1(9), 
;;  y               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_30(1), STR_28(1), STR_26(7), STR_24(7), 
;;		 -> STR_22(7), STR_20(7), STR_18(7), STR_16(7), 
;;		 -> STR_14(7), STR_12(7), STR_10(7), STR_8(7), 
;;		 -> STR_6(7), STR_4(7), STR_2(5), 
;; Auto vars:     Size  Location     Type
;;  x               1   12[COMMON] PTR const unsigned char 
;;		 -> STR_29(14), STR_27(10), STR_25(4), STR_23(4), 
;;		 -> STR_21(4), STR_19(4), STR_17(4), STR_15(4), 
;;		 -> STR_13(4), STR_11(4), STR_9(3), STR_7(3), 
;;		 -> STR_5(3), STR_3(2), STR_1(9), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_delay
;; This function is called by:
;;		_m_stop
;;		_deg_0
;;		_deg_30
;;		_deg_90
;;		_deg_150
;;		_deg_180
;;		_deg_210
;;		_deg_270
;;		_deg_330
;;		_clockwise
;;		_deg_60
;;		_deg_120
;;		_deg_240
;;		_deg_300
;;		_anticlockwise
;; This function uses a non-reentrant model
;;
psect	text585
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	474
	global	__size_of_mode_display
	__size_of_mode_display	equ	__end_of_mode_display-_mode_display
	
_mode_display:	
	opt	stack 2
; Regs used in _mode_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;mode_display@x stored from wreg
	movwf	(mode_display@x)
	line	475
	
l2609:	
;PR19.c: 475: RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	line	476
;PR19.c: 476: if(RA0 == 0)return;
	btfsc	(40/8),(40)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l2613
u2820:
	goto	l844
	
l2611:	
	goto	l844
	
l843:	
	line	477
	
l2613:	
;PR19.c: 477: lcd_clr();
	fcall	_lcd_clr
	line	478
;PR19.c: 478: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	479
	
l2615:	
;PR19.c: 479: send_string(x);
	movf	(mode_display@x),w
	fcall	_send_string
	line	480
	
l2617:	
;PR19.c: 480: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	481
;PR19.c: 481: send_string(y);
	movf	(mode_display@y),w
	fcall	_send_string
	line	482
	
l2619:	
;PR19.c: 482: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	483
	
l844:	
	return
	opt stack 0
GLOBAL	__end_of_mode_display
	__end_of_mode_display:
;; =============== function _mode_display ends ============

	signat	_mode_display,8312
	global	_shift_display
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

;; *************** function _shift_display *****************
;; Defined at:
;;		line 417 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text586
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	417
	global	__size_of_shift_display
	__size_of_shift_display	equ	__end_of_shift_display-_shift_display
	
_shift_display:	
	opt	stack 4
; Regs used in _shift_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	418
	
l2527:	
;PR19.c: 418: switch(i)
	goto	l2607
	line	420
;PR19.c: 419: {
;PR19.c: 420: case 0:
	
l816:	
	line	421
	
l2529:	
;PR19.c: 421: shift=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_shift)
	line	422
	
l2531:	
;PR19.c: 422: lcd_clr();
	fcall	_lcd_clr
	line	423
	
l2533:	
;PR19.c: 423: lcd_goto(1);
	movlw	(01h)
	fcall	_lcd_goto
	line	424
	
l2535:	
;PR19.c: 424: send_string("Cytron");
	movlw	((STR_31-__stringbase))&0ffh
	fcall	_send_string
	line	425
	
l2537:	
;PR19.c: 425: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	426
	
l2539:	
;PR19.c: 426: send_string("Flexibot");
	movlw	((STR_32-__stringbase))&0ffh
	fcall	_send_string
	line	427
;PR19.c: 427: for( ;shift<8;shift+=1)
	goto	l2547
	line	428
	
l818:	
	line	429
;PR19.c: 428: {
;PR19.c: 429: if(RA0 == 0)return;
	btfsc	(40/8),(40)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l2543
u2700:
	goto	l820
	
l2541:	
	goto	l820
	
l819:	
	line	430
	
l2543:	
;PR19.c: 430: send_config(0b00011100);
	movlw	(01Ch)
	fcall	_send_config
	line	431
;PR19.c: 431: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	line	427
	
l2545:	
	movlw	(01h)
	movwf	(??_shift_display+0)+0
	movf	(??_shift_display+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_shift),f
	goto	l2547
	
l817:	
	
l2547:	
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_shift),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l818
u2710:
	goto	l2555
	
l821:	
	line	433
;PR19.c: 432: }
;PR19.c: 433: for( ;shift>0;shift-=1)
	goto	l2555
	line	434
	
l823:	
	line	435
;PR19.c: 434: {
;PR19.c: 435: if(RA0 == 0)return;
	btfsc	(40/8),(40)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l2551
u2720:
	goto	l820
	
l2549:	
	goto	l820
	
l824:	
	line	436
	
l2551:	
;PR19.c: 436: send_config(0b00011000);
	movlw	(018h)
	fcall	_send_config
	line	437
;PR19.c: 437: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	line	433
	
l2553:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_shift),f
	goto	l2555
	
l822:	
	
l2555:	
	movf	(_shift),f
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l823
u2730:
	goto	l820
	
l825:	
	line	439
;PR19.c: 438: }
;PR19.c: 439: break;
	goto	l820
	line	440
;PR19.c: 440: case 1:
	
l827:	
	line	441
	
l2557:	
;PR19.c: 441: shift=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_shift)
	line	442
	
l2559:	
;PR19.c: 442: lcd_clr();
	fcall	_lcd_clr
	line	443
	
l2561:	
;PR19.c: 443: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	444
	
l2563:	
;PR19.c: 444: send_string("Cytron Flexibot");
	movlw	((STR_33-__stringbase))&0ffh
	fcall	_send_string
	line	445
	
l2565:	
;PR19.c: 445: lcd_goto(22);
	movlw	(016h)
	fcall	_lcd_goto
	line	446
	
l2567:	
;PR19.c: 446: send_string("Alpha Mode?");
	movlw	((STR_34-__stringbase))&0ffh
	fcall	_send_string
	line	447
	
l2569:	
;PR19.c: 447: if(RA0 == 0 || RA1 ==0)return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l820
u2740:
	
l2571:	
	btfsc	(41/8),(41)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l2573
u2750:
	goto	l820
	
l830:	
	goto	l820
	
l828:	
	line	448
	
l2573:	
;PR19.c: 448: send_config(0b00011100);
	movlw	(01Ch)
	fcall	_send_config
	line	449
;PR19.c: 449: delay(80000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	038h
	movwf	(?_delay+1)
	movlw	080h
	movwf	(?_delay)

	fcall	_delay
	line	450
	
l2575:	
;PR19.c: 450: if(RA0 == 0 || RA1 ==0)return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l820
u2760:
	
l2577:	
	btfsc	(41/8),(41)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2579
u2770:
	goto	l820
	
l833:	
	goto	l820
	
l831:	
	line	451
	
l2579:	
;PR19.c: 451: send_config(0b00011000);
	movlw	(018h)
	fcall	_send_config
	line	452
;PR19.c: 452: delay(80000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	038h
	movwf	(?_delay+1)
	movlw	080h
	movwf	(?_delay)

	fcall	_delay
	line	453
;PR19.c: 453: break;
	goto	l820
	line	454
;PR19.c: 454: case 2:
	
l834:	
	line	455
	
l2581:	
;PR19.c: 455: shift=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_shift)
	line	456
	
l2583:	
;PR19.c: 456: lcd_clr();
	fcall	_lcd_clr
	line	457
	
l2585:	
;PR19.c: 457: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	458
	
l2587:	
;PR19.c: 458: send_string("Cytron Flexibot");
	movlw	((STR_35-__stringbase))&0ffh
	fcall	_send_string
	line	459
	
l2589:	
;PR19.c: 459: lcd_goto(22);
	movlw	(016h)
	fcall	_lcd_goto
	line	460
	
l2591:	
;PR19.c: 460: send_string("Beta Mode?");
	movlw	((STR_36-__stringbase))&0ffh
	fcall	_send_string
	line	461
	
l2593:	
;PR19.c: 461: if(RA0 == 0 || RA1 ==0)return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l820
u2780:
	
l2595:	
	btfsc	(41/8),(41)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l2597
u2790:
	goto	l820
	
l837:	
	goto	l820
	
l835:	
	line	462
	
l2597:	
;PR19.c: 462: send_config(0b00011100);
	movlw	(01Ch)
	fcall	_send_config
	line	463
;PR19.c: 463: delay(80000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	038h
	movwf	(?_delay+1)
	movlw	080h
	movwf	(?_delay)

	fcall	_delay
	line	464
	
l2599:	
;PR19.c: 464: if(RA0 == 0 || RA1 ==0)return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l820
u2800:
	
l2601:	
	btfsc	(41/8),(41)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2603
u2810:
	goto	l820
	
l840:	
	goto	l820
	
l838:	
	line	465
	
l2603:	
;PR19.c: 465: send_config(0b00011000);
	movlw	(018h)
	fcall	_send_config
	line	466
;PR19.c: 466: delay(80000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	038h
	movwf	(?_delay+1)
	movlw	080h
	movwf	(?_delay)

	fcall	_delay
	line	467
;PR19.c: 467: break;
	goto	l820
	line	468
	
l2605:	
;PR19.c: 468: }
	goto	l820
	line	418
	
l815:	
	
l2607:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    28    19 (fixed)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2529
	xorlw	1^0	; case 1
	skipnz
	goto	l2557
	xorlw	2^1	; case 2
	skipnz
	goto	l2581
	goto	l820

	line	468
	
l826:	
	line	469
	
l820:	
	return
	opt stack 0
GLOBAL	__end_of_shift_display
	__end_of_shift_display:
;; =============== function _shift_display ends ============

	signat	_shift_display,88
	global	_send_string
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function _send_string *****************
;; Defined at:
;;		line 410 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_36(11), STR_35(16), STR_34(12), STR_33(16), 
;;		 -> STR_32(9), STR_31(7), STR_30(1), STR_29(14), 
;;		 -> STR_28(1), STR_27(10), STR_26(7), STR_25(4), 
;;		 -> STR_24(7), STR_23(4), STR_22(7), STR_21(4), 
;;		 -> STR_20(7), STR_19(4), STR_18(7), STR_17(4), 
;;		 -> STR_16(7), STR_15(4), STR_14(7), STR_13(4), 
;;		 -> STR_12(7), STR_11(4), STR_10(7), STR_9(3), 
;;		 -> STR_8(7), STR_7(3), STR_6(7), STR_5(3), 
;;		 -> STR_4(7), STR_3(2), STR_2(5), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_36(11), STR_35(16), STR_34(12), STR_33(16), 
;;		 -> STR_32(9), STR_31(7), STR_30(1), STR_29(14), 
;;		 -> STR_28(1), STR_27(10), STR_26(7), STR_25(4), 
;;		 -> STR_24(7), STR_23(4), STR_22(7), STR_21(4), 
;;		 -> STR_20(7), STR_19(4), STR_18(7), STR_17(4), 
;;		 -> STR_16(7), STR_15(4), STR_14(7), STR_13(4), 
;;		 -> STR_12(7), STR_11(4), STR_10(7), STR_9(3), 
;;		 -> STR_8(7), STR_7(3), STR_6(7), STR_5(3), 
;;		 -> STR_4(7), STR_3(2), STR_2(5), STR_1(9), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_shift_display
;;		_mode_display
;; This function uses a non-reentrant model
;;
psect	text587
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	410
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 4
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	411
	
l2517:	
;PR19.c: 411: while (s && *s)send_char (*s++);
	goto	l2523
	
l808:	
	
l2519:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2521:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2523
	
l807:	
	
l2523:	
	movf	(send_string@s),w
	skipz
	goto	u2680
	goto	l812
u2680:
	
l2525:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2519
u2690:
	goto	l812
	
l810:	
	goto	l812
	
l811:	
	line	412
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_clr
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 404 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_shift_display
;;		_mode_display
;; This function uses a non-reentrant model
;;
psect	text588
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	404
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 4
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	405
	
l2515:	
;PR19.c: 405: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	406
;PR19.c: 406: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	407
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_lcd_goto
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 391 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_shift_display
;;		_mode_display
;; This function uses a non-reentrant model
;;
psect	text589
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	391
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	392
	
l2507:	
;PR19.c: 392: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2511
u2670:
	line	394
	
l2509:	
;PR19.c: 393: {
;PR19.c: 394: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	395
;PR19.c: 395: }
	goto	l801
	line	396
	
l799:	
	line	398
	
l2511:	
;PR19.c: 396: else
;PR19.c: 397: {
;PR19.c: 398: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	399
	
l2513:	
;PR19.c: 399: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l801
	line	400
	
l800:	
	line	401
	
l801:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_send_char
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function _send_char *****************
;; Defined at:
;;		line 380 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text590
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	380
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 4
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	381
	
l2495:	
;PR19.c: 381: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	382
	
l2497:	
;PR19.c: 382: PORTD=data;
	movf	(send_char@data),w
	movwf	(8)	;volatile
	line	383
	
l2499:	
;PR19.c: 383: RB6=1;
	bsf	(54/8),(54)&7
	line	384
	
l2501:	
;PR19.c: 384: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	385
	
l2503:	
;PR19.c: 385: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	386
	
l2505:	
;PR19.c: 386: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	387
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function _send_config *****************
;; Defined at:
;;		line 370 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;;		_shift_display
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	370
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	371
	
l2483:	
;PR19.c: 371: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	372
	
l2485:	
;PR19.c: 372: PORTD=data;
	movf	(send_config@data),w
	movwf	(8)	;volatile
	line	373
	
l2487:	
;PR19.c: 373: RB6=1;
	bsf	(54/8),(54)&7
	line	374
	
l2489:	
;PR19.c: 374: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	375
	
l2491:	
;PR19.c: 375: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	376
	
l2493:	
;PR19.c: 376: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	377
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_bm_run
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _bm_run *****************
;; Defined at:
;;		line 212 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  dir             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dir             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_deg_30
;;		_deg_90
;;		_deg_150
;;		_deg_210
;;		_deg_270
;;		_deg_330
;;		_clockwise
;;		_deg_60
;;		_deg_120
;;		_deg_240
;;		_deg_300
;;		_anticlockwise
;; This function uses a non-reentrant model
;;
psect	text592
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	212
	global	__size_of_bm_run
	__size_of_bm_run	equ	__end_of_bm_run-_bm_run
	
_bm_run:	
	opt	stack 5
; Regs used in _bm_run: [wreg]
;bm_run@dir stored from wreg
	movwf	(bm_run@dir)
	line	213
	
l2431:	
;PR19.c: 213: RB3=!dir;
	movf	(bm_run@dir)
	skipnz
	goto	u2631
	goto	u2630
	
u2631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	u2644
u2630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
u2644:
	line	214
;PR19.c: 214: RB4=dir;
	btfsc	(bm_run@dir),0
	goto	u2651
	goto	u2650
	
u2651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u2664
u2650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u2664:
	line	215
	
l743:	
	return
	opt stack 0
GLOBAL	__end_of_bm_run
	__end_of_bm_run:
;; =============== function _bm_run ends ============

	signat	_bm_run,4216
	global	_rm_run
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function _rm_run *****************
;; Defined at:
;;		line 206 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  dir             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dir             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_deg_0
;;		_deg_90
;;		_deg_150
;;		_deg_180
;;		_deg_270
;;		_deg_330
;;		_clockwise
;;		_deg_60
;;		_deg_120
;;		_deg_240
;;		_deg_300
;;		_anticlockwise
;; This function uses a non-reentrant model
;;
psect	text593
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	206
	global	__size_of_rm_run
	__size_of_rm_run	equ	__end_of_rm_run-_rm_run
	
_rm_run:	
	opt	stack 5
; Regs used in _rm_run: [wreg]
;rm_run@dir stored from wreg
	movwf	(rm_run@dir)
	line	207
	
l2429:	
;PR19.c: 207: RC4=dir;
	btfsc	(rm_run@dir),0
	goto	u2591
	goto	u2590
	
u2591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u2604
u2590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u2604:
	line	208
;PR19.c: 208: RC5=!dir;
	movf	(rm_run@dir)
	skipnz
	goto	u2611
	goto	u2610
	
u2611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	u2624
u2610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
u2624:
	line	209
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of_rm_run
	__end_of_rm_run:
;; =============== function _rm_run ends ============

	signat	_rm_run,4216
	global	_lm_run
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:

;; *************** function _lm_run *****************
;; Defined at:
;;		line 200 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  dir             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dir             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_deg_0
;;		_deg_30
;;		_deg_90
;;		_deg_180
;;		_deg_210
;;		_deg_270
;;		_clockwise
;;		_deg_60
;;		_deg_120
;;		_deg_240
;;		_deg_300
;;		_anticlockwise
;; This function uses a non-reentrant model
;;
psect	text594
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	200
	global	__size_of_lm_run
	__size_of_lm_run	equ	__end_of_lm_run-_lm_run
	
_lm_run:	
	opt	stack 5
; Regs used in _lm_run: [wreg]
;lm_run@dir stored from wreg
	movwf	(lm_run@dir)
	line	201
	
l2427:	
;PR19.c: 201: RC0=dir;
	btfsc	(lm_run@dir),0
	goto	u2551
	goto	u2550
	
u2551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2564
u2550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2564:
	line	202
;PR19.c: 202: RC3=!dir;
	movf	(lm_run@dir)
	skipnz
	goto	u2571
	goto	u2570
	
u2571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u2584
u2570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u2584:
	line	203
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of_lm_run
	__end_of_lm_run:
;; =============== function _lm_run ends ============

	signat	_lm_run,4216
	global	_delay
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function _delay *****************
;; Defined at:
;;		line 363 in file "C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_alphamode
;;		_betamode
;;		_send_config
;;		_send_char
;;		_lcd_clr
;;		_shift_display
;;		_mode_display
;; This function uses a non-reentrant model
;;
psect	text595
	file	"C:\Users\Phang\Desktop\9.80\PR 19\PR19.c"
	line	363
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	364
	
l2421:	
;PR19.c: 364: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2425
u2520:
	goto	l790
	
l2423:	
	goto	l790
	
l788:	
	
l2425:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2535
	goto	u2536
u2535:
	subwf	(delay@data+1),f
u2536:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2537
	goto	u2538
u2537:
	subwf	(delay@data+2),f
u2538:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2539
	goto	u2530
u2539:
	subwf	(delay@data+3),f
u2530:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2425
u2540:
	goto	l790
	
l789:	
	line	365
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
