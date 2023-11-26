   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 52 void TIM2_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _TIM2_DeInit:
  49                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  51  0000 725f5300      	clr	21248
  52                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  54  0004 725f5303      	clr	21251
  55                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  57  0008 725f5305      	clr	21253
  58                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  60  000c 725f530a      	clr	21258
  61                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  63  0010 725f530b      	clr	21259
  64                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  0014 725f530a      	clr	21258
  67                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0018 725f530b      	clr	21259
  70                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  72  001c 725f5307      	clr	21255
  73                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  75  0020 725f5308      	clr	21256
  76                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  78  0024 725f5309      	clr	21257
  79                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  81  0028 725f530c      	clr	21260
  82                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  84  002c 725f530d      	clr	21261
  85                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  87  0030 725f530e      	clr	21262
  88                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  90  0034 35ff530f      	mov	21263,#255
  91                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  93  0038 35ff5310      	mov	21264,#255
  94                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  96  003c 725f5311      	clr	21265
  97                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  99  0040 725f5312      	clr	21266
 100                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 102  0044 725f5313      	clr	21267
 103                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 105  0048 725f5314      	clr	21268
 106                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 108  004c 725f5315      	clr	21269
 109                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 111  0050 725f5316      	clr	21270
 112                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 114  0054 725f5304      	clr	21252
 115                     ; 81 }
 118  0058 81            	ret
 286                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 286                     ; 90                         uint16_t TIM2_Period)
 286                     ; 91 {
 287                     	switch	.text
 288  0059               _TIM2_TimeBaseInit:
 290  0059 88            	push	a
 291       00000000      OFST:	set	0
 294                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 296  005a c7530e        	ld	21262,a
 297                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 299  005d 7b04          	ld	a,(OFST+4,sp)
 300  005f c7530f        	ld	21263,a
 301                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 303  0062 7b05          	ld	a,(OFST+5,sp)
 304  0064 c75310        	ld	21264,a
 305                     ; 97 }
 308  0067 84            	pop	a
 309  0068 81            	ret
 467                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 467                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 467                     ; 110                   uint16_t TIM2_Pulse,
 467                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 467                     ; 112 {
 468                     	switch	.text
 469  0069               _TIM2_OC1Init:
 471  0069 89            	pushw	x
 472  006a 88            	push	a
 473       00000001      OFST:	set	1
 476                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 478  006b 9e            	ld	a,xh
 479  006c 4d            	tnz	a
 480  006d 2719          	jreq	L41
 481  006f 9e            	ld	a,xh
 482  0070 a110          	cp	a,#16
 483  0072 2714          	jreq	L41
 484  0074 9e            	ld	a,xh
 485  0075 a120          	cp	a,#32
 486  0077 270f          	jreq	L41
 487  0079 9e            	ld	a,xh
 488  007a a130          	cp	a,#48
 489  007c 270a          	jreq	L41
 490  007e 9e            	ld	a,xh
 491  007f a160          	cp	a,#96
 492  0081 2705          	jreq	L41
 493  0083 9e            	ld	a,xh
 494  0084 a170          	cp	a,#112
 495  0086 2603          	jrne	L21
 496  0088               L41:
 497  0088 4f            	clr	a
 498  0089 2010          	jra	L61
 499  008b               L21:
 500  008b ae0072        	ldw	x,#114
 501  008e 89            	pushw	x
 502  008f ae0000        	ldw	x,#0
 503  0092 89            	pushw	x
 504  0093 ae0000        	ldw	x,#L702
 505  0096 cd0000        	call	_assert_failed
 507  0099 5b04          	addw	sp,#4
 508  009b               L61:
 509                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 511  009b 0d03          	tnz	(OFST+2,sp)
 512  009d 2706          	jreq	L22
 513  009f 7b03          	ld	a,(OFST+2,sp)
 514  00a1 a111          	cp	a,#17
 515  00a3 2603          	jrne	L02
 516  00a5               L22:
 517  00a5 4f            	clr	a
 518  00a6 2010          	jra	L42
 519  00a8               L02:
 520  00a8 ae0073        	ldw	x,#115
 521  00ab 89            	pushw	x
 522  00ac ae0000        	ldw	x,#0
 523  00af 89            	pushw	x
 524  00b0 ae0000        	ldw	x,#L702
 525  00b3 cd0000        	call	_assert_failed
 527  00b6 5b04          	addw	sp,#4
 528  00b8               L42:
 529                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 531  00b8 0d08          	tnz	(OFST+7,sp)
 532  00ba 2706          	jreq	L03
 533  00bc 7b08          	ld	a,(OFST+7,sp)
 534  00be a122          	cp	a,#34
 535  00c0 2603          	jrne	L62
 536  00c2               L03:
 537  00c2 4f            	clr	a
 538  00c3 2010          	jra	L23
 539  00c5               L62:
 540  00c5 ae0074        	ldw	x,#116
 541  00c8 89            	pushw	x
 542  00c9 ae0000        	ldw	x,#0
 543  00cc 89            	pushw	x
 544  00cd ae0000        	ldw	x,#L702
 545  00d0 cd0000        	call	_assert_failed
 547  00d3 5b04          	addw	sp,#4
 548  00d5               L23:
 549                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 551  00d5 c6530a        	ld	a,21258
 552  00d8 a4fc          	and	a,#252
 553  00da c7530a        	ld	21258,a
 554                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 554                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 556  00dd 7b08          	ld	a,(OFST+7,sp)
 557  00df a402          	and	a,#2
 558  00e1 6b01          	ld	(OFST+0,sp),a
 560  00e3 7b03          	ld	a,(OFST+2,sp)
 561  00e5 a401          	and	a,#1
 562  00e7 1a01          	or	a,(OFST+0,sp)
 563  00e9 ca530a        	or	a,21258
 564  00ec c7530a        	ld	21258,a
 565                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 565                     ; 126                           (uint8_t)TIM2_OCMode);
 567  00ef c65307        	ld	a,21255
 568  00f2 a48f          	and	a,#143
 569  00f4 1a02          	or	a,(OFST+1,sp)
 570  00f6 c75307        	ld	21255,a
 571                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 573  00f9 7b06          	ld	a,(OFST+5,sp)
 574  00fb c75311        	ld	21265,a
 575                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 577  00fe 7b07          	ld	a,(OFST+6,sp)
 578  0100 c75312        	ld	21266,a
 579                     ; 131 }
 582  0103 5b03          	addw	sp,#3
 583  0105 81            	ret
 648                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 648                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 648                     ; 144                   uint16_t TIM2_Pulse,
 648                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 648                     ; 146 {
 649                     	switch	.text
 650  0106               _TIM2_OC2Init:
 652  0106 89            	pushw	x
 653  0107 88            	push	a
 654       00000001      OFST:	set	1
 657                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 659  0108 9e            	ld	a,xh
 660  0109 4d            	tnz	a
 661  010a 2719          	jreq	L04
 662  010c 9e            	ld	a,xh
 663  010d a110          	cp	a,#16
 664  010f 2714          	jreq	L04
 665  0111 9e            	ld	a,xh
 666  0112 a120          	cp	a,#32
 667  0114 270f          	jreq	L04
 668  0116 9e            	ld	a,xh
 669  0117 a130          	cp	a,#48
 670  0119 270a          	jreq	L04
 671  011b 9e            	ld	a,xh
 672  011c a160          	cp	a,#96
 673  011e 2705          	jreq	L04
 674  0120 9e            	ld	a,xh
 675  0121 a170          	cp	a,#112
 676  0123 2603          	jrne	L63
 677  0125               L04:
 678  0125 4f            	clr	a
 679  0126 2010          	jra	L24
 680  0128               L63:
 681  0128 ae0094        	ldw	x,#148
 682  012b 89            	pushw	x
 683  012c ae0000        	ldw	x,#0
 684  012f 89            	pushw	x
 685  0130 ae0000        	ldw	x,#L702
 686  0133 cd0000        	call	_assert_failed
 688  0136 5b04          	addw	sp,#4
 689  0138               L24:
 690                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 692  0138 0d03          	tnz	(OFST+2,sp)
 693  013a 2706          	jreq	L64
 694  013c 7b03          	ld	a,(OFST+2,sp)
 695  013e a111          	cp	a,#17
 696  0140 2603          	jrne	L44
 697  0142               L64:
 698  0142 4f            	clr	a
 699  0143 2010          	jra	L05
 700  0145               L44:
 701  0145 ae0095        	ldw	x,#149
 702  0148 89            	pushw	x
 703  0149 ae0000        	ldw	x,#0
 704  014c 89            	pushw	x
 705  014d ae0000        	ldw	x,#L702
 706  0150 cd0000        	call	_assert_failed
 708  0153 5b04          	addw	sp,#4
 709  0155               L05:
 710                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 712  0155 0d08          	tnz	(OFST+7,sp)
 713  0157 2706          	jreq	L45
 714  0159 7b08          	ld	a,(OFST+7,sp)
 715  015b a122          	cp	a,#34
 716  015d 2603          	jrne	L25
 717  015f               L45:
 718  015f 4f            	clr	a
 719  0160 2010          	jra	L65
 720  0162               L25:
 721  0162 ae0096        	ldw	x,#150
 722  0165 89            	pushw	x
 723  0166 ae0000        	ldw	x,#0
 724  0169 89            	pushw	x
 725  016a ae0000        	ldw	x,#L702
 726  016d cd0000        	call	_assert_failed
 728  0170 5b04          	addw	sp,#4
 729  0172               L65:
 730                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 732  0172 c6530a        	ld	a,21258
 733  0175 a4cf          	and	a,#207
 734  0177 c7530a        	ld	21258,a
 735                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 735                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 737  017a 7b08          	ld	a,(OFST+7,sp)
 738  017c a420          	and	a,#32
 739  017e 6b01          	ld	(OFST+0,sp),a
 741  0180 7b03          	ld	a,(OFST+2,sp)
 742  0182 a410          	and	a,#16
 743  0184 1a01          	or	a,(OFST+0,sp)
 744  0186 ca530a        	or	a,21258
 745  0189 c7530a        	ld	21258,a
 746                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 746                     ; 162                           (uint8_t)TIM2_OCMode);
 748  018c c65308        	ld	a,21256
 749  018f a48f          	and	a,#143
 750  0191 1a02          	or	a,(OFST+1,sp)
 751  0193 c75308        	ld	21256,a
 752                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 754  0196 7b06          	ld	a,(OFST+5,sp)
 755  0198 c75313        	ld	21267,a
 756                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 758  019b 7b07          	ld	a,(OFST+6,sp)
 759  019d c75314        	ld	21268,a
 760                     ; 168 }
 763  01a0 5b03          	addw	sp,#3
 764  01a2 81            	ret
 829                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 829                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 829                     ; 181                   uint16_t TIM2_Pulse,
 829                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 829                     ; 183 {
 830                     	switch	.text
 831  01a3               _TIM2_OC3Init:
 833  01a3 89            	pushw	x
 834  01a4 88            	push	a
 835       00000001      OFST:	set	1
 838                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 840  01a5 9e            	ld	a,xh
 841  01a6 4d            	tnz	a
 842  01a7 2719          	jreq	L46
 843  01a9 9e            	ld	a,xh
 844  01aa a110          	cp	a,#16
 845  01ac 2714          	jreq	L46
 846  01ae 9e            	ld	a,xh
 847  01af a120          	cp	a,#32
 848  01b1 270f          	jreq	L46
 849  01b3 9e            	ld	a,xh
 850  01b4 a130          	cp	a,#48
 851  01b6 270a          	jreq	L46
 852  01b8 9e            	ld	a,xh
 853  01b9 a160          	cp	a,#96
 854  01bb 2705          	jreq	L46
 855  01bd 9e            	ld	a,xh
 856  01be a170          	cp	a,#112
 857  01c0 2603          	jrne	L26
 858  01c2               L46:
 859  01c2 4f            	clr	a
 860  01c3 2010          	jra	L66
 861  01c5               L26:
 862  01c5 ae00b9        	ldw	x,#185
 863  01c8 89            	pushw	x
 864  01c9 ae0000        	ldw	x,#0
 865  01cc 89            	pushw	x
 866  01cd ae0000        	ldw	x,#L702
 867  01d0 cd0000        	call	_assert_failed
 869  01d3 5b04          	addw	sp,#4
 870  01d5               L66:
 871                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 873  01d5 0d03          	tnz	(OFST+2,sp)
 874  01d7 2706          	jreq	L27
 875  01d9 7b03          	ld	a,(OFST+2,sp)
 876  01db a111          	cp	a,#17
 877  01dd 2603          	jrne	L07
 878  01df               L27:
 879  01df 4f            	clr	a
 880  01e0 2010          	jra	L47
 881  01e2               L07:
 882  01e2 ae00ba        	ldw	x,#186
 883  01e5 89            	pushw	x
 884  01e6 ae0000        	ldw	x,#0
 885  01e9 89            	pushw	x
 886  01ea ae0000        	ldw	x,#L702
 887  01ed cd0000        	call	_assert_failed
 889  01f0 5b04          	addw	sp,#4
 890  01f2               L47:
 891                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 893  01f2 0d08          	tnz	(OFST+7,sp)
 894  01f4 2706          	jreq	L001
 895  01f6 7b08          	ld	a,(OFST+7,sp)
 896  01f8 a122          	cp	a,#34
 897  01fa 2603          	jrne	L67
 898  01fc               L001:
 899  01fc 4f            	clr	a
 900  01fd 2010          	jra	L201
 901  01ff               L67:
 902  01ff ae00bb        	ldw	x,#187
 903  0202 89            	pushw	x
 904  0203 ae0000        	ldw	x,#0
 905  0206 89            	pushw	x
 906  0207 ae0000        	ldw	x,#L702
 907  020a cd0000        	call	_assert_failed
 909  020d 5b04          	addw	sp,#4
 910  020f               L201:
 911                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 913  020f c6530b        	ld	a,21259
 914  0212 a4fc          	and	a,#252
 915  0214 c7530b        	ld	21259,a
 916                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 916                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 918  0217 7b08          	ld	a,(OFST+7,sp)
 919  0219 a402          	and	a,#2
 920  021b 6b01          	ld	(OFST+0,sp),a
 922  021d 7b03          	ld	a,(OFST+2,sp)
 923  021f a401          	and	a,#1
 924  0221 1a01          	or	a,(OFST+0,sp)
 925  0223 ca530b        	or	a,21259
 926  0226 c7530b        	ld	21259,a
 927                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 927                     ; 196                           (uint8_t)TIM2_OCMode);
 929  0229 c65309        	ld	a,21257
 930  022c a48f          	and	a,#143
 931  022e 1a02          	or	a,(OFST+1,sp)
 932  0230 c75309        	ld	21257,a
 933                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 935  0233 7b06          	ld	a,(OFST+5,sp)
 936  0235 c75315        	ld	21269,a
 937                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 939  0238 7b07          	ld	a,(OFST+6,sp)
 940  023a c75316        	ld	21270,a
 941                     ; 201 }
 944  023d 5b03          	addw	sp,#3
 945  023f 81            	ret
1139                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1139                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1139                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1139                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1139                     ; 216                  uint8_t TIM2_ICFilter)
1139                     ; 217 {
1140                     	switch	.text
1141  0240               _TIM2_ICInit:
1143  0240 89            	pushw	x
1144       00000000      OFST:	set	0
1147                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1149  0241 9e            	ld	a,xh
1150  0242 4d            	tnz	a
1151  0243 270a          	jreq	L011
1152  0245 9e            	ld	a,xh
1153  0246 a101          	cp	a,#1
1154  0248 2705          	jreq	L011
1155  024a 9e            	ld	a,xh
1156  024b a102          	cp	a,#2
1157  024d 2603          	jrne	L601
1158  024f               L011:
1159  024f 4f            	clr	a
1160  0250 2010          	jra	L211
1161  0252               L601:
1162  0252 ae00db        	ldw	x,#219
1163  0255 89            	pushw	x
1164  0256 ae0000        	ldw	x,#0
1165  0259 89            	pushw	x
1166  025a ae0000        	ldw	x,#L702
1167  025d cd0000        	call	_assert_failed
1169  0260 5b04          	addw	sp,#4
1170  0262               L211:
1171                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1173  0262 0d02          	tnz	(OFST+2,sp)
1174  0264 2706          	jreq	L611
1175  0266 7b02          	ld	a,(OFST+2,sp)
1176  0268 a144          	cp	a,#68
1177  026a 2603          	jrne	L411
1178  026c               L611:
1179  026c 4f            	clr	a
1180  026d 2010          	jra	L021
1181  026f               L411:
1182  026f ae00dc        	ldw	x,#220
1183  0272 89            	pushw	x
1184  0273 ae0000        	ldw	x,#0
1185  0276 89            	pushw	x
1186  0277 ae0000        	ldw	x,#L702
1187  027a cd0000        	call	_assert_failed
1189  027d 5b04          	addw	sp,#4
1190  027f               L021:
1191                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1193  027f 7b05          	ld	a,(OFST+5,sp)
1194  0281 a101          	cp	a,#1
1195  0283 270c          	jreq	L421
1196  0285 7b05          	ld	a,(OFST+5,sp)
1197  0287 a102          	cp	a,#2
1198  0289 2706          	jreq	L421
1199  028b 7b05          	ld	a,(OFST+5,sp)
1200  028d a103          	cp	a,#3
1201  028f 2603          	jrne	L221
1202  0291               L421:
1203  0291 4f            	clr	a
1204  0292 2010          	jra	L621
1205  0294               L221:
1206  0294 ae00dd        	ldw	x,#221
1207  0297 89            	pushw	x
1208  0298 ae0000        	ldw	x,#0
1209  029b 89            	pushw	x
1210  029c ae0000        	ldw	x,#L702
1211  029f cd0000        	call	_assert_failed
1213  02a2 5b04          	addw	sp,#4
1214  02a4               L621:
1215                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1217  02a4 0d06          	tnz	(OFST+6,sp)
1218  02a6 2712          	jreq	L231
1219  02a8 7b06          	ld	a,(OFST+6,sp)
1220  02aa a104          	cp	a,#4
1221  02ac 270c          	jreq	L231
1222  02ae 7b06          	ld	a,(OFST+6,sp)
1223  02b0 a108          	cp	a,#8
1224  02b2 2706          	jreq	L231
1225  02b4 7b06          	ld	a,(OFST+6,sp)
1226  02b6 a10c          	cp	a,#12
1227  02b8 2603          	jrne	L031
1228  02ba               L231:
1229  02ba 4f            	clr	a
1230  02bb 2010          	jra	L431
1231  02bd               L031:
1232  02bd ae00de        	ldw	x,#222
1233  02c0 89            	pushw	x
1234  02c1 ae0000        	ldw	x,#0
1235  02c4 89            	pushw	x
1236  02c5 ae0000        	ldw	x,#L702
1237  02c8 cd0000        	call	_assert_failed
1239  02cb 5b04          	addw	sp,#4
1240  02cd               L431:
1241                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1243  02cd 7b07          	ld	a,(OFST+7,sp)
1244  02cf a110          	cp	a,#16
1245  02d1 2403          	jruge	L631
1246  02d3 4f            	clr	a
1247  02d4 2010          	jra	L041
1248  02d6               L631:
1249  02d6 ae00df        	ldw	x,#223
1250  02d9 89            	pushw	x
1251  02da ae0000        	ldw	x,#0
1252  02dd 89            	pushw	x
1253  02de ae0000        	ldw	x,#L702
1254  02e1 cd0000        	call	_assert_failed
1256  02e4 5b04          	addw	sp,#4
1257  02e6               L041:
1258                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1260  02e6 0d01          	tnz	(OFST+1,sp)
1261  02e8 2614          	jrne	L304
1262                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1262                     ; 229                (uint8_t)TIM2_ICSelection,
1262                     ; 230                (uint8_t)TIM2_ICFilter);
1264  02ea 7b07          	ld	a,(OFST+7,sp)
1265  02ec 88            	push	a
1266  02ed 7b06          	ld	a,(OFST+6,sp)
1267  02ef 97            	ld	xl,a
1268  02f0 7b03          	ld	a,(OFST+3,sp)
1269  02f2 95            	ld	xh,a
1270  02f3 cd0ad3        	call	L3_TI1_Config
1272  02f6 84            	pop	a
1273                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1275  02f7 7b06          	ld	a,(OFST+6,sp)
1276  02f9 cd08c3        	call	_TIM2_SetIC1Prescaler
1279  02fc 202c          	jra	L504
1280  02fe               L304:
1281                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1283  02fe 7b01          	ld	a,(OFST+1,sp)
1284  0300 a101          	cp	a,#1
1285  0302 2614          	jrne	L704
1286                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1286                     ; 239                (uint8_t)TIM2_ICSelection,
1286                     ; 240                (uint8_t)TIM2_ICFilter);
1288  0304 7b07          	ld	a,(OFST+7,sp)
1289  0306 88            	push	a
1290  0307 7b06          	ld	a,(OFST+6,sp)
1291  0309 97            	ld	xl,a
1292  030a 7b03          	ld	a,(OFST+3,sp)
1293  030c 95            	ld	xh,a
1294  030d cd0b03        	call	L5_TI2_Config
1296  0310 84            	pop	a
1297                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1299  0311 7b06          	ld	a,(OFST+6,sp)
1300  0313 cd08f2        	call	_TIM2_SetIC2Prescaler
1303  0316 2012          	jra	L504
1304  0318               L704:
1305                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1305                     ; 249                (uint8_t)TIM2_ICSelection,
1305                     ; 250                (uint8_t)TIM2_ICFilter);
1307  0318 7b07          	ld	a,(OFST+7,sp)
1308  031a 88            	push	a
1309  031b 7b06          	ld	a,(OFST+6,sp)
1310  031d 97            	ld	xl,a
1311  031e 7b03          	ld	a,(OFST+3,sp)
1312  0320 95            	ld	xh,a
1313  0321 cd0b33        	call	L7_TI3_Config
1315  0324 84            	pop	a
1316                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1318  0325 7b06          	ld	a,(OFST+6,sp)
1319  0327 cd0921        	call	_TIM2_SetIC3Prescaler
1321  032a               L504:
1322                     ; 255 }
1325  032a 85            	popw	x
1326  032b 81            	ret
1423                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1423                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1423                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1423                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1423                     ; 270                      uint8_t TIM2_ICFilter)
1423                     ; 271 {
1424                     	switch	.text
1425  032c               _TIM2_PWMIConfig:
1427  032c 89            	pushw	x
1428  032d 89            	pushw	x
1429       00000002      OFST:	set	2
1432                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1434                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1436                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1438  032e 9e            	ld	a,xh
1439  032f 4d            	tnz	a
1440  0330 2705          	jreq	L641
1441  0332 9e            	ld	a,xh
1442  0333 a101          	cp	a,#1
1443  0335 2603          	jrne	L441
1444  0337               L641:
1445  0337 4f            	clr	a
1446  0338 2010          	jra	L051
1447  033a               L441:
1448  033a ae0114        	ldw	x,#276
1449  033d 89            	pushw	x
1450  033e ae0000        	ldw	x,#0
1451  0341 89            	pushw	x
1452  0342 ae0000        	ldw	x,#L702
1453  0345 cd0000        	call	_assert_failed
1455  0348 5b04          	addw	sp,#4
1456  034a               L051:
1457                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1459  034a 0d04          	tnz	(OFST+2,sp)
1460  034c 2706          	jreq	L451
1461  034e 7b04          	ld	a,(OFST+2,sp)
1462  0350 a144          	cp	a,#68
1463  0352 2603          	jrne	L251
1464  0354               L451:
1465  0354 4f            	clr	a
1466  0355 2010          	jra	L651
1467  0357               L251:
1468  0357 ae0115        	ldw	x,#277
1469  035a 89            	pushw	x
1470  035b ae0000        	ldw	x,#0
1471  035e 89            	pushw	x
1472  035f ae0000        	ldw	x,#L702
1473  0362 cd0000        	call	_assert_failed
1475  0365 5b04          	addw	sp,#4
1476  0367               L651:
1477                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1479  0367 7b07          	ld	a,(OFST+5,sp)
1480  0369 a101          	cp	a,#1
1481  036b 270c          	jreq	L261
1482  036d 7b07          	ld	a,(OFST+5,sp)
1483  036f a102          	cp	a,#2
1484  0371 2706          	jreq	L261
1485  0373 7b07          	ld	a,(OFST+5,sp)
1486  0375 a103          	cp	a,#3
1487  0377 2603          	jrne	L061
1488  0379               L261:
1489  0379 4f            	clr	a
1490  037a 2010          	jra	L461
1491  037c               L061:
1492  037c ae0116        	ldw	x,#278
1493  037f 89            	pushw	x
1494  0380 ae0000        	ldw	x,#0
1495  0383 89            	pushw	x
1496  0384 ae0000        	ldw	x,#L702
1497  0387 cd0000        	call	_assert_failed
1499  038a 5b04          	addw	sp,#4
1500  038c               L461:
1501                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1503  038c 0d08          	tnz	(OFST+6,sp)
1504  038e 2712          	jreq	L071
1505  0390 7b08          	ld	a,(OFST+6,sp)
1506  0392 a104          	cp	a,#4
1507  0394 270c          	jreq	L071
1508  0396 7b08          	ld	a,(OFST+6,sp)
1509  0398 a108          	cp	a,#8
1510  039a 2706          	jreq	L071
1511  039c 7b08          	ld	a,(OFST+6,sp)
1512  039e a10c          	cp	a,#12
1513  03a0 2603          	jrne	L661
1514  03a2               L071:
1515  03a2 4f            	clr	a
1516  03a3 2010          	jra	L271
1517  03a5               L661:
1518  03a5 ae0117        	ldw	x,#279
1519  03a8 89            	pushw	x
1520  03a9 ae0000        	ldw	x,#0
1521  03ac 89            	pushw	x
1522  03ad ae0000        	ldw	x,#L702
1523  03b0 cd0000        	call	_assert_failed
1525  03b3 5b04          	addw	sp,#4
1526  03b5               L271:
1527                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1529  03b5 7b04          	ld	a,(OFST+2,sp)
1530  03b7 a144          	cp	a,#68
1531  03b9 2706          	jreq	L164
1532                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1534  03bb a644          	ld	a,#68
1535  03bd 6b01          	ld	(OFST-1,sp),a
1538  03bf 2002          	jra	L364
1539  03c1               L164:
1540                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1542  03c1 0f01          	clr	(OFST-1,sp)
1544  03c3               L364:
1545                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1547  03c3 7b07          	ld	a,(OFST+5,sp)
1548  03c5 a101          	cp	a,#1
1549  03c7 2606          	jrne	L564
1550                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1552  03c9 a602          	ld	a,#2
1553  03cb 6b02          	ld	(OFST+0,sp),a
1556  03cd 2004          	jra	L764
1557  03cf               L564:
1558                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1560  03cf a601          	ld	a,#1
1561  03d1 6b02          	ld	(OFST+0,sp),a
1563  03d3               L764:
1564                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1566  03d3 0d03          	tnz	(OFST+1,sp)
1567  03d5 2626          	jrne	L174
1568                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1568                     ; 305                (uint8_t)TIM2_ICFilter);
1570  03d7 7b09          	ld	a,(OFST+7,sp)
1571  03d9 88            	push	a
1572  03da 7b08          	ld	a,(OFST+6,sp)
1573  03dc 97            	ld	xl,a
1574  03dd 7b05          	ld	a,(OFST+3,sp)
1575  03df 95            	ld	xh,a
1576  03e0 cd0ad3        	call	L3_TI1_Config
1578  03e3 84            	pop	a
1579                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1581  03e4 7b08          	ld	a,(OFST+6,sp)
1582  03e6 cd08c3        	call	_TIM2_SetIC1Prescaler
1584                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1586  03e9 7b09          	ld	a,(OFST+7,sp)
1587  03eb 88            	push	a
1588  03ec 7b03          	ld	a,(OFST+1,sp)
1589  03ee 97            	ld	xl,a
1590  03ef 7b02          	ld	a,(OFST+0,sp)
1591  03f1 95            	ld	xh,a
1592  03f2 cd0b03        	call	L5_TI2_Config
1594  03f5 84            	pop	a
1595                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1597  03f6 7b08          	ld	a,(OFST+6,sp)
1598  03f8 cd08f2        	call	_TIM2_SetIC2Prescaler
1601  03fb 2024          	jra	L374
1602  03fd               L174:
1603                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1603                     ; 320                (uint8_t)TIM2_ICFilter);
1605  03fd 7b09          	ld	a,(OFST+7,sp)
1606  03ff 88            	push	a
1607  0400 7b08          	ld	a,(OFST+6,sp)
1608  0402 97            	ld	xl,a
1609  0403 7b05          	ld	a,(OFST+3,sp)
1610  0405 95            	ld	xh,a
1611  0406 cd0b03        	call	L5_TI2_Config
1613  0409 84            	pop	a
1614                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1616  040a 7b08          	ld	a,(OFST+6,sp)
1617  040c cd08f2        	call	_TIM2_SetIC2Prescaler
1619                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1621  040f 7b09          	ld	a,(OFST+7,sp)
1622  0411 88            	push	a
1623  0412 7b03          	ld	a,(OFST+1,sp)
1624  0414 97            	ld	xl,a
1625  0415 7b02          	ld	a,(OFST+0,sp)
1626  0417 95            	ld	xh,a
1627  0418 cd0ad3        	call	L3_TI1_Config
1629  041b 84            	pop	a
1630                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1632  041c 7b08          	ld	a,(OFST+6,sp)
1633  041e cd08c3        	call	_TIM2_SetIC1Prescaler
1635  0421               L374:
1636                     ; 331 }
1639  0421 5b04          	addw	sp,#4
1640  0423 81            	ret
1696                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1696                     ; 340 {
1697                     	switch	.text
1698  0424               _TIM2_Cmd:
1700  0424 88            	push	a
1701       00000000      OFST:	set	0
1704                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1706  0425 4d            	tnz	a
1707  0426 2704          	jreq	L002
1708  0428 a101          	cp	a,#1
1709  042a 2603          	jrne	L671
1710  042c               L002:
1711  042c 4f            	clr	a
1712  042d 2010          	jra	L202
1713  042f               L671:
1714  042f ae0156        	ldw	x,#342
1715  0432 89            	pushw	x
1716  0433 ae0000        	ldw	x,#0
1717  0436 89            	pushw	x
1718  0437 ae0000        	ldw	x,#L702
1719  043a cd0000        	call	_assert_failed
1721  043d 5b04          	addw	sp,#4
1722  043f               L202:
1723                     ; 345   if (NewState != DISABLE)
1725  043f 0d01          	tnz	(OFST+1,sp)
1726  0441 2706          	jreq	L325
1727                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1729  0443 72105300      	bset	21248,#0
1731  0447 2004          	jra	L525
1732  0449               L325:
1733                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1735  0449 72115300      	bres	21248,#0
1736  044d               L525:
1737                     ; 353 }
1740  044d 84            	pop	a
1741  044e 81            	ret
1821                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1821                     ; 369 {
1822                     	switch	.text
1823  044f               _TIM2_ITConfig:
1825  044f 89            	pushw	x
1826       00000000      OFST:	set	0
1829                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1831  0450 9e            	ld	a,xh
1832  0451 4d            	tnz	a
1833  0452 2708          	jreq	L602
1834  0454 9e            	ld	a,xh
1835  0455 a110          	cp	a,#16
1836  0457 2403          	jruge	L602
1837  0459 4f            	clr	a
1838  045a 2010          	jra	L012
1839  045c               L602:
1840  045c ae0173        	ldw	x,#371
1841  045f 89            	pushw	x
1842  0460 ae0000        	ldw	x,#0
1843  0463 89            	pushw	x
1844  0464 ae0000        	ldw	x,#L702
1845  0467 cd0000        	call	_assert_failed
1847  046a 5b04          	addw	sp,#4
1848  046c               L012:
1849                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1851  046c 0d02          	tnz	(OFST+2,sp)
1852  046e 2706          	jreq	L412
1853  0470 7b02          	ld	a,(OFST+2,sp)
1854  0472 a101          	cp	a,#1
1855  0474 2603          	jrne	L212
1856  0476               L412:
1857  0476 4f            	clr	a
1858  0477 2010          	jra	L612
1859  0479               L212:
1860  0479 ae0174        	ldw	x,#372
1861  047c 89            	pushw	x
1862  047d ae0000        	ldw	x,#0
1863  0480 89            	pushw	x
1864  0481 ae0000        	ldw	x,#L702
1865  0484 cd0000        	call	_assert_failed
1867  0487 5b04          	addw	sp,#4
1868  0489               L612:
1869                     ; 374   if (NewState != DISABLE)
1871  0489 0d02          	tnz	(OFST+2,sp)
1872  048b 270a          	jreq	L565
1873                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1875  048d c65303        	ld	a,21251
1876  0490 1a01          	or	a,(OFST+1,sp)
1877  0492 c75303        	ld	21251,a
1879  0495 2009          	jra	L765
1880  0497               L565:
1881                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1883  0497 7b01          	ld	a,(OFST+1,sp)
1884  0499 43            	cpl	a
1885  049a c45303        	and	a,21251
1886  049d c75303        	ld	21251,a
1887  04a0               L765:
1888                     ; 384 }
1891  04a0 85            	popw	x
1892  04a1 81            	ret
1929                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1929                     ; 393 {
1930                     	switch	.text
1931  04a2               _TIM2_UpdateDisableConfig:
1933  04a2 88            	push	a
1934       00000000      OFST:	set	0
1937                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1939  04a3 4d            	tnz	a
1940  04a4 2704          	jreq	L422
1941  04a6 a101          	cp	a,#1
1942  04a8 2603          	jrne	L222
1943  04aa               L422:
1944  04aa 4f            	clr	a
1945  04ab 2010          	jra	L622
1946  04ad               L222:
1947  04ad ae018b        	ldw	x,#395
1948  04b0 89            	pushw	x
1949  04b1 ae0000        	ldw	x,#0
1950  04b4 89            	pushw	x
1951  04b5 ae0000        	ldw	x,#L702
1952  04b8 cd0000        	call	_assert_failed
1954  04bb 5b04          	addw	sp,#4
1955  04bd               L622:
1956                     ; 398   if (NewState != DISABLE)
1958  04bd 0d01          	tnz	(OFST+1,sp)
1959  04bf 2706          	jreq	L706
1960                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1962  04c1 72125300      	bset	21248,#1
1964  04c5 2004          	jra	L116
1965  04c7               L706:
1966                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1968  04c7 72135300      	bres	21248,#1
1969  04cb               L116:
1970                     ; 406 }
1973  04cb 84            	pop	a
1974  04cc 81            	ret
2033                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2033                     ; 417 {
2034                     	switch	.text
2035  04cd               _TIM2_UpdateRequestConfig:
2037  04cd 88            	push	a
2038       00000000      OFST:	set	0
2041                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2043  04ce 4d            	tnz	a
2044  04cf 2704          	jreq	L432
2045  04d1 a101          	cp	a,#1
2046  04d3 2603          	jrne	L232
2047  04d5               L432:
2048  04d5 4f            	clr	a
2049  04d6 2010          	jra	L632
2050  04d8               L232:
2051  04d8 ae01a3        	ldw	x,#419
2052  04db 89            	pushw	x
2053  04dc ae0000        	ldw	x,#0
2054  04df 89            	pushw	x
2055  04e0 ae0000        	ldw	x,#L702
2056  04e3 cd0000        	call	_assert_failed
2058  04e6 5b04          	addw	sp,#4
2059  04e8               L632:
2060                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2062  04e8 0d01          	tnz	(OFST+1,sp)
2063  04ea 2706          	jreq	L146
2064                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2066  04ec 72145300      	bset	21248,#2
2068  04f0 2004          	jra	L346
2069  04f2               L146:
2070                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2072  04f2 72155300      	bres	21248,#2
2073  04f6               L346:
2074                     ; 430 }
2077  04f6 84            	pop	a
2078  04f7 81            	ret
2136                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2136                     ; 441 {
2137                     	switch	.text
2138  04f8               _TIM2_SelectOnePulseMode:
2140  04f8 88            	push	a
2141       00000000      OFST:	set	0
2144                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2146  04f9 a101          	cp	a,#1
2147  04fb 2703          	jreq	L442
2148  04fd 4d            	tnz	a
2149  04fe 2603          	jrne	L242
2150  0500               L442:
2151  0500 4f            	clr	a
2152  0501 2010          	jra	L642
2153  0503               L242:
2154  0503 ae01bb        	ldw	x,#443
2155  0506 89            	pushw	x
2156  0507 ae0000        	ldw	x,#0
2157  050a 89            	pushw	x
2158  050b ae0000        	ldw	x,#L702
2159  050e cd0000        	call	_assert_failed
2161  0511 5b04          	addw	sp,#4
2162  0513               L642:
2163                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2165  0513 0d01          	tnz	(OFST+1,sp)
2166  0515 2706          	jreq	L376
2167                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2169  0517 72165300      	bset	21248,#3
2171  051b 2004          	jra	L576
2172  051d               L376:
2173                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2175  051d 72175300      	bres	21248,#3
2176  0521               L576:
2177                     ; 454 }
2180  0521 84            	pop	a
2181  0522 81            	ret
2250                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2250                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2250                     ; 486 {
2251                     	switch	.text
2252  0523               _TIM2_PrescalerConfig:
2254  0523 89            	pushw	x
2255       00000000      OFST:	set	0
2258                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2260  0524 9f            	ld	a,xl
2261  0525 4d            	tnz	a
2262  0526 2705          	jreq	L452
2263  0528 9f            	ld	a,xl
2264  0529 a101          	cp	a,#1
2265  052b 2603          	jrne	L252
2266  052d               L452:
2267  052d 4f            	clr	a
2268  052e 2010          	jra	L652
2269  0530               L252:
2270  0530 ae01e8        	ldw	x,#488
2271  0533 89            	pushw	x
2272  0534 ae0000        	ldw	x,#0
2273  0537 89            	pushw	x
2274  0538 ae0000        	ldw	x,#L702
2275  053b cd0000        	call	_assert_failed
2277  053e 5b04          	addw	sp,#4
2278  0540               L652:
2279                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2281  0540 0d01          	tnz	(OFST+1,sp)
2282  0542 275a          	jreq	L262
2283  0544 7b01          	ld	a,(OFST+1,sp)
2284  0546 a101          	cp	a,#1
2285  0548 2754          	jreq	L262
2286  054a 7b01          	ld	a,(OFST+1,sp)
2287  054c a102          	cp	a,#2
2288  054e 274e          	jreq	L262
2289  0550 7b01          	ld	a,(OFST+1,sp)
2290  0552 a103          	cp	a,#3
2291  0554 2748          	jreq	L262
2292  0556 7b01          	ld	a,(OFST+1,sp)
2293  0558 a104          	cp	a,#4
2294  055a 2742          	jreq	L262
2295  055c 7b01          	ld	a,(OFST+1,sp)
2296  055e a105          	cp	a,#5
2297  0560 273c          	jreq	L262
2298  0562 7b01          	ld	a,(OFST+1,sp)
2299  0564 a106          	cp	a,#6
2300  0566 2736          	jreq	L262
2301  0568 7b01          	ld	a,(OFST+1,sp)
2302  056a a107          	cp	a,#7
2303  056c 2730          	jreq	L262
2304  056e 7b01          	ld	a,(OFST+1,sp)
2305  0570 a108          	cp	a,#8
2306  0572 272a          	jreq	L262
2307  0574 7b01          	ld	a,(OFST+1,sp)
2308  0576 a109          	cp	a,#9
2309  0578 2724          	jreq	L262
2310  057a 7b01          	ld	a,(OFST+1,sp)
2311  057c a10a          	cp	a,#10
2312  057e 271e          	jreq	L262
2313  0580 7b01          	ld	a,(OFST+1,sp)
2314  0582 a10b          	cp	a,#11
2315  0584 2718          	jreq	L262
2316  0586 7b01          	ld	a,(OFST+1,sp)
2317  0588 a10c          	cp	a,#12
2318  058a 2712          	jreq	L262
2319  058c 7b01          	ld	a,(OFST+1,sp)
2320  058e a10d          	cp	a,#13
2321  0590 270c          	jreq	L262
2322  0592 7b01          	ld	a,(OFST+1,sp)
2323  0594 a10e          	cp	a,#14
2324  0596 2706          	jreq	L262
2325  0598 7b01          	ld	a,(OFST+1,sp)
2326  059a a10f          	cp	a,#15
2327  059c 2603          	jrne	L062
2328  059e               L262:
2329  059e 4f            	clr	a
2330  059f 2010          	jra	L462
2331  05a1               L062:
2332  05a1 ae01e9        	ldw	x,#489
2333  05a4 89            	pushw	x
2334  05a5 ae0000        	ldw	x,#0
2335  05a8 89            	pushw	x
2336  05a9 ae0000        	ldw	x,#L702
2337  05ac cd0000        	call	_assert_failed
2339  05af 5b04          	addw	sp,#4
2340  05b1               L462:
2341                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2343  05b1 7b01          	ld	a,(OFST+1,sp)
2344  05b3 c7530e        	ld	21262,a
2345                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2347  05b6 7b02          	ld	a,(OFST+2,sp)
2348  05b8 c75306        	ld	21254,a
2349                     ; 496 }
2352  05bb 85            	popw	x
2353  05bc 81            	ret
2412                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2412                     ; 508 {
2413                     	switch	.text
2414  05bd               _TIM2_ForcedOC1Config:
2416  05bd 88            	push	a
2417       00000000      OFST:	set	0
2420                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2422  05be a150          	cp	a,#80
2423  05c0 2704          	jreq	L272
2424  05c2 a140          	cp	a,#64
2425  05c4 2603          	jrne	L072
2426  05c6               L272:
2427  05c6 4f            	clr	a
2428  05c7 2010          	jra	L472
2429  05c9               L072:
2430  05c9 ae01fe        	ldw	x,#510
2431  05cc 89            	pushw	x
2432  05cd ae0000        	ldw	x,#0
2433  05d0 89            	pushw	x
2434  05d1 ae0000        	ldw	x,#L702
2435  05d4 cd0000        	call	_assert_failed
2437  05d7 5b04          	addw	sp,#4
2438  05d9               L472:
2439                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2439                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2441  05d9 c65307        	ld	a,21255
2442  05dc a48f          	and	a,#143
2443  05de 1a01          	or	a,(OFST+1,sp)
2444  05e0 c75307        	ld	21255,a
2445                     ; 515 }
2448  05e3 84            	pop	a
2449  05e4 81            	ret
2486                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2486                     ; 527 {
2487                     	switch	.text
2488  05e5               _TIM2_ForcedOC2Config:
2490  05e5 88            	push	a
2491       00000000      OFST:	set	0
2494                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2496  05e6 a150          	cp	a,#80
2497  05e8 2704          	jreq	L203
2498  05ea a140          	cp	a,#64
2499  05ec 2603          	jrne	L003
2500  05ee               L203:
2501  05ee 4f            	clr	a
2502  05ef 2010          	jra	L403
2503  05f1               L003:
2504  05f1 ae0211        	ldw	x,#529
2505  05f4 89            	pushw	x
2506  05f5 ae0000        	ldw	x,#0
2507  05f8 89            	pushw	x
2508  05f9 ae0000        	ldw	x,#L702
2509  05fc cd0000        	call	_assert_failed
2511  05ff 5b04          	addw	sp,#4
2512  0601               L403:
2513                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2513                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2515  0601 c65308        	ld	a,21256
2516  0604 a48f          	and	a,#143
2517  0606 1a01          	or	a,(OFST+1,sp)
2518  0608 c75308        	ld	21256,a
2519                     ; 534 }
2522  060b 84            	pop	a
2523  060c 81            	ret
2560                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2560                     ; 546 {
2561                     	switch	.text
2562  060d               _TIM2_ForcedOC3Config:
2564  060d 88            	push	a
2565       00000000      OFST:	set	0
2568                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2570  060e a150          	cp	a,#80
2571  0610 2704          	jreq	L213
2572  0612 a140          	cp	a,#64
2573  0614 2603          	jrne	L013
2574  0616               L213:
2575  0616 4f            	clr	a
2576  0617 2010          	jra	L413
2577  0619               L013:
2578  0619 ae0224        	ldw	x,#548
2579  061c 89            	pushw	x
2580  061d ae0000        	ldw	x,#0
2581  0620 89            	pushw	x
2582  0621 ae0000        	ldw	x,#L702
2583  0624 cd0000        	call	_assert_failed
2585  0627 5b04          	addw	sp,#4
2586  0629               L413:
2587                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2587                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2589  0629 c65309        	ld	a,21257
2590  062c a48f          	and	a,#143
2591  062e 1a01          	or	a,(OFST+1,sp)
2592  0630 c75309        	ld	21257,a
2593                     ; 553 }
2596  0633 84            	pop	a
2597  0634 81            	ret
2634                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2634                     ; 562 {
2635                     	switch	.text
2636  0635               _TIM2_ARRPreloadConfig:
2638  0635 88            	push	a
2639       00000000      OFST:	set	0
2642                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2644  0636 4d            	tnz	a
2645  0637 2704          	jreq	L223
2646  0639 a101          	cp	a,#1
2647  063b 2603          	jrne	L023
2648  063d               L223:
2649  063d 4f            	clr	a
2650  063e 2010          	jra	L423
2651  0640               L023:
2652  0640 ae0234        	ldw	x,#564
2653  0643 89            	pushw	x
2654  0644 ae0000        	ldw	x,#0
2655  0647 89            	pushw	x
2656  0648 ae0000        	ldw	x,#L702
2657  064b cd0000        	call	_assert_failed
2659  064e 5b04          	addw	sp,#4
2660  0650               L423:
2661                     ; 567   if (NewState != DISABLE)
2663  0650 0d01          	tnz	(OFST+1,sp)
2664  0652 2706          	jreq	L1301
2665                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2667  0654 721e5300      	bset	21248,#7
2669  0658 2004          	jra	L3301
2670  065a               L1301:
2671                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2673  065a 721f5300      	bres	21248,#7
2674  065e               L3301:
2675                     ; 575 }
2678  065e 84            	pop	a
2679  065f 81            	ret
2716                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2716                     ; 584 {
2717                     	switch	.text
2718  0660               _TIM2_OC1PreloadConfig:
2720  0660 88            	push	a
2721       00000000      OFST:	set	0
2724                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2726  0661 4d            	tnz	a
2727  0662 2704          	jreq	L233
2728  0664 a101          	cp	a,#1
2729  0666 2603          	jrne	L033
2730  0668               L233:
2731  0668 4f            	clr	a
2732  0669 2010          	jra	L433
2733  066b               L033:
2734  066b ae024a        	ldw	x,#586
2735  066e 89            	pushw	x
2736  066f ae0000        	ldw	x,#0
2737  0672 89            	pushw	x
2738  0673 ae0000        	ldw	x,#L702
2739  0676 cd0000        	call	_assert_failed
2741  0679 5b04          	addw	sp,#4
2742  067b               L433:
2743                     ; 589   if (NewState != DISABLE)
2745  067b 0d01          	tnz	(OFST+1,sp)
2746  067d 2706          	jreq	L3501
2747                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2749  067f 72165307      	bset	21255,#3
2751  0683 2004          	jra	L5501
2752  0685               L3501:
2753                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2755  0685 72175307      	bres	21255,#3
2756  0689               L5501:
2757                     ; 597 }
2760  0689 84            	pop	a
2761  068a 81            	ret
2798                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2798                     ; 606 {
2799                     	switch	.text
2800  068b               _TIM2_OC2PreloadConfig:
2802  068b 88            	push	a
2803       00000000      OFST:	set	0
2806                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2808  068c 4d            	tnz	a
2809  068d 2704          	jreq	L243
2810  068f a101          	cp	a,#1
2811  0691 2603          	jrne	L043
2812  0693               L243:
2813  0693 4f            	clr	a
2814  0694 2010          	jra	L443
2815  0696               L043:
2816  0696 ae0260        	ldw	x,#608
2817  0699 89            	pushw	x
2818  069a ae0000        	ldw	x,#0
2819  069d 89            	pushw	x
2820  069e ae0000        	ldw	x,#L702
2821  06a1 cd0000        	call	_assert_failed
2823  06a4 5b04          	addw	sp,#4
2824  06a6               L443:
2825                     ; 611   if (NewState != DISABLE)
2827  06a6 0d01          	tnz	(OFST+1,sp)
2828  06a8 2706          	jreq	L5701
2829                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2831  06aa 72165308      	bset	21256,#3
2833  06ae 2004          	jra	L7701
2834  06b0               L5701:
2835                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2837  06b0 72175308      	bres	21256,#3
2838  06b4               L7701:
2839                     ; 619 }
2842  06b4 84            	pop	a
2843  06b5 81            	ret
2880                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2880                     ; 628 {
2881                     	switch	.text
2882  06b6               _TIM2_OC3PreloadConfig:
2884  06b6 88            	push	a
2885       00000000      OFST:	set	0
2888                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2890  06b7 4d            	tnz	a
2891  06b8 2704          	jreq	L253
2892  06ba a101          	cp	a,#1
2893  06bc 2603          	jrne	L053
2894  06be               L253:
2895  06be 4f            	clr	a
2896  06bf 2010          	jra	L453
2897  06c1               L053:
2898  06c1 ae0276        	ldw	x,#630
2899  06c4 89            	pushw	x
2900  06c5 ae0000        	ldw	x,#0
2901  06c8 89            	pushw	x
2902  06c9 ae0000        	ldw	x,#L702
2903  06cc cd0000        	call	_assert_failed
2905  06cf 5b04          	addw	sp,#4
2906  06d1               L453:
2907                     ; 633   if (NewState != DISABLE)
2909  06d1 0d01          	tnz	(OFST+1,sp)
2910  06d3 2706          	jreq	L7111
2911                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2913  06d5 72165309      	bset	21257,#3
2915  06d9 2004          	jra	L1211
2916  06db               L7111:
2917                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2919  06db 72175309      	bres	21257,#3
2920  06df               L1211:
2921                     ; 641 }
2924  06df 84            	pop	a
2925  06e0 81            	ret
2999                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2999                     ; 654 {
3000                     	switch	.text
3001  06e1               _TIM2_GenerateEvent:
3003  06e1 88            	push	a
3004       00000000      OFST:	set	0
3007                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
3009  06e2 4d            	tnz	a
3010  06e3 2703          	jreq	L063
3011  06e5 4f            	clr	a
3012  06e6 2010          	jra	L263
3013  06e8               L063:
3014  06e8 ae0290        	ldw	x,#656
3015  06eb 89            	pushw	x
3016  06ec ae0000        	ldw	x,#0
3017  06ef 89            	pushw	x
3018  06f0 ae0000        	ldw	x,#L702
3019  06f3 cd0000        	call	_assert_failed
3021  06f6 5b04          	addw	sp,#4
3022  06f8               L263:
3023                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3025  06f8 7b01          	ld	a,(OFST+1,sp)
3026  06fa c75306        	ld	21254,a
3027                     ; 660 }
3030  06fd 84            	pop	a
3031  06fe 81            	ret
3068                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3068                     ; 671 {
3069                     	switch	.text
3070  06ff               _TIM2_OC1PolarityConfig:
3072  06ff 88            	push	a
3073       00000000      OFST:	set	0
3076                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3078  0700 4d            	tnz	a
3079  0701 2704          	jreq	L073
3080  0703 a122          	cp	a,#34
3081  0705 2603          	jrne	L663
3082  0707               L073:
3083  0707 4f            	clr	a
3084  0708 2010          	jra	L273
3085  070a               L663:
3086  070a ae02a1        	ldw	x,#673
3087  070d 89            	pushw	x
3088  070e ae0000        	ldw	x,#0
3089  0711 89            	pushw	x
3090  0712 ae0000        	ldw	x,#L702
3091  0715 cd0000        	call	_assert_failed
3093  0718 5b04          	addw	sp,#4
3094  071a               L273:
3095                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3097  071a 0d01          	tnz	(OFST+1,sp)
3098  071c 2706          	jreq	L3711
3099                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3101  071e 7212530a      	bset	21258,#1
3103  0722 2004          	jra	L5711
3104  0724               L3711:
3105                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3107  0724 7213530a      	bres	21258,#1
3108  0728               L5711:
3109                     ; 684 }
3112  0728 84            	pop	a
3113  0729 81            	ret
3150                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3150                     ; 695 {
3151                     	switch	.text
3152  072a               _TIM2_OC2PolarityConfig:
3154  072a 88            	push	a
3155       00000000      OFST:	set	0
3158                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3160  072b 4d            	tnz	a
3161  072c 2704          	jreq	L004
3162  072e a122          	cp	a,#34
3163  0730 2603          	jrne	L673
3164  0732               L004:
3165  0732 4f            	clr	a
3166  0733 2010          	jra	L204
3167  0735               L673:
3168  0735 ae02b9        	ldw	x,#697
3169  0738 89            	pushw	x
3170  0739 ae0000        	ldw	x,#0
3171  073c 89            	pushw	x
3172  073d ae0000        	ldw	x,#L702
3173  0740 cd0000        	call	_assert_failed
3175  0743 5b04          	addw	sp,#4
3176  0745               L204:
3177                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3179  0745 0d01          	tnz	(OFST+1,sp)
3180  0747 2706          	jreq	L5121
3181                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3183  0749 721a530a      	bset	21258,#5
3185  074d 2004          	jra	L7121
3186  074f               L5121:
3187                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3189  074f 721b530a      	bres	21258,#5
3190  0753               L7121:
3191                     ; 708 }
3194  0753 84            	pop	a
3195  0754 81            	ret
3232                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3232                     ; 719 {
3233                     	switch	.text
3234  0755               _TIM2_OC3PolarityConfig:
3236  0755 88            	push	a
3237       00000000      OFST:	set	0
3240                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3242  0756 4d            	tnz	a
3243  0757 2704          	jreq	L014
3244  0759 a122          	cp	a,#34
3245  075b 2603          	jrne	L604
3246  075d               L014:
3247  075d 4f            	clr	a
3248  075e 2010          	jra	L214
3249  0760               L604:
3250  0760 ae02d1        	ldw	x,#721
3251  0763 89            	pushw	x
3252  0764 ae0000        	ldw	x,#0
3253  0767 89            	pushw	x
3254  0768 ae0000        	ldw	x,#L702
3255  076b cd0000        	call	_assert_failed
3257  076e 5b04          	addw	sp,#4
3258  0770               L214:
3259                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3261  0770 0d01          	tnz	(OFST+1,sp)
3262  0772 2706          	jreq	L7321
3263                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3265  0774 7212530b      	bset	21259,#1
3267  0778 2004          	jra	L1421
3268  077a               L7321:
3269                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3271  077a 7213530b      	bres	21259,#1
3272  077e               L1421:
3273                     ; 732 }
3276  077e 84            	pop	a
3277  077f 81            	ret
3323                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3323                     ; 746 {
3324                     	switch	.text
3325  0780               _TIM2_CCxCmd:
3327  0780 89            	pushw	x
3328       00000000      OFST:	set	0
3331                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3333  0781 9e            	ld	a,xh
3334  0782 4d            	tnz	a
3335  0783 270a          	jreq	L024
3336  0785 9e            	ld	a,xh
3337  0786 a101          	cp	a,#1
3338  0788 2705          	jreq	L024
3339  078a 9e            	ld	a,xh
3340  078b a102          	cp	a,#2
3341  078d 2603          	jrne	L614
3342  078f               L024:
3343  078f 4f            	clr	a
3344  0790 2010          	jra	L224
3345  0792               L614:
3346  0792 ae02ec        	ldw	x,#748
3347  0795 89            	pushw	x
3348  0796 ae0000        	ldw	x,#0
3349  0799 89            	pushw	x
3350  079a ae0000        	ldw	x,#L702
3351  079d cd0000        	call	_assert_failed
3353  07a0 5b04          	addw	sp,#4
3354  07a2               L224:
3355                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3357  07a2 0d02          	tnz	(OFST+2,sp)
3358  07a4 2706          	jreq	L624
3359  07a6 7b02          	ld	a,(OFST+2,sp)
3360  07a8 a101          	cp	a,#1
3361  07aa 2603          	jrne	L424
3362  07ac               L624:
3363  07ac 4f            	clr	a
3364  07ad 2010          	jra	L034
3365  07af               L424:
3366  07af ae02ed        	ldw	x,#749
3367  07b2 89            	pushw	x
3368  07b3 ae0000        	ldw	x,#0
3369  07b6 89            	pushw	x
3370  07b7 ae0000        	ldw	x,#L702
3371  07ba cd0000        	call	_assert_failed
3373  07bd 5b04          	addw	sp,#4
3374  07bf               L034:
3375                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3377  07bf 0d01          	tnz	(OFST+1,sp)
3378  07c1 2610          	jrne	L5621
3379                     ; 754     if (NewState != DISABLE)
3381  07c3 0d02          	tnz	(OFST+2,sp)
3382  07c5 2706          	jreq	L7621
3383                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3385  07c7 7210530a      	bset	21258,#0
3387  07cb 202a          	jra	L3721
3388  07cd               L7621:
3389                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3391  07cd 7211530a      	bres	21258,#0
3392  07d1 2024          	jra	L3721
3393  07d3               L5621:
3394                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3396  07d3 7b01          	ld	a,(OFST+1,sp)
3397  07d5 a101          	cp	a,#1
3398  07d7 2610          	jrne	L5721
3399                     ; 767     if (NewState != DISABLE)
3401  07d9 0d02          	tnz	(OFST+2,sp)
3402  07db 2706          	jreq	L7721
3403                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3405  07dd 7218530a      	bset	21258,#4
3407  07e1 2014          	jra	L3721
3408  07e3               L7721:
3409                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3411  07e3 7219530a      	bres	21258,#4
3412  07e7 200e          	jra	L3721
3413  07e9               L5721:
3414                     ; 779     if (NewState != DISABLE)
3416  07e9 0d02          	tnz	(OFST+2,sp)
3417  07eb 2706          	jreq	L5031
3418                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3420  07ed 7210530b      	bset	21259,#0
3422  07f1 2004          	jra	L3721
3423  07f3               L5031:
3424                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3426  07f3 7211530b      	bres	21259,#0
3427  07f7               L3721:
3428                     ; 788 }
3431  07f7 85            	popw	x
3432  07f8 81            	ret
3478                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3478                     ; 811 {
3479                     	switch	.text
3480  07f9               _TIM2_SelectOCxM:
3482  07f9 89            	pushw	x
3483       00000000      OFST:	set	0
3486                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3488  07fa 9e            	ld	a,xh
3489  07fb 4d            	tnz	a
3490  07fc 270a          	jreq	L634
3491  07fe 9e            	ld	a,xh
3492  07ff a101          	cp	a,#1
3493  0801 2705          	jreq	L634
3494  0803 9e            	ld	a,xh
3495  0804 a102          	cp	a,#2
3496  0806 2603          	jrne	L434
3497  0808               L634:
3498  0808 4f            	clr	a
3499  0809 2010          	jra	L044
3500  080b               L434:
3501  080b ae032d        	ldw	x,#813
3502  080e 89            	pushw	x
3503  080f ae0000        	ldw	x,#0
3504  0812 89            	pushw	x
3505  0813 ae0000        	ldw	x,#L702
3506  0816 cd0000        	call	_assert_failed
3508  0819 5b04          	addw	sp,#4
3509  081b               L044:
3510                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3512  081b 0d02          	tnz	(OFST+2,sp)
3513  081d 272a          	jreq	L444
3514  081f 7b02          	ld	a,(OFST+2,sp)
3515  0821 a110          	cp	a,#16
3516  0823 2724          	jreq	L444
3517  0825 7b02          	ld	a,(OFST+2,sp)
3518  0827 a120          	cp	a,#32
3519  0829 271e          	jreq	L444
3520  082b 7b02          	ld	a,(OFST+2,sp)
3521  082d a130          	cp	a,#48
3522  082f 2718          	jreq	L444
3523  0831 7b02          	ld	a,(OFST+2,sp)
3524  0833 a160          	cp	a,#96
3525  0835 2712          	jreq	L444
3526  0837 7b02          	ld	a,(OFST+2,sp)
3527  0839 a170          	cp	a,#112
3528  083b 270c          	jreq	L444
3529  083d 7b02          	ld	a,(OFST+2,sp)
3530  083f a150          	cp	a,#80
3531  0841 2706          	jreq	L444
3532  0843 7b02          	ld	a,(OFST+2,sp)
3533  0845 a140          	cp	a,#64
3534  0847 2603          	jrne	L244
3535  0849               L444:
3536  0849 4f            	clr	a
3537  084a 2010          	jra	L644
3538  084c               L244:
3539  084c ae032e        	ldw	x,#814
3540  084f 89            	pushw	x
3541  0850 ae0000        	ldw	x,#0
3542  0853 89            	pushw	x
3543  0854 ae0000        	ldw	x,#L702
3544  0857 cd0000        	call	_assert_failed
3546  085a 5b04          	addw	sp,#4
3547  085c               L644:
3548                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3550  085c 0d01          	tnz	(OFST+1,sp)
3551  085e 2610          	jrne	L3331
3552                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3554  0860 7211530a      	bres	21258,#0
3555                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3555                     ; 823                             | (uint8_t)TIM2_OCMode);
3557  0864 c65307        	ld	a,21255
3558  0867 a48f          	and	a,#143
3559  0869 1a02          	or	a,(OFST+2,sp)
3560  086b c75307        	ld	21255,a
3562  086e 2024          	jra	L5331
3563  0870               L3331:
3564                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3566  0870 7b01          	ld	a,(OFST+1,sp)
3567  0872 a101          	cp	a,#1
3568  0874 2610          	jrne	L7331
3569                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3571  0876 7219530a      	bres	21258,#4
3572                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3572                     ; 832                             | (uint8_t)TIM2_OCMode);
3574  087a c65308        	ld	a,21256
3575  087d a48f          	and	a,#143
3576  087f 1a02          	or	a,(OFST+2,sp)
3577  0881 c75308        	ld	21256,a
3579  0884 200e          	jra	L5331
3580  0886               L7331:
3581                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3583  0886 7211530b      	bres	21259,#0
3584                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3584                     ; 841                             | (uint8_t)TIM2_OCMode);
3586  088a c65309        	ld	a,21257
3587  088d a48f          	and	a,#143
3588  088f 1a02          	or	a,(OFST+2,sp)
3589  0891 c75309        	ld	21257,a
3590  0894               L5331:
3591                     ; 843 }
3594  0894 85            	popw	x
3595  0895 81            	ret
3629                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3629                     ; 852 {
3630                     	switch	.text
3631  0896               _TIM2_SetCounter:
3635                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3637  0896 9e            	ld	a,xh
3638  0897 c7530c        	ld	21260,a
3639                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3641  089a 9f            	ld	a,xl
3642  089b c7530d        	ld	21261,a
3643                     ; 856 }
3646  089e 81            	ret
3680                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3680                     ; 865 {
3681                     	switch	.text
3682  089f               _TIM2_SetAutoreload:
3686                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3688  089f 9e            	ld	a,xh
3689  08a0 c7530f        	ld	21263,a
3690                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3692  08a3 9f            	ld	a,xl
3693  08a4 c75310        	ld	21264,a
3694                     ; 869 }
3697  08a7 81            	ret
3731                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3731                     ; 878 {
3732                     	switch	.text
3733  08a8               _TIM2_SetCompare1:
3737                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3739  08a8 9e            	ld	a,xh
3740  08a9 c75311        	ld	21265,a
3741                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3743  08ac 9f            	ld	a,xl
3744  08ad c75312        	ld	21266,a
3745                     ; 882 }
3748  08b0 81            	ret
3782                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3782                     ; 891 {
3783                     	switch	.text
3784  08b1               _TIM2_SetCompare2:
3788                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3790  08b1 9e            	ld	a,xh
3791  08b2 c75313        	ld	21267,a
3792                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3794  08b5 9f            	ld	a,xl
3795  08b6 c75314        	ld	21268,a
3796                     ; 895 }
3799  08b9 81            	ret
3833                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3833                     ; 904 {
3834                     	switch	.text
3835  08ba               _TIM2_SetCompare3:
3839                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3841  08ba 9e            	ld	a,xh
3842  08bb c75315        	ld	21269,a
3843                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3845  08be 9f            	ld	a,xl
3846  08bf c75316        	ld	21270,a
3847                     ; 908 }
3850  08c2 81            	ret
3887                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3887                     ; 921 {
3888                     	switch	.text
3889  08c3               _TIM2_SetIC1Prescaler:
3891  08c3 88            	push	a
3892       00000000      OFST:	set	0
3895                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3897  08c4 4d            	tnz	a
3898  08c5 270c          	jreq	L664
3899  08c7 a104          	cp	a,#4
3900  08c9 2708          	jreq	L664
3901  08cb a108          	cp	a,#8
3902  08cd 2704          	jreq	L664
3903  08cf a10c          	cp	a,#12
3904  08d1 2603          	jrne	L464
3905  08d3               L664:
3906  08d3 4f            	clr	a
3907  08d4 2010          	jra	L074
3908  08d6               L464:
3909  08d6 ae039b        	ldw	x,#923
3910  08d9 89            	pushw	x
3911  08da ae0000        	ldw	x,#0
3912  08dd 89            	pushw	x
3913  08de ae0000        	ldw	x,#L702
3914  08e1 cd0000        	call	_assert_failed
3916  08e4 5b04          	addw	sp,#4
3917  08e6               L074:
3918                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3918                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3920  08e6 c65307        	ld	a,21255
3921  08e9 a4f3          	and	a,#243
3922  08eb 1a01          	or	a,(OFST+1,sp)
3923  08ed c75307        	ld	21255,a
3924                     ; 928 }
3927  08f0 84            	pop	a
3928  08f1 81            	ret
3965                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3965                     ; 941 {
3966                     	switch	.text
3967  08f2               _TIM2_SetIC2Prescaler:
3969  08f2 88            	push	a
3970       00000000      OFST:	set	0
3973                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3975  08f3 4d            	tnz	a
3976  08f4 270c          	jreq	L674
3977  08f6 a104          	cp	a,#4
3978  08f8 2708          	jreq	L674
3979  08fa a108          	cp	a,#8
3980  08fc 2704          	jreq	L674
3981  08fe a10c          	cp	a,#12
3982  0900 2603          	jrne	L474
3983  0902               L674:
3984  0902 4f            	clr	a
3985  0903 2010          	jra	L005
3986  0905               L474:
3987  0905 ae03af        	ldw	x,#943
3988  0908 89            	pushw	x
3989  0909 ae0000        	ldw	x,#0
3990  090c 89            	pushw	x
3991  090d ae0000        	ldw	x,#L702
3992  0910 cd0000        	call	_assert_failed
3994  0913 5b04          	addw	sp,#4
3995  0915               L005:
3996                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3996                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3998  0915 c65308        	ld	a,21256
3999  0918 a4f3          	and	a,#243
4000  091a 1a01          	or	a,(OFST+1,sp)
4001  091c c75308        	ld	21256,a
4002                     ; 948 }
4005  091f 84            	pop	a
4006  0920 81            	ret
4043                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4043                     ; 961 {
4044                     	switch	.text
4045  0921               _TIM2_SetIC3Prescaler:
4047  0921 88            	push	a
4048       00000000      OFST:	set	0
4051                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4053  0922 4d            	tnz	a
4054  0923 270c          	jreq	L605
4055  0925 a104          	cp	a,#4
4056  0927 2708          	jreq	L605
4057  0929 a108          	cp	a,#8
4058  092b 2704          	jreq	L605
4059  092d a10c          	cp	a,#12
4060  092f 2603          	jrne	L405
4061  0931               L605:
4062  0931 4f            	clr	a
4063  0932 2010          	jra	L015
4064  0934               L405:
4065  0934 ae03c4        	ldw	x,#964
4066  0937 89            	pushw	x
4067  0938 ae0000        	ldw	x,#0
4068  093b 89            	pushw	x
4069  093c ae0000        	ldw	x,#L702
4070  093f cd0000        	call	_assert_failed
4072  0942 5b04          	addw	sp,#4
4073  0944               L015:
4074                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4074                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4076  0944 c65309        	ld	a,21257
4077  0947 a4f3          	and	a,#243
4078  0949 1a01          	or	a,(OFST+1,sp)
4079  094b c75309        	ld	21257,a
4080                     ; 968 }
4083  094e 84            	pop	a
4084  094f 81            	ret
4136                     ; 975 uint16_t TIM2_GetCapture1(void)
4136                     ; 976 {
4137                     	switch	.text
4138  0950               _TIM2_GetCapture1:
4140  0950 5204          	subw	sp,#4
4141       00000004      OFST:	set	4
4144                     ; 978   uint16_t tmpccr1 = 0;
4146                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4150                     ; 981   tmpccr1h = TIM2->CCR1H;
4152  0952 c65311        	ld	a,21265
4153  0955 6b02          	ld	(OFST-2,sp),a
4155                     ; 982   tmpccr1l = TIM2->CCR1L;
4157  0957 c65312        	ld	a,21266
4158  095a 6b01          	ld	(OFST-3,sp),a
4160                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4162  095c 7b01          	ld	a,(OFST-3,sp)
4163  095e 5f            	clrw	x
4164  095f 97            	ld	xl,a
4165  0960 1f03          	ldw	(OFST-1,sp),x
4167                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4169  0962 7b02          	ld	a,(OFST-2,sp)
4170  0964 5f            	clrw	x
4171  0965 97            	ld	xl,a
4172  0966 4f            	clr	a
4173  0967 02            	rlwa	x,a
4174  0968 01            	rrwa	x,a
4175  0969 1a04          	or	a,(OFST+0,sp)
4176  096b 01            	rrwa	x,a
4177  096c 1a03          	or	a,(OFST-1,sp)
4178  096e 01            	rrwa	x,a
4179  096f 1f03          	ldw	(OFST-1,sp),x
4181                     ; 987   return (uint16_t)tmpccr1;
4183  0971 1e03          	ldw	x,(OFST-1,sp)
4186  0973 5b04          	addw	sp,#4
4187  0975 81            	ret
4239                     ; 995 uint16_t TIM2_GetCapture2(void)
4239                     ; 996 {
4240                     	switch	.text
4241  0976               _TIM2_GetCapture2:
4243  0976 5204          	subw	sp,#4
4244       00000004      OFST:	set	4
4247                     ; 998   uint16_t tmpccr2 = 0;
4249                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4253                     ; 1001   tmpccr2h = TIM2->CCR2H;
4255  0978 c65313        	ld	a,21267
4256  097b 6b02          	ld	(OFST-2,sp),a
4258                     ; 1002   tmpccr2l = TIM2->CCR2L;
4260  097d c65314        	ld	a,21268
4261  0980 6b01          	ld	(OFST-3,sp),a
4263                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4265  0982 7b01          	ld	a,(OFST-3,sp)
4266  0984 5f            	clrw	x
4267  0985 97            	ld	xl,a
4268  0986 1f03          	ldw	(OFST-1,sp),x
4270                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4272  0988 7b02          	ld	a,(OFST-2,sp)
4273  098a 5f            	clrw	x
4274  098b 97            	ld	xl,a
4275  098c 4f            	clr	a
4276  098d 02            	rlwa	x,a
4277  098e 01            	rrwa	x,a
4278  098f 1a04          	or	a,(OFST+0,sp)
4279  0991 01            	rrwa	x,a
4280  0992 1a03          	or	a,(OFST-1,sp)
4281  0994 01            	rrwa	x,a
4282  0995 1f03          	ldw	(OFST-1,sp),x
4284                     ; 1007   return (uint16_t)tmpccr2;
4286  0997 1e03          	ldw	x,(OFST-1,sp)
4289  0999 5b04          	addw	sp,#4
4290  099b 81            	ret
4342                     ; 1015 uint16_t TIM2_GetCapture3(void)
4342                     ; 1016 {
4343                     	switch	.text
4344  099c               _TIM2_GetCapture3:
4346  099c 5204          	subw	sp,#4
4347       00000004      OFST:	set	4
4350                     ; 1018   uint16_t tmpccr3 = 0;
4352                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4356                     ; 1021   tmpccr3h = TIM2->CCR3H;
4358  099e c65315        	ld	a,21269
4359  09a1 6b02          	ld	(OFST-2,sp),a
4361                     ; 1022   tmpccr3l = TIM2->CCR3L;
4363  09a3 c65316        	ld	a,21270
4364  09a6 6b01          	ld	(OFST-3,sp),a
4366                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4368  09a8 7b01          	ld	a,(OFST-3,sp)
4369  09aa 5f            	clrw	x
4370  09ab 97            	ld	xl,a
4371  09ac 1f03          	ldw	(OFST-1,sp),x
4373                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4375  09ae 7b02          	ld	a,(OFST-2,sp)
4376  09b0 5f            	clrw	x
4377  09b1 97            	ld	xl,a
4378  09b2 4f            	clr	a
4379  09b3 02            	rlwa	x,a
4380  09b4 01            	rrwa	x,a
4381  09b5 1a04          	or	a,(OFST+0,sp)
4382  09b7 01            	rrwa	x,a
4383  09b8 1a03          	or	a,(OFST-1,sp)
4384  09ba 01            	rrwa	x,a
4385  09bb 1f03          	ldw	(OFST-1,sp),x
4387                     ; 1027   return (uint16_t)tmpccr3;
4389  09bd 1e03          	ldw	x,(OFST-1,sp)
4392  09bf 5b04          	addw	sp,#4
4393  09c1 81            	ret
4427                     ; 1035 uint16_t TIM2_GetCounter(void)
4427                     ; 1036 {
4428                     	switch	.text
4429  09c2               _TIM2_GetCounter:
4431  09c2 89            	pushw	x
4432       00000002      OFST:	set	2
4435                     ; 1037   uint16_t tmpcntr = 0;
4437                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4439  09c3 c6530c        	ld	a,21260
4440  09c6 5f            	clrw	x
4441  09c7 97            	ld	xl,a
4442  09c8 4f            	clr	a
4443  09c9 02            	rlwa	x,a
4444  09ca 1f01          	ldw	(OFST-1,sp),x
4446                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4448  09cc c6530d        	ld	a,21261
4449  09cf 5f            	clrw	x
4450  09d0 97            	ld	xl,a
4451  09d1 01            	rrwa	x,a
4452  09d2 1a02          	or	a,(OFST+0,sp)
4453  09d4 01            	rrwa	x,a
4454  09d5 1a01          	or	a,(OFST-1,sp)
4455  09d7 01            	rrwa	x,a
4458  09d8 5b02          	addw	sp,#2
4459  09da 81            	ret
4483                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4483                     ; 1050 {
4484                     	switch	.text
4485  09db               _TIM2_GetPrescaler:
4489                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4491  09db c6530e        	ld	a,21262
4494  09de 81            	ret
4634                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4634                     ; 1069 {
4635                     	switch	.text
4636  09df               _TIM2_GetFlagStatus:
4638  09df 89            	pushw	x
4639  09e0 89            	pushw	x
4640       00000002      OFST:	set	2
4643                     ; 1070   FlagStatus bitstatus = RESET;
4645                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4649                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4651  09e1 a30001        	cpw	x,#1
4652  09e4 271e          	jreq	L035
4653  09e6 a30002        	cpw	x,#2
4654  09e9 2719          	jreq	L035
4655  09eb a30004        	cpw	x,#4
4656  09ee 2714          	jreq	L035
4657  09f0 a30008        	cpw	x,#8
4658  09f3 270f          	jreq	L035
4659  09f5 a30200        	cpw	x,#512
4660  09f8 270a          	jreq	L035
4661  09fa a30400        	cpw	x,#1024
4662  09fd 2705          	jreq	L035
4663  09ff a30800        	cpw	x,#2048
4664  0a02 2603          	jrne	L625
4665  0a04               L035:
4666  0a04 4f            	clr	a
4667  0a05 2010          	jra	L235
4668  0a07               L625:
4669  0a07 ae0432        	ldw	x,#1074
4670  0a0a 89            	pushw	x
4671  0a0b ae0000        	ldw	x,#0
4672  0a0e 89            	pushw	x
4673  0a0f ae0000        	ldw	x,#L702
4674  0a12 cd0000        	call	_assert_failed
4676  0a15 5b04          	addw	sp,#4
4677  0a17               L235:
4678                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4680  0a17 c65304        	ld	a,21252
4681  0a1a 1404          	and	a,(OFST+2,sp)
4682  0a1c 6b01          	ld	(OFST-1,sp),a
4684                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4686  0a1e 7b03          	ld	a,(OFST+1,sp)
4687  0a20 6b02          	ld	(OFST+0,sp),a
4689                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4691  0a22 c65305        	ld	a,21253
4692  0a25 1402          	and	a,(OFST+0,sp)
4693  0a27 1a01          	or	a,(OFST-1,sp)
4694  0a29 2706          	jreq	L7371
4695                     ; 1081     bitstatus = SET;
4697  0a2b a601          	ld	a,#1
4698  0a2d 6b02          	ld	(OFST+0,sp),a
4701  0a2f 2002          	jra	L1471
4702  0a31               L7371:
4703                     ; 1085     bitstatus = RESET;
4705  0a31 0f02          	clr	(OFST+0,sp)
4707  0a33               L1471:
4708                     ; 1087   return (FlagStatus)bitstatus;
4710  0a33 7b02          	ld	a,(OFST+0,sp)
4713  0a35 5b04          	addw	sp,#4
4714  0a37 81            	ret
4750                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4750                     ; 1104 {
4751                     	switch	.text
4752  0a38               _TIM2_ClearFlag:
4754  0a38 89            	pushw	x
4755       00000000      OFST:	set	0
4758                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4760  0a39 01            	rrwa	x,a
4761  0a3a a4f0          	and	a,#240
4762  0a3c 01            	rrwa	x,a
4763  0a3d a4f1          	and	a,#241
4764  0a3f 01            	rrwa	x,a
4765  0a40 a30000        	cpw	x,#0
4766  0a43 2607          	jrne	L635
4767  0a45 1e01          	ldw	x,(OFST+1,sp)
4768  0a47 2703          	jreq	L635
4769  0a49 4f            	clr	a
4770  0a4a 2010          	jra	L045
4771  0a4c               L635:
4772  0a4c ae0452        	ldw	x,#1106
4773  0a4f 89            	pushw	x
4774  0a50 ae0000        	ldw	x,#0
4775  0a53 89            	pushw	x
4776  0a54 ae0000        	ldw	x,#L702
4777  0a57 cd0000        	call	_assert_failed
4779  0a5a 5b04          	addw	sp,#4
4780  0a5c               L045:
4781                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4783  0a5c 7b02          	ld	a,(OFST+2,sp)
4784  0a5e 43            	cpl	a
4785  0a5f c75304        	ld	21252,a
4786                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4788  0a62 35ff5305      	mov	21253,#255
4789                     ; 1111 }
4792  0a66 85            	popw	x
4793  0a67 81            	ret
4858                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4858                     ; 1124 {
4859                     	switch	.text
4860  0a68               _TIM2_GetITStatus:
4862  0a68 88            	push	a
4863  0a69 89            	pushw	x
4864       00000002      OFST:	set	2
4867                     ; 1125   ITStatus bitstatus = RESET;
4869                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4873                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4875  0a6a a101          	cp	a,#1
4876  0a6c 270c          	jreq	L645
4877  0a6e a102          	cp	a,#2
4878  0a70 2708          	jreq	L645
4879  0a72 a104          	cp	a,#4
4880  0a74 2704          	jreq	L645
4881  0a76 a108          	cp	a,#8
4882  0a78 2603          	jrne	L445
4883  0a7a               L645:
4884  0a7a 4f            	clr	a
4885  0a7b 2010          	jra	L055
4886  0a7d               L445:
4887  0a7d ae0469        	ldw	x,#1129
4888  0a80 89            	pushw	x
4889  0a81 ae0000        	ldw	x,#0
4890  0a84 89            	pushw	x
4891  0a85 ae0000        	ldw	x,#L702
4892  0a88 cd0000        	call	_assert_failed
4894  0a8b 5b04          	addw	sp,#4
4895  0a8d               L055:
4896                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4898  0a8d c65304        	ld	a,21252
4899  0a90 1403          	and	a,(OFST+1,sp)
4900  0a92 6b01          	ld	(OFST-1,sp),a
4902                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4904  0a94 c65303        	ld	a,21251
4905  0a97 1403          	and	a,(OFST+1,sp)
4906  0a99 6b02          	ld	(OFST+0,sp),a
4908                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4910  0a9b 0d01          	tnz	(OFST-1,sp)
4911  0a9d 270a          	jreq	L3102
4913  0a9f 0d02          	tnz	(OFST+0,sp)
4914  0aa1 2706          	jreq	L3102
4915                     ; 1137     bitstatus = SET;
4917  0aa3 a601          	ld	a,#1
4918  0aa5 6b02          	ld	(OFST+0,sp),a
4921  0aa7 2002          	jra	L5102
4922  0aa9               L3102:
4923                     ; 1141     bitstatus = RESET;
4925  0aa9 0f02          	clr	(OFST+0,sp)
4927  0aab               L5102:
4928                     ; 1143   return (ITStatus)(bitstatus);
4930  0aab 7b02          	ld	a,(OFST+0,sp)
4933  0aad 5b03          	addw	sp,#3
4934  0aaf 81            	ret
4971                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4971                     ; 1157 {
4972                     	switch	.text
4973  0ab0               _TIM2_ClearITPendingBit:
4975  0ab0 88            	push	a
4976       00000000      OFST:	set	0
4979                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4981  0ab1 4d            	tnz	a
4982  0ab2 2707          	jreq	L455
4983  0ab4 a110          	cp	a,#16
4984  0ab6 2403          	jruge	L455
4985  0ab8 4f            	clr	a
4986  0ab9 2010          	jra	L655
4987  0abb               L455:
4988  0abb ae0487        	ldw	x,#1159
4989  0abe 89            	pushw	x
4990  0abf ae0000        	ldw	x,#0
4991  0ac2 89            	pushw	x
4992  0ac3 ae0000        	ldw	x,#L702
4993  0ac6 cd0000        	call	_assert_failed
4995  0ac9 5b04          	addw	sp,#4
4996  0acb               L655:
4997                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4999  0acb 7b01          	ld	a,(OFST+1,sp)
5000  0acd 43            	cpl	a
5001  0ace c75304        	ld	21252,a
5002                     ; 1163 }
5005  0ad1 84            	pop	a
5006  0ad2 81            	ret
5058                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
5058                     ; 1182                        uint8_t TIM2_ICSelection,
5058                     ; 1183                        uint8_t TIM2_ICFilter)
5058                     ; 1184 {
5059                     	switch	.text
5060  0ad3               L3_TI1_Config:
5062  0ad3 89            	pushw	x
5063  0ad4 88            	push	a
5064       00000001      OFST:	set	1
5067                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
5069  0ad5 7211530a      	bres	21258,#0
5070                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
5070                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5072  0ad9 7b06          	ld	a,(OFST+5,sp)
5073  0adb 97            	ld	xl,a
5074  0adc a610          	ld	a,#16
5075  0ade 42            	mul	x,a
5076  0adf 9f            	ld	a,xl
5077  0ae0 1a03          	or	a,(OFST+2,sp)
5078  0ae2 6b01          	ld	(OFST+0,sp),a
5080  0ae4 c65307        	ld	a,21255
5081  0ae7 a40c          	and	a,#12
5082  0ae9 1a01          	or	a,(OFST+0,sp)
5083  0aeb c75307        	ld	21255,a
5084                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5086  0aee 0d02          	tnz	(OFST+1,sp)
5087  0af0 2706          	jreq	L3602
5088                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5090  0af2 7212530a      	bset	21258,#1
5092  0af6 2004          	jra	L5602
5093  0af8               L3602:
5094                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5096  0af8 7213530a      	bres	21258,#1
5097  0afc               L5602:
5098                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5100  0afc 7210530a      	bset	21258,#0
5101                     ; 1203 }
5104  0b00 5b03          	addw	sp,#3
5105  0b02 81            	ret
5157                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5157                     ; 1222                        uint8_t TIM2_ICSelection,
5157                     ; 1223                        uint8_t TIM2_ICFilter)
5157                     ; 1224 {
5158                     	switch	.text
5159  0b03               L5_TI2_Config:
5161  0b03 89            	pushw	x
5162  0b04 88            	push	a
5163       00000001      OFST:	set	1
5166                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5168  0b05 7219530a      	bres	21258,#4
5169                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5169                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5171  0b09 7b06          	ld	a,(OFST+5,sp)
5172  0b0b 97            	ld	xl,a
5173  0b0c a610          	ld	a,#16
5174  0b0e 42            	mul	x,a
5175  0b0f 9f            	ld	a,xl
5176  0b10 1a03          	or	a,(OFST+2,sp)
5177  0b12 6b01          	ld	(OFST+0,sp),a
5179  0b14 c65308        	ld	a,21256
5180  0b17 a40c          	and	a,#12
5181  0b19 1a01          	or	a,(OFST+0,sp)
5182  0b1b c75308        	ld	21256,a
5183                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5185  0b1e 0d02          	tnz	(OFST+1,sp)
5186  0b20 2706          	jreq	L5112
5187                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5189  0b22 721a530a      	bset	21258,#5
5191  0b26 2004          	jra	L7112
5192  0b28               L5112:
5193                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5195  0b28 721b530a      	bres	21258,#5
5196  0b2c               L7112:
5197                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5199  0b2c 7218530a      	bset	21258,#4
5200                     ; 1245 }
5203  0b30 5b03          	addw	sp,#3
5204  0b32 81            	ret
5256                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5256                     ; 1262                        uint8_t TIM2_ICFilter)
5256                     ; 1263 {
5257                     	switch	.text
5258  0b33               L7_TI3_Config:
5260  0b33 89            	pushw	x
5261  0b34 88            	push	a
5262       00000001      OFST:	set	1
5265                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5267  0b35 7211530b      	bres	21259,#0
5268                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5268                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5270  0b39 7b06          	ld	a,(OFST+5,sp)
5271  0b3b 97            	ld	xl,a
5272  0b3c a610          	ld	a,#16
5273  0b3e 42            	mul	x,a
5274  0b3f 9f            	ld	a,xl
5275  0b40 1a03          	or	a,(OFST+2,sp)
5276  0b42 6b01          	ld	(OFST+0,sp),a
5278  0b44 c65309        	ld	a,21257
5279  0b47 a40c          	and	a,#12
5280  0b49 1a01          	or	a,(OFST+0,sp)
5281  0b4b c75309        	ld	21257,a
5282                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5284  0b4e 0d02          	tnz	(OFST+1,sp)
5285  0b50 2706          	jreq	L7412
5286                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5288  0b52 7212530b      	bset	21259,#1
5290  0b56 2004          	jra	L1512
5291  0b58               L7412:
5292                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5294  0b58 7213530b      	bres	21259,#1
5295  0b5c               L1512:
5296                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5298  0b5c 7210530b      	bset	21259,#0
5299                     ; 1283 }
5302  0b60 5b03          	addw	sp,#3
5303  0b62 81            	ret
5316                     	xdef	_TIM2_ClearITPendingBit
5317                     	xdef	_TIM2_GetITStatus
5318                     	xdef	_TIM2_ClearFlag
5319                     	xdef	_TIM2_GetFlagStatus
5320                     	xdef	_TIM2_GetPrescaler
5321                     	xdef	_TIM2_GetCounter
5322                     	xdef	_TIM2_GetCapture3
5323                     	xdef	_TIM2_GetCapture2
5324                     	xdef	_TIM2_GetCapture1
5325                     	xdef	_TIM2_SetIC3Prescaler
5326                     	xdef	_TIM2_SetIC2Prescaler
5327                     	xdef	_TIM2_SetIC1Prescaler
5328                     	xdef	_TIM2_SetCompare3
5329                     	xdef	_TIM2_SetCompare2
5330                     	xdef	_TIM2_SetCompare1
5331                     	xdef	_TIM2_SetAutoreload
5332                     	xdef	_TIM2_SetCounter
5333                     	xdef	_TIM2_SelectOCxM
5334                     	xdef	_TIM2_CCxCmd
5335                     	xdef	_TIM2_OC3PolarityConfig
5336                     	xdef	_TIM2_OC2PolarityConfig
5337                     	xdef	_TIM2_OC1PolarityConfig
5338                     	xdef	_TIM2_GenerateEvent
5339                     	xdef	_TIM2_OC3PreloadConfig
5340                     	xdef	_TIM2_OC2PreloadConfig
5341                     	xdef	_TIM2_OC1PreloadConfig
5342                     	xdef	_TIM2_ARRPreloadConfig
5343                     	xdef	_TIM2_ForcedOC3Config
5344                     	xdef	_TIM2_ForcedOC2Config
5345                     	xdef	_TIM2_ForcedOC1Config
5346                     	xdef	_TIM2_PrescalerConfig
5347                     	xdef	_TIM2_SelectOnePulseMode
5348                     	xdef	_TIM2_UpdateRequestConfig
5349                     	xdef	_TIM2_UpdateDisableConfig
5350                     	xdef	_TIM2_ITConfig
5351                     	xdef	_TIM2_Cmd
5352                     	xdef	_TIM2_PWMIConfig
5353                     	xdef	_TIM2_ICInit
5354                     	xdef	_TIM2_OC3Init
5355                     	xdef	_TIM2_OC2Init
5356                     	xdef	_TIM2_OC1Init
5357                     	xdef	_TIM2_TimeBaseInit
5358                     	xdef	_TIM2_DeInit
5359                     	xref	_assert_failed
5360                     .const:	section	.text
5361  0000               L702:
5362  0000 7372635c7374  	dc.b	"src\stm8s_tim2.c",0
5382                     	end
