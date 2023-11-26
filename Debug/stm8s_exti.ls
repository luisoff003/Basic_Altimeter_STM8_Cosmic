   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 53 void EXTI_DeInit(void)
  42                     ; 54 {
  44                     	switch	.text
  45  0000               _EXTI_DeInit:
  49                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  51  0000 725f50a0      	clr	20640
  52                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  54  0004 725f50a1      	clr	20641
  55                     ; 57 }
  58  0008 81            	ret
 184                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 184                     ; 71 {
 185                     	switch	.text
 186  0009               _EXTI_SetExtIntSensitivity:
 188  0009 89            	pushw	x
 189       00000000      OFST:	set	0
 192                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 194  000a 9e            	ld	a,xh
 195  000b 4d            	tnz	a
 196  000c 2714          	jreq	L21
 197  000e 9e            	ld	a,xh
 198  000f a101          	cp	a,#1
 199  0011 270f          	jreq	L21
 200  0013 9e            	ld	a,xh
 201  0014 a102          	cp	a,#2
 202  0016 270a          	jreq	L21
 203  0018 9e            	ld	a,xh
 204  0019 a103          	cp	a,#3
 205  001b 2705          	jreq	L21
 206  001d 9e            	ld	a,xh
 207  001e a104          	cp	a,#4
 208  0020 2603          	jrne	L01
 209  0022               L21:
 210  0022 4f            	clr	a
 211  0023 2010          	jra	L41
 212  0025               L01:
 213  0025 ae0049        	ldw	x,#73
 214  0028 89            	pushw	x
 215  0029 ae0000        	ldw	x,#0
 216  002c 89            	pushw	x
 217  002d ae0000        	ldw	x,#L111
 218  0030 cd0000        	call	_assert_failed
 220  0033 5b04          	addw	sp,#4
 221  0035               L41:
 222                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 224  0035 0d02          	tnz	(OFST+2,sp)
 225  0037 2712          	jreq	L02
 226  0039 7b02          	ld	a,(OFST+2,sp)
 227  003b a101          	cp	a,#1
 228  003d 270c          	jreq	L02
 229  003f 7b02          	ld	a,(OFST+2,sp)
 230  0041 a102          	cp	a,#2
 231  0043 2706          	jreq	L02
 232  0045 7b02          	ld	a,(OFST+2,sp)
 233  0047 a103          	cp	a,#3
 234  0049 2603          	jrne	L61
 235  004b               L02:
 236  004b 4f            	clr	a
 237  004c 2010          	jra	L22
 238  004e               L61:
 239  004e ae004a        	ldw	x,#74
 240  0051 89            	pushw	x
 241  0052 ae0000        	ldw	x,#0
 242  0055 89            	pushw	x
 243  0056 ae0000        	ldw	x,#L111
 244  0059 cd0000        	call	_assert_failed
 246  005c 5b04          	addw	sp,#4
 247  005e               L22:
 248                     ; 77   switch (Port)
 250  005e 7b01          	ld	a,(OFST+1,sp)
 252                     ; 99   default:
 252                     ; 100     break;
 253  0060 4d            	tnz	a
 254  0061 270e          	jreq	L12
 255  0063 4a            	dec	a
 256  0064 271d          	jreq	L32
 257  0066 4a            	dec	a
 258  0067 272e          	jreq	L52
 259  0069 4a            	dec	a
 260  006a 2742          	jreq	L72
 261  006c 4a            	dec	a
 262  006d 2756          	jreq	L13
 263  006f 2064          	jra	L511
 264  0071               L12:
 265                     ; 79   case EXTI_PORT_GPIOA:
 265                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 267  0071 c650a0        	ld	a,20640
 268  0074 a4fc          	and	a,#252
 269  0076 c750a0        	ld	20640,a
 270                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 272  0079 c650a0        	ld	a,20640
 273  007c 1a02          	or	a,(OFST+2,sp)
 274  007e c750a0        	ld	20640,a
 275                     ; 82     break;
 277  0081 2052          	jra	L511
 278  0083               L32:
 279                     ; 83   case EXTI_PORT_GPIOB:
 279                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 281  0083 c650a0        	ld	a,20640
 282  0086 a4f3          	and	a,#243
 283  0088 c750a0        	ld	20640,a
 284                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 286  008b 7b02          	ld	a,(OFST+2,sp)
 287  008d 48            	sll	a
 288  008e 48            	sll	a
 289  008f ca50a0        	or	a,20640
 290  0092 c750a0        	ld	20640,a
 291                     ; 86     break;
 293  0095 203e          	jra	L511
 294  0097               L52:
 295                     ; 87   case EXTI_PORT_GPIOC:
 295                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 297  0097 c650a0        	ld	a,20640
 298  009a a4cf          	and	a,#207
 299  009c c750a0        	ld	20640,a
 300                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 302  009f 7b02          	ld	a,(OFST+2,sp)
 303  00a1 97            	ld	xl,a
 304  00a2 a610          	ld	a,#16
 305  00a4 42            	mul	x,a
 306  00a5 9f            	ld	a,xl
 307  00a6 ca50a0        	or	a,20640
 308  00a9 c750a0        	ld	20640,a
 309                     ; 90     break;
 311  00ac 2027          	jra	L511
 312  00ae               L72:
 313                     ; 91   case EXTI_PORT_GPIOD:
 313                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 315  00ae c650a0        	ld	a,20640
 316  00b1 a43f          	and	a,#63
 317  00b3 c750a0        	ld	20640,a
 318                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 320  00b6 7b02          	ld	a,(OFST+2,sp)
 321  00b8 97            	ld	xl,a
 322  00b9 a640          	ld	a,#64
 323  00bb 42            	mul	x,a
 324  00bc 9f            	ld	a,xl
 325  00bd ca50a0        	or	a,20640
 326  00c0 c750a0        	ld	20640,a
 327                     ; 94     break;
 329  00c3 2010          	jra	L511
 330  00c5               L13:
 331                     ; 95   case EXTI_PORT_GPIOE:
 331                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 333  00c5 c650a1        	ld	a,20641
 334  00c8 a4fc          	and	a,#252
 335  00ca c750a1        	ld	20641,a
 336                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 338  00cd c650a1        	ld	a,20641
 339  00d0 1a02          	or	a,(OFST+2,sp)
 340  00d2 c750a1        	ld	20641,a
 341                     ; 98     break;
 343  00d5               L33:
 344                     ; 99   default:
 344                     ; 100     break;
 346  00d5               L511:
 347                     ; 102 }
 350  00d5 85            	popw	x
 351  00d6 81            	ret
 410                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 410                     ; 112 {
 411                     	switch	.text
 412  00d7               _EXTI_SetTLISensitivity:
 414  00d7 88            	push	a
 415       00000000      OFST:	set	0
 418                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 420  00d8 4d            	tnz	a
 421  00d9 2704          	jreq	L03
 422  00db a104          	cp	a,#4
 423  00dd 2603          	jrne	L62
 424  00df               L03:
 425  00df 4f            	clr	a
 426  00e0 2010          	jra	L23
 427  00e2               L62:
 428  00e2 ae0072        	ldw	x,#114
 429  00e5 89            	pushw	x
 430  00e6 ae0000        	ldw	x,#0
 431  00e9 89            	pushw	x
 432  00ea ae0000        	ldw	x,#L111
 433  00ed cd0000        	call	_assert_failed
 435  00f0 5b04          	addw	sp,#4
 436  00f2               L23:
 437                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 439  00f2 721550a1      	bres	20641,#2
 440                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 442  00f6 c650a1        	ld	a,20641
 443  00f9 1a01          	or	a,(OFST+1,sp)
 444  00fb c750a1        	ld	20641,a
 445                     ; 119 }
 448  00fe 84            	pop	a
 449  00ff 81            	ret
 496                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 496                     ; 127 {
 497                     	switch	.text
 498  0100               _EXTI_GetExtIntSensitivity:
 500  0100 88            	push	a
 501  0101 88            	push	a
 502       00000001      OFST:	set	1
 505                     ; 128   uint8_t value = 0;
 507  0102 0f01          	clr	(OFST+0,sp)
 509                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 511  0104 4d            	tnz	a
 512  0105 2710          	jreq	L04
 513  0107 a101          	cp	a,#1
 514  0109 270c          	jreq	L04
 515  010b a102          	cp	a,#2
 516  010d 2708          	jreq	L04
 517  010f a103          	cp	a,#3
 518  0111 2704          	jreq	L04
 519  0113 a104          	cp	a,#4
 520  0115 2603          	jrne	L63
 521  0117               L04:
 522  0117 4f            	clr	a
 523  0118 2010          	jra	L24
 524  011a               L63:
 525  011a ae0083        	ldw	x,#131
 526  011d 89            	pushw	x
 527  011e ae0000        	ldw	x,#0
 528  0121 89            	pushw	x
 529  0122 ae0000        	ldw	x,#L111
 530  0125 cd0000        	call	_assert_failed
 532  0128 5b04          	addw	sp,#4
 533  012a               L24:
 534                     ; 133   switch (Port)
 536  012a 7b02          	ld	a,(OFST+1,sp)
 538                     ; 150   default:
 538                     ; 151     break;
 539  012c 4d            	tnz	a
 540  012d 270e          	jreq	L541
 541  012f 4a            	dec	a
 542  0130 2714          	jreq	L741
 543  0132 4a            	dec	a
 544  0133 271c          	jreq	L151
 545  0135 4a            	dec	a
 546  0136 2725          	jreq	L351
 547  0138 4a            	dec	a
 548  0139 2730          	jreq	L551
 549  013b 2035          	jra	L502
 550  013d               L541:
 551                     ; 135   case EXTI_PORT_GPIOA:
 551                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 553  013d c650a0        	ld	a,20640
 554  0140 a403          	and	a,#3
 555  0142 6b01          	ld	(OFST+0,sp),a
 557                     ; 137     break;
 559  0144 202c          	jra	L502
 560  0146               L741:
 561                     ; 138   case EXTI_PORT_GPIOB:
 561                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 563  0146 c650a0        	ld	a,20640
 564  0149 a40c          	and	a,#12
 565  014b 44            	srl	a
 566  014c 44            	srl	a
 567  014d 6b01          	ld	(OFST+0,sp),a
 569                     ; 140     break;
 571  014f 2021          	jra	L502
 572  0151               L151:
 573                     ; 141   case EXTI_PORT_GPIOC:
 573                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 575  0151 c650a0        	ld	a,20640
 576  0154 a430          	and	a,#48
 577  0156 4e            	swap	a
 578  0157 a40f          	and	a,#15
 579  0159 6b01          	ld	(OFST+0,sp),a
 581                     ; 143     break;
 583  015b 2015          	jra	L502
 584  015d               L351:
 585                     ; 144   case EXTI_PORT_GPIOD:
 585                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 587  015d c650a0        	ld	a,20640
 588  0160 a4c0          	and	a,#192
 589  0162 4e            	swap	a
 590  0163 44            	srl	a
 591  0164 44            	srl	a
 592  0165 a403          	and	a,#3
 593  0167 6b01          	ld	(OFST+0,sp),a
 595                     ; 146     break;
 597  0169 2007          	jra	L502
 598  016b               L551:
 599                     ; 147   case EXTI_PORT_GPIOE:
 599                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 601  016b c650a1        	ld	a,20641
 602  016e a403          	and	a,#3
 603  0170 6b01          	ld	(OFST+0,sp),a
 605                     ; 149     break;
 607  0172               L751:
 608                     ; 150   default:
 608                     ; 151     break;
 610  0172               L502:
 611                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 613  0172 7b01          	ld	a,(OFST+0,sp)
 616  0174 85            	popw	x
 617  0175 81            	ret
 653                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 653                     ; 163 {
 654                     	switch	.text
 655  0176               _EXTI_GetTLISensitivity:
 657  0176 88            	push	a
 658       00000001      OFST:	set	1
 661                     ; 164   uint8_t value = 0;
 663                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 665  0177 c650a1        	ld	a,20641
 666  017a a404          	and	a,#4
 667  017c 6b01          	ld	(OFST+0,sp),a
 669                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 671  017e 7b01          	ld	a,(OFST+0,sp)
 674  0180 5b01          	addw	sp,#1
 675  0182 81            	ret
 688                     	xdef	_EXTI_GetTLISensitivity
 689                     	xdef	_EXTI_GetExtIntSensitivity
 690                     	xdef	_EXTI_SetTLISensitivity
 691                     	xdef	_EXTI_SetExtIntSensitivity
 692                     	xdef	_EXTI_DeInit
 693                     	xref	_assert_failed
 694                     .const:	section	.text
 695  0000               L111:
 696  0000 7372635c7374  	dc.b	"src\stm8s_exti.c",0
 716                     	end
