   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 58 void TIM1_DeInit(void)
  42                     ; 59 {
  44                     	switch	.text
  45  0000               _TIM1_DeInit:
  49                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  51  0000 725f5250      	clr	21072
  52                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  54  0004 725f5251      	clr	21073
  55                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  57  0008 725f5252      	clr	21074
  58                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  60  000c 725f5253      	clr	21075
  61                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  63  0010 725f5254      	clr	21076
  64                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  66  0014 725f5256      	clr	21078
  67                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  69  0018 725f525c      	clr	21084
  70                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  72  001c 725f525d      	clr	21085
  73                     ; 70   TIM1->CCMR1 = 0x01;
  75  0020 35015258      	mov	21080,#1
  76                     ; 71   TIM1->CCMR2 = 0x01;
  78  0024 35015259      	mov	21081,#1
  79                     ; 72   TIM1->CCMR3 = 0x01;
  81  0028 3501525a      	mov	21082,#1
  82                     ; 73   TIM1->CCMR4 = 0x01;
  84  002c 3501525b      	mov	21083,#1
  85                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  87  0030 725f525c      	clr	21084
  88                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  90  0034 725f525d      	clr	21085
  91                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  93  0038 725f5258      	clr	21080
  94                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  96  003c 725f5259      	clr	21081
  97                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  99  0040 725f525a      	clr	21082
 100                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 102  0044 725f525b      	clr	21083
 103                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 105  0048 725f525e      	clr	21086
 106                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 108  004c 725f525f      	clr	21087
 109                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 111  0050 725f5260      	clr	21088
 112                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 114  0054 725f5261      	clr	21089
 115                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 117  0058 35ff5262      	mov	21090,#255
 118                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 120  005c 35ff5263      	mov	21091,#255
 121                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 123  0060 725f5265      	clr	21093
 124                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 126  0064 725f5266      	clr	21094
 127                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 129  0068 725f5267      	clr	21095
 130                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 132  006c 725f5268      	clr	21096
 133                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 135  0070 725f5269      	clr	21097
 136                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 138  0074 725f526a      	clr	21098
 139                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 141  0078 725f526b      	clr	21099
 142                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 144  007c 725f526c      	clr	21100
 145                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 147  0080 725f526f      	clr	21103
 148                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 150  0084 35015257      	mov	21079,#1
 151                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 153  0088 725f526e      	clr	21102
 154                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 156  008c 725f526d      	clr	21101
 157                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 159  0090 725f5264      	clr	21092
 160                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 162  0094 725f5255      	clr	21077
 163                     ; 101 }
 166  0098 81            	ret
 276                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 276                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 276                     ; 113                        uint16_t TIM1_Period,
 276                     ; 114                        uint8_t TIM1_RepetitionCounter)
 276                     ; 115 {
 277                     	switch	.text
 278  0099               _TIM1_TimeBaseInit:
 280  0099 89            	pushw	x
 281       00000000      OFST:	set	0
 284                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 286  009a 0d05          	tnz	(OFST+5,sp)
 287  009c 2718          	jreq	L21
 288  009e 7b05          	ld	a,(OFST+5,sp)
 289  00a0 a110          	cp	a,#16
 290  00a2 2712          	jreq	L21
 291  00a4 7b05          	ld	a,(OFST+5,sp)
 292  00a6 a120          	cp	a,#32
 293  00a8 270c          	jreq	L21
 294  00aa 7b05          	ld	a,(OFST+5,sp)
 295  00ac a140          	cp	a,#64
 296  00ae 2706          	jreq	L21
 297  00b0 7b05          	ld	a,(OFST+5,sp)
 298  00b2 a160          	cp	a,#96
 299  00b4 2603          	jrne	L01
 300  00b6               L21:
 301  00b6 4f            	clr	a
 302  00b7 2010          	jra	L41
 303  00b9               L01:
 304  00b9 ae0075        	ldw	x,#117
 305  00bc 89            	pushw	x
 306  00bd ae0000        	ldw	x,#0
 307  00c0 89            	pushw	x
 308  00c1 ae0000        	ldw	x,#L101
 309  00c4 cd0000        	call	_assert_failed
 311  00c7 5b04          	addw	sp,#4
 312  00c9               L41:
 313                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 315  00c9 7b06          	ld	a,(OFST+6,sp)
 316  00cb c75262        	ld	21090,a
 317                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 319  00ce 7b07          	ld	a,(OFST+7,sp)
 320  00d0 c75263        	ld	21091,a
 321                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 323  00d3 7b01          	ld	a,(OFST+1,sp)
 324  00d5 c75260        	ld	21088,a
 325                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 327  00d8 7b02          	ld	a,(OFST+2,sp)
 328  00da c75261        	ld	21089,a
 329                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 329                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 331  00dd c65250        	ld	a,21072
 332  00e0 a48f          	and	a,#143
 333  00e2 1a05          	or	a,(OFST+5,sp)
 334  00e4 c75250        	ld	21072,a
 335                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 337  00e7 7b08          	ld	a,(OFST+8,sp)
 338  00e9 c75264        	ld	21092,a
 339                     ; 133 }
 342  00ec 85            	popw	x
 343  00ed 81            	ret
 629                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 629                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 629                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 629                     ; 157                   uint16_t TIM1_Pulse,
 629                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 629                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 629                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 629                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 629                     ; 162 {
 630                     	switch	.text
 631  00ee               _TIM1_OC1Init:
 633  00ee 89            	pushw	x
 634  00ef 5203          	subw	sp,#3
 635       00000003      OFST:	set	3
 638                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 640  00f1 9e            	ld	a,xh
 641  00f2 4d            	tnz	a
 642  00f3 2719          	jreq	L22
 643  00f5 9e            	ld	a,xh
 644  00f6 a110          	cp	a,#16
 645  00f8 2714          	jreq	L22
 646  00fa 9e            	ld	a,xh
 647  00fb a120          	cp	a,#32
 648  00fd 270f          	jreq	L22
 649  00ff 9e            	ld	a,xh
 650  0100 a130          	cp	a,#48
 651  0102 270a          	jreq	L22
 652  0104 9e            	ld	a,xh
 653  0105 a160          	cp	a,#96
 654  0107 2705          	jreq	L22
 655  0109 9e            	ld	a,xh
 656  010a a170          	cp	a,#112
 657  010c 2603          	jrne	L02
 658  010e               L22:
 659  010e 4f            	clr	a
 660  010f 2010          	jra	L42
 661  0111               L02:
 662  0111 ae00a4        	ldw	x,#164
 663  0114 89            	pushw	x
 664  0115 ae0000        	ldw	x,#0
 665  0118 89            	pushw	x
 666  0119 ae0000        	ldw	x,#L101
 667  011c cd0000        	call	_assert_failed
 669  011f 5b04          	addw	sp,#4
 670  0121               L42:
 671                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 673  0121 0d05          	tnz	(OFST+2,sp)
 674  0123 2706          	jreq	L03
 675  0125 7b05          	ld	a,(OFST+2,sp)
 676  0127 a111          	cp	a,#17
 677  0129 2603          	jrne	L62
 678  012b               L03:
 679  012b 4f            	clr	a
 680  012c 2010          	jra	L23
 681  012e               L62:
 682  012e ae00a5        	ldw	x,#165
 683  0131 89            	pushw	x
 684  0132 ae0000        	ldw	x,#0
 685  0135 89            	pushw	x
 686  0136 ae0000        	ldw	x,#L101
 687  0139 cd0000        	call	_assert_failed
 689  013c 5b04          	addw	sp,#4
 690  013e               L23:
 691                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 693  013e 0d08          	tnz	(OFST+5,sp)
 694  0140 2706          	jreq	L63
 695  0142 7b08          	ld	a,(OFST+5,sp)
 696  0144 a144          	cp	a,#68
 697  0146 2603          	jrne	L43
 698  0148               L63:
 699  0148 4f            	clr	a
 700  0149 2010          	jra	L04
 701  014b               L43:
 702  014b ae00a6        	ldw	x,#166
 703  014e 89            	pushw	x
 704  014f ae0000        	ldw	x,#0
 705  0152 89            	pushw	x
 706  0153 ae0000        	ldw	x,#L101
 707  0156 cd0000        	call	_assert_failed
 709  0159 5b04          	addw	sp,#4
 710  015b               L04:
 711                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 713  015b 0d0b          	tnz	(OFST+8,sp)
 714  015d 2706          	jreq	L44
 715  015f 7b0b          	ld	a,(OFST+8,sp)
 716  0161 a122          	cp	a,#34
 717  0163 2603          	jrne	L24
 718  0165               L44:
 719  0165 4f            	clr	a
 720  0166 2010          	jra	L64
 721  0168               L24:
 722  0168 ae00a7        	ldw	x,#167
 723  016b 89            	pushw	x
 724  016c ae0000        	ldw	x,#0
 725  016f 89            	pushw	x
 726  0170 ae0000        	ldw	x,#L101
 727  0173 cd0000        	call	_assert_failed
 729  0176 5b04          	addw	sp,#4
 730  0178               L64:
 731                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 733  0178 0d0c          	tnz	(OFST+9,sp)
 734  017a 2706          	jreq	L25
 735  017c 7b0c          	ld	a,(OFST+9,sp)
 736  017e a188          	cp	a,#136
 737  0180 2603          	jrne	L05
 738  0182               L25:
 739  0182 4f            	clr	a
 740  0183 2010          	jra	L45
 741  0185               L05:
 742  0185 ae00a8        	ldw	x,#168
 743  0188 89            	pushw	x
 744  0189 ae0000        	ldw	x,#0
 745  018c 89            	pushw	x
 746  018d ae0000        	ldw	x,#L101
 747  0190 cd0000        	call	_assert_failed
 749  0193 5b04          	addw	sp,#4
 750  0195               L45:
 751                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 753  0195 7b0d          	ld	a,(OFST+10,sp)
 754  0197 a155          	cp	a,#85
 755  0199 2704          	jreq	L06
 756  019b 0d0d          	tnz	(OFST+10,sp)
 757  019d 2603          	jrne	L65
 758  019f               L06:
 759  019f 4f            	clr	a
 760  01a0 2010          	jra	L26
 761  01a2               L65:
 762  01a2 ae00a9        	ldw	x,#169
 763  01a5 89            	pushw	x
 764  01a6 ae0000        	ldw	x,#0
 765  01a9 89            	pushw	x
 766  01aa ae0000        	ldw	x,#L101
 767  01ad cd0000        	call	_assert_failed
 769  01b0 5b04          	addw	sp,#4
 770  01b2               L26:
 771                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 773  01b2 7b0e          	ld	a,(OFST+11,sp)
 774  01b4 a12a          	cp	a,#42
 775  01b6 2704          	jreq	L66
 776  01b8 0d0e          	tnz	(OFST+11,sp)
 777  01ba 2603          	jrne	L46
 778  01bc               L66:
 779  01bc 4f            	clr	a
 780  01bd 2010          	jra	L07
 781  01bf               L46:
 782  01bf ae00aa        	ldw	x,#170
 783  01c2 89            	pushw	x
 784  01c3 ae0000        	ldw	x,#0
 785  01c6 89            	pushw	x
 786  01c7 ae0000        	ldw	x,#L101
 787  01ca cd0000        	call	_assert_failed
 789  01cd 5b04          	addw	sp,#4
 790  01cf               L07:
 791                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 791                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 793  01cf c6525c        	ld	a,21084
 794  01d2 a4f0          	and	a,#240
 795  01d4 c7525c        	ld	21084,a
 796                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 796                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 796                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 796                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 798  01d7 7b0c          	ld	a,(OFST+9,sp)
 799  01d9 a408          	and	a,#8
 800  01db 6b03          	ld	(OFST+0,sp),a
 802  01dd 7b0b          	ld	a,(OFST+8,sp)
 803  01df a402          	and	a,#2
 804  01e1 1a03          	or	a,(OFST+0,sp)
 805  01e3 6b02          	ld	(OFST-1,sp),a
 807  01e5 7b08          	ld	a,(OFST+5,sp)
 808  01e7 a404          	and	a,#4
 809  01e9 6b01          	ld	(OFST-2,sp),a
 811  01eb 7b05          	ld	a,(OFST+2,sp)
 812  01ed a401          	and	a,#1
 813  01ef 1a01          	or	a,(OFST-2,sp)
 814  01f1 1a02          	or	a,(OFST-1,sp)
 815  01f3 ca525c        	or	a,21084
 816  01f6 c7525c        	ld	21084,a
 817                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 817                     ; 185                           (uint8_t)TIM1_OCMode);
 819  01f9 c65258        	ld	a,21080
 820  01fc a48f          	and	a,#143
 821  01fe 1a04          	or	a,(OFST+1,sp)
 822  0200 c75258        	ld	21080,a
 823                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 825  0203 c6526f        	ld	a,21103
 826  0206 a4fc          	and	a,#252
 827  0208 c7526f        	ld	21103,a
 828                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 828                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 830  020b 7b0e          	ld	a,(OFST+11,sp)
 831  020d a402          	and	a,#2
 832  020f 6b03          	ld	(OFST+0,sp),a
 834  0211 7b0d          	ld	a,(OFST+10,sp)
 835  0213 a401          	and	a,#1
 836  0215 1a03          	or	a,(OFST+0,sp)
 837  0217 ca526f        	or	a,21103
 838  021a c7526f        	ld	21103,a
 839                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 841  021d 7b09          	ld	a,(OFST+6,sp)
 842  021f c75265        	ld	21093,a
 843                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 845  0222 7b0a          	ld	a,(OFST+7,sp)
 846  0224 c75266        	ld	21094,a
 847                     ; 196 }
 850  0227 5b05          	addw	sp,#5
 851  0229 81            	ret
 956                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 956                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 956                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 956                     ; 220                   uint16_t TIM1_Pulse,
 956                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 956                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 956                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 956                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 956                     ; 225 {
 957                     	switch	.text
 958  022a               _TIM1_OC2Init:
 960  022a 89            	pushw	x
 961  022b 5203          	subw	sp,#3
 962       00000003      OFST:	set	3
 965                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 967  022d 9e            	ld	a,xh
 968  022e 4d            	tnz	a
 969  022f 2719          	jreq	L67
 970  0231 9e            	ld	a,xh
 971  0232 a110          	cp	a,#16
 972  0234 2714          	jreq	L67
 973  0236 9e            	ld	a,xh
 974  0237 a120          	cp	a,#32
 975  0239 270f          	jreq	L67
 976  023b 9e            	ld	a,xh
 977  023c a130          	cp	a,#48
 978  023e 270a          	jreq	L67
 979  0240 9e            	ld	a,xh
 980  0241 a160          	cp	a,#96
 981  0243 2705          	jreq	L67
 982  0245 9e            	ld	a,xh
 983  0246 a170          	cp	a,#112
 984  0248 2603          	jrne	L47
 985  024a               L67:
 986  024a 4f            	clr	a
 987  024b 2010          	jra	L001
 988  024d               L47:
 989  024d ae00e3        	ldw	x,#227
 990  0250 89            	pushw	x
 991  0251 ae0000        	ldw	x,#0
 992  0254 89            	pushw	x
 993  0255 ae0000        	ldw	x,#L101
 994  0258 cd0000        	call	_assert_failed
 996  025b 5b04          	addw	sp,#4
 997  025d               L001:
 998                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1000  025d 0d05          	tnz	(OFST+2,sp)
1001  025f 2706          	jreq	L401
1002  0261 7b05          	ld	a,(OFST+2,sp)
1003  0263 a111          	cp	a,#17
1004  0265 2603          	jrne	L201
1005  0267               L401:
1006  0267 4f            	clr	a
1007  0268 2010          	jra	L601
1008  026a               L201:
1009  026a ae00e4        	ldw	x,#228
1010  026d 89            	pushw	x
1011  026e ae0000        	ldw	x,#0
1012  0271 89            	pushw	x
1013  0272 ae0000        	ldw	x,#L101
1014  0275 cd0000        	call	_assert_failed
1016  0278 5b04          	addw	sp,#4
1017  027a               L601:
1018                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1020  027a 0d08          	tnz	(OFST+5,sp)
1021  027c 2706          	jreq	L211
1022  027e 7b08          	ld	a,(OFST+5,sp)
1023  0280 a144          	cp	a,#68
1024  0282 2603          	jrne	L011
1025  0284               L211:
1026  0284 4f            	clr	a
1027  0285 2010          	jra	L411
1028  0287               L011:
1029  0287 ae00e5        	ldw	x,#229
1030  028a 89            	pushw	x
1031  028b ae0000        	ldw	x,#0
1032  028e 89            	pushw	x
1033  028f ae0000        	ldw	x,#L101
1034  0292 cd0000        	call	_assert_failed
1036  0295 5b04          	addw	sp,#4
1037  0297               L411:
1038                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1040  0297 0d0b          	tnz	(OFST+8,sp)
1041  0299 2706          	jreq	L021
1042  029b 7b0b          	ld	a,(OFST+8,sp)
1043  029d a122          	cp	a,#34
1044  029f 2603          	jrne	L611
1045  02a1               L021:
1046  02a1 4f            	clr	a
1047  02a2 2010          	jra	L221
1048  02a4               L611:
1049  02a4 ae00e6        	ldw	x,#230
1050  02a7 89            	pushw	x
1051  02a8 ae0000        	ldw	x,#0
1052  02ab 89            	pushw	x
1053  02ac ae0000        	ldw	x,#L101
1054  02af cd0000        	call	_assert_failed
1056  02b2 5b04          	addw	sp,#4
1057  02b4               L221:
1058                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1060  02b4 0d0c          	tnz	(OFST+9,sp)
1061  02b6 2706          	jreq	L621
1062  02b8 7b0c          	ld	a,(OFST+9,sp)
1063  02ba a188          	cp	a,#136
1064  02bc 2603          	jrne	L421
1065  02be               L621:
1066  02be 4f            	clr	a
1067  02bf 2010          	jra	L031
1068  02c1               L421:
1069  02c1 ae00e7        	ldw	x,#231
1070  02c4 89            	pushw	x
1071  02c5 ae0000        	ldw	x,#0
1072  02c8 89            	pushw	x
1073  02c9 ae0000        	ldw	x,#L101
1074  02cc cd0000        	call	_assert_failed
1076  02cf 5b04          	addw	sp,#4
1077  02d1               L031:
1078                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1080  02d1 7b0d          	ld	a,(OFST+10,sp)
1081  02d3 a155          	cp	a,#85
1082  02d5 2704          	jreq	L431
1083  02d7 0d0d          	tnz	(OFST+10,sp)
1084  02d9 2603          	jrne	L231
1085  02db               L431:
1086  02db 4f            	clr	a
1087  02dc 2010          	jra	L631
1088  02de               L231:
1089  02de ae00e8        	ldw	x,#232
1090  02e1 89            	pushw	x
1091  02e2 ae0000        	ldw	x,#0
1092  02e5 89            	pushw	x
1093  02e6 ae0000        	ldw	x,#L101
1094  02e9 cd0000        	call	_assert_failed
1096  02ec 5b04          	addw	sp,#4
1097  02ee               L631:
1098                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1100  02ee 7b0e          	ld	a,(OFST+11,sp)
1101  02f0 a12a          	cp	a,#42
1102  02f2 2704          	jreq	L241
1103  02f4 0d0e          	tnz	(OFST+11,sp)
1104  02f6 2603          	jrne	L041
1105  02f8               L241:
1106  02f8 4f            	clr	a
1107  02f9 2010          	jra	L441
1108  02fb               L041:
1109  02fb ae00e9        	ldw	x,#233
1110  02fe 89            	pushw	x
1111  02ff ae0000        	ldw	x,#0
1112  0302 89            	pushw	x
1113  0303 ae0000        	ldw	x,#L101
1114  0306 cd0000        	call	_assert_failed
1116  0309 5b04          	addw	sp,#4
1117  030b               L441:
1118                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1118                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1120  030b c6525c        	ld	a,21084
1121  030e a40f          	and	a,#15
1122  0310 c7525c        	ld	21084,a
1123                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1123                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1123                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1123                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1125  0313 7b0c          	ld	a,(OFST+9,sp)
1126  0315 a480          	and	a,#128
1127  0317 6b03          	ld	(OFST+0,sp),a
1129  0319 7b0b          	ld	a,(OFST+8,sp)
1130  031b a420          	and	a,#32
1131  031d 1a03          	or	a,(OFST+0,sp)
1132  031f 6b02          	ld	(OFST-1,sp),a
1134  0321 7b08          	ld	a,(OFST+5,sp)
1135  0323 a440          	and	a,#64
1136  0325 6b01          	ld	(OFST-2,sp),a
1138  0327 7b05          	ld	a,(OFST+2,sp)
1139  0329 a410          	and	a,#16
1140  032b 1a01          	or	a,(OFST-2,sp)
1141  032d 1a02          	or	a,(OFST-1,sp)
1142  032f ca525c        	or	a,21084
1143  0332 c7525c        	ld	21084,a
1144                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1144                     ; 249                           (uint8_t)TIM1_OCMode);
1146  0335 c65259        	ld	a,21081
1147  0338 a48f          	and	a,#143
1148  033a 1a04          	or	a,(OFST+1,sp)
1149  033c c75259        	ld	21081,a
1150                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1152  033f c6526f        	ld	a,21103
1153  0342 a4f3          	and	a,#243
1154  0344 c7526f        	ld	21103,a
1155                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1155                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1157  0347 7b0e          	ld	a,(OFST+11,sp)
1158  0349 a408          	and	a,#8
1159  034b 6b03          	ld	(OFST+0,sp),a
1161  034d 7b0d          	ld	a,(OFST+10,sp)
1162  034f a404          	and	a,#4
1163  0351 1a03          	or	a,(OFST+0,sp)
1164  0353 ca526f        	or	a,21103
1165  0356 c7526f        	ld	21103,a
1166                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1168  0359 7b09          	ld	a,(OFST+6,sp)
1169  035b c75267        	ld	21095,a
1170                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1172  035e 7b0a          	ld	a,(OFST+7,sp)
1173  0360 c75268        	ld	21096,a
1174                     ; 260 }
1177  0363 5b05          	addw	sp,#5
1178  0365 81            	ret
1283                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1283                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1283                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1283                     ; 284                   uint16_t TIM1_Pulse,
1283                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1283                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1283                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1283                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1283                     ; 289 {
1284                     	switch	.text
1285  0366               _TIM1_OC3Init:
1287  0366 89            	pushw	x
1288  0367 5203          	subw	sp,#3
1289       00000003      OFST:	set	3
1292                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1294  0369 9e            	ld	a,xh
1295  036a 4d            	tnz	a
1296  036b 2719          	jreq	L251
1297  036d 9e            	ld	a,xh
1298  036e a110          	cp	a,#16
1299  0370 2714          	jreq	L251
1300  0372 9e            	ld	a,xh
1301  0373 a120          	cp	a,#32
1302  0375 270f          	jreq	L251
1303  0377 9e            	ld	a,xh
1304  0378 a130          	cp	a,#48
1305  037a 270a          	jreq	L251
1306  037c 9e            	ld	a,xh
1307  037d a160          	cp	a,#96
1308  037f 2705          	jreq	L251
1309  0381 9e            	ld	a,xh
1310  0382 a170          	cp	a,#112
1311  0384 2603          	jrne	L051
1312  0386               L251:
1313  0386 4f            	clr	a
1314  0387 2010          	jra	L451
1315  0389               L051:
1316  0389 ae0123        	ldw	x,#291
1317  038c 89            	pushw	x
1318  038d ae0000        	ldw	x,#0
1319  0390 89            	pushw	x
1320  0391 ae0000        	ldw	x,#L101
1321  0394 cd0000        	call	_assert_failed
1323  0397 5b04          	addw	sp,#4
1324  0399               L451:
1325                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1327  0399 0d05          	tnz	(OFST+2,sp)
1328  039b 2706          	jreq	L061
1329  039d 7b05          	ld	a,(OFST+2,sp)
1330  039f a111          	cp	a,#17
1331  03a1 2603          	jrne	L651
1332  03a3               L061:
1333  03a3 4f            	clr	a
1334  03a4 2010          	jra	L261
1335  03a6               L651:
1336  03a6 ae0124        	ldw	x,#292
1337  03a9 89            	pushw	x
1338  03aa ae0000        	ldw	x,#0
1339  03ad 89            	pushw	x
1340  03ae ae0000        	ldw	x,#L101
1341  03b1 cd0000        	call	_assert_failed
1343  03b4 5b04          	addw	sp,#4
1344  03b6               L261:
1345                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1347  03b6 0d08          	tnz	(OFST+5,sp)
1348  03b8 2706          	jreq	L661
1349  03ba 7b08          	ld	a,(OFST+5,sp)
1350  03bc a144          	cp	a,#68
1351  03be 2603          	jrne	L461
1352  03c0               L661:
1353  03c0 4f            	clr	a
1354  03c1 2010          	jra	L071
1355  03c3               L461:
1356  03c3 ae0125        	ldw	x,#293
1357  03c6 89            	pushw	x
1358  03c7 ae0000        	ldw	x,#0
1359  03ca 89            	pushw	x
1360  03cb ae0000        	ldw	x,#L101
1361  03ce cd0000        	call	_assert_failed
1363  03d1 5b04          	addw	sp,#4
1364  03d3               L071:
1365                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1367  03d3 0d0b          	tnz	(OFST+8,sp)
1368  03d5 2706          	jreq	L471
1369  03d7 7b0b          	ld	a,(OFST+8,sp)
1370  03d9 a122          	cp	a,#34
1371  03db 2603          	jrne	L271
1372  03dd               L471:
1373  03dd 4f            	clr	a
1374  03de 2010          	jra	L671
1375  03e0               L271:
1376  03e0 ae0126        	ldw	x,#294
1377  03e3 89            	pushw	x
1378  03e4 ae0000        	ldw	x,#0
1379  03e7 89            	pushw	x
1380  03e8 ae0000        	ldw	x,#L101
1381  03eb cd0000        	call	_assert_failed
1383  03ee 5b04          	addw	sp,#4
1384  03f0               L671:
1385                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1387  03f0 0d0c          	tnz	(OFST+9,sp)
1388  03f2 2706          	jreq	L202
1389  03f4 7b0c          	ld	a,(OFST+9,sp)
1390  03f6 a188          	cp	a,#136
1391  03f8 2603          	jrne	L002
1392  03fa               L202:
1393  03fa 4f            	clr	a
1394  03fb 2010          	jra	L402
1395  03fd               L002:
1396  03fd ae0127        	ldw	x,#295
1397  0400 89            	pushw	x
1398  0401 ae0000        	ldw	x,#0
1399  0404 89            	pushw	x
1400  0405 ae0000        	ldw	x,#L101
1401  0408 cd0000        	call	_assert_failed
1403  040b 5b04          	addw	sp,#4
1404  040d               L402:
1405                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1407  040d 7b0d          	ld	a,(OFST+10,sp)
1408  040f a155          	cp	a,#85
1409  0411 2704          	jreq	L012
1410  0413 0d0d          	tnz	(OFST+10,sp)
1411  0415 2603          	jrne	L602
1412  0417               L012:
1413  0417 4f            	clr	a
1414  0418 2010          	jra	L212
1415  041a               L602:
1416  041a ae0128        	ldw	x,#296
1417  041d 89            	pushw	x
1418  041e ae0000        	ldw	x,#0
1419  0421 89            	pushw	x
1420  0422 ae0000        	ldw	x,#L101
1421  0425 cd0000        	call	_assert_failed
1423  0428 5b04          	addw	sp,#4
1424  042a               L212:
1425                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1427  042a 7b0e          	ld	a,(OFST+11,sp)
1428  042c a12a          	cp	a,#42
1429  042e 2704          	jreq	L612
1430  0430 0d0e          	tnz	(OFST+11,sp)
1431  0432 2603          	jrne	L412
1432  0434               L612:
1433  0434 4f            	clr	a
1434  0435 2010          	jra	L022
1435  0437               L412:
1436  0437 ae0129        	ldw	x,#297
1437  043a 89            	pushw	x
1438  043b ae0000        	ldw	x,#0
1439  043e 89            	pushw	x
1440  043f ae0000        	ldw	x,#L101
1441  0442 cd0000        	call	_assert_failed
1443  0445 5b04          	addw	sp,#4
1444  0447               L022:
1445                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1445                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1447  0447 c6525d        	ld	a,21085
1448  044a a4f0          	and	a,#240
1449  044c c7525d        	ld	21085,a
1450                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1450                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1450                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1450                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1452  044f 7b0c          	ld	a,(OFST+9,sp)
1453  0451 a408          	and	a,#8
1454  0453 6b03          	ld	(OFST+0,sp),a
1456  0455 7b0b          	ld	a,(OFST+8,sp)
1457  0457 a402          	and	a,#2
1458  0459 1a03          	or	a,(OFST+0,sp)
1459  045b 6b02          	ld	(OFST-1,sp),a
1461  045d 7b08          	ld	a,(OFST+5,sp)
1462  045f a404          	and	a,#4
1463  0461 6b01          	ld	(OFST-2,sp),a
1465  0463 7b05          	ld	a,(OFST+2,sp)
1466  0465 a401          	and	a,#1
1467  0467 1a01          	or	a,(OFST-2,sp)
1468  0469 1a02          	or	a,(OFST-1,sp)
1469  046b ca525d        	or	a,21085
1470  046e c7525d        	ld	21085,a
1471                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1471                     ; 312                           (uint8_t)TIM1_OCMode);
1473  0471 c6525a        	ld	a,21082
1474  0474 a48f          	and	a,#143
1475  0476 1a04          	or	a,(OFST+1,sp)
1476  0478 c7525a        	ld	21082,a
1477                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1479  047b c6526f        	ld	a,21103
1480  047e a4cf          	and	a,#207
1481  0480 c7526f        	ld	21103,a
1482                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1482                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1484  0483 7b0e          	ld	a,(OFST+11,sp)
1485  0485 a420          	and	a,#32
1486  0487 6b03          	ld	(OFST+0,sp),a
1488  0489 7b0d          	ld	a,(OFST+10,sp)
1489  048b a410          	and	a,#16
1490  048d 1a03          	or	a,(OFST+0,sp)
1491  048f ca526f        	or	a,21103
1492  0492 c7526f        	ld	21103,a
1493                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1495  0495 7b09          	ld	a,(OFST+6,sp)
1496  0497 c75269        	ld	21097,a
1497                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1499  049a 7b0a          	ld	a,(OFST+7,sp)
1500  049c c7526a        	ld	21098,a
1501                     ; 323 }
1504  049f 5b05          	addw	sp,#5
1505  04a1 81            	ret
1580                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1580                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1580                     ; 340                   uint16_t TIM1_Pulse,
1580                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1580                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1580                     ; 343 {
1581                     	switch	.text
1582  04a2               _TIM1_OC4Init:
1584  04a2 89            	pushw	x
1585  04a3 88            	push	a
1586       00000001      OFST:	set	1
1589                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1591  04a4 9e            	ld	a,xh
1592  04a5 4d            	tnz	a
1593  04a6 2719          	jreq	L622
1594  04a8 9e            	ld	a,xh
1595  04a9 a110          	cp	a,#16
1596  04ab 2714          	jreq	L622
1597  04ad 9e            	ld	a,xh
1598  04ae a120          	cp	a,#32
1599  04b0 270f          	jreq	L622
1600  04b2 9e            	ld	a,xh
1601  04b3 a130          	cp	a,#48
1602  04b5 270a          	jreq	L622
1603  04b7 9e            	ld	a,xh
1604  04b8 a160          	cp	a,#96
1605  04ba 2705          	jreq	L622
1606  04bc 9e            	ld	a,xh
1607  04bd a170          	cp	a,#112
1608  04bf 2603          	jrne	L422
1609  04c1               L622:
1610  04c1 4f            	clr	a
1611  04c2 2010          	jra	L032
1612  04c4               L422:
1613  04c4 ae0159        	ldw	x,#345
1614  04c7 89            	pushw	x
1615  04c8 ae0000        	ldw	x,#0
1616  04cb 89            	pushw	x
1617  04cc ae0000        	ldw	x,#L101
1618  04cf cd0000        	call	_assert_failed
1620  04d2 5b04          	addw	sp,#4
1621  04d4               L032:
1622                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1624  04d4 0d03          	tnz	(OFST+2,sp)
1625  04d6 2706          	jreq	L432
1626  04d8 7b03          	ld	a,(OFST+2,sp)
1627  04da a111          	cp	a,#17
1628  04dc 2603          	jrne	L232
1629  04de               L432:
1630  04de 4f            	clr	a
1631  04df 2010          	jra	L632
1632  04e1               L232:
1633  04e1 ae015a        	ldw	x,#346
1634  04e4 89            	pushw	x
1635  04e5 ae0000        	ldw	x,#0
1636  04e8 89            	pushw	x
1637  04e9 ae0000        	ldw	x,#L101
1638  04ec cd0000        	call	_assert_failed
1640  04ef 5b04          	addw	sp,#4
1641  04f1               L632:
1642                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1644  04f1 0d08          	tnz	(OFST+7,sp)
1645  04f3 2706          	jreq	L242
1646  04f5 7b08          	ld	a,(OFST+7,sp)
1647  04f7 a122          	cp	a,#34
1648  04f9 2603          	jrne	L042
1649  04fb               L242:
1650  04fb 4f            	clr	a
1651  04fc 2010          	jra	L442
1652  04fe               L042:
1653  04fe ae015b        	ldw	x,#347
1654  0501 89            	pushw	x
1655  0502 ae0000        	ldw	x,#0
1656  0505 89            	pushw	x
1657  0506 ae0000        	ldw	x,#L101
1658  0509 cd0000        	call	_assert_failed
1660  050c 5b04          	addw	sp,#4
1661  050e               L442:
1662                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1664  050e 7b09          	ld	a,(OFST+8,sp)
1665  0510 a155          	cp	a,#85
1666  0512 2704          	jreq	L052
1667  0514 0d09          	tnz	(OFST+8,sp)
1668  0516 2603          	jrne	L642
1669  0518               L052:
1670  0518 4f            	clr	a
1671  0519 2010          	jra	L252
1672  051b               L642:
1673  051b ae015c        	ldw	x,#348
1674  051e 89            	pushw	x
1675  051f ae0000        	ldw	x,#0
1676  0522 89            	pushw	x
1677  0523 ae0000        	ldw	x,#L101
1678  0526 cd0000        	call	_assert_failed
1680  0529 5b04          	addw	sp,#4
1681  052b               L252:
1682                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1684  052b c6525d        	ld	a,21085
1685  052e a4cf          	and	a,#207
1686  0530 c7525d        	ld	21085,a
1687                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1687                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1689  0533 7b08          	ld	a,(OFST+7,sp)
1690  0535 a420          	and	a,#32
1691  0537 6b01          	ld	(OFST+0,sp),a
1693  0539 7b03          	ld	a,(OFST+2,sp)
1694  053b a410          	and	a,#16
1695  053d 1a01          	or	a,(OFST+0,sp)
1696  053f ca525d        	or	a,21085
1697  0542 c7525d        	ld	21085,a
1698                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1698                     ; 358                           TIM1_OCMode);
1700  0545 c6525b        	ld	a,21083
1701  0548 a48f          	and	a,#143
1702  054a 1a02          	or	a,(OFST+1,sp)
1703  054c c7525b        	ld	21083,a
1704                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1706  054f 0d09          	tnz	(OFST+8,sp)
1707  0551 270a          	jreq	L734
1708                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1710  0553 c6526f        	ld	a,21103
1711  0556 aadf          	or	a,#223
1712  0558 c7526f        	ld	21103,a
1714  055b 2004          	jra	L144
1715  055d               L734:
1716                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1718  055d 721d526f      	bres	21103,#6
1719  0561               L144:
1720                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1722  0561 7b06          	ld	a,(OFST+5,sp)
1723  0563 c7526b        	ld	21099,a
1724                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1726  0566 7b07          	ld	a,(OFST+6,sp)
1727  0568 c7526c        	ld	21100,a
1728                     ; 373 }
1731  056b 5b03          	addw	sp,#3
1732  056d 81            	ret
1938                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1938                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1938                     ; 390                      uint8_t TIM1_DeadTime,
1938                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1938                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1938                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1938                     ; 394 {
1939                     	switch	.text
1940  056e               _TIM1_BDTRConfig:
1942  056e 89            	pushw	x
1943  056f 88            	push	a
1944       00000001      OFST:	set	1
1947                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1949  0570 9e            	ld	a,xh
1950  0571 a104          	cp	a,#4
1951  0573 2704          	jreq	L062
1952  0575 9e            	ld	a,xh
1953  0576 4d            	tnz	a
1954  0577 2603          	jrne	L652
1955  0579               L062:
1956  0579 4f            	clr	a
1957  057a 2010          	jra	L262
1958  057c               L652:
1959  057c ae018c        	ldw	x,#396
1960  057f 89            	pushw	x
1961  0580 ae0000        	ldw	x,#0
1962  0583 89            	pushw	x
1963  0584 ae0000        	ldw	x,#L101
1964  0587 cd0000        	call	_assert_failed
1966  058a 5b04          	addw	sp,#4
1967  058c               L262:
1968                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1970  058c 0d03          	tnz	(OFST+2,sp)
1971  058e 2712          	jreq	L662
1972  0590 7b03          	ld	a,(OFST+2,sp)
1973  0592 a101          	cp	a,#1
1974  0594 270c          	jreq	L662
1975  0596 7b03          	ld	a,(OFST+2,sp)
1976  0598 a102          	cp	a,#2
1977  059a 2706          	jreq	L662
1978  059c 7b03          	ld	a,(OFST+2,sp)
1979  059e a103          	cp	a,#3
1980  05a0 2603          	jrne	L462
1981  05a2               L662:
1982  05a2 4f            	clr	a
1983  05a3 2010          	jra	L072
1984  05a5               L462:
1985  05a5 ae018d        	ldw	x,#397
1986  05a8 89            	pushw	x
1987  05a9 ae0000        	ldw	x,#0
1988  05ac 89            	pushw	x
1989  05ad ae0000        	ldw	x,#L101
1990  05b0 cd0000        	call	_assert_failed
1992  05b3 5b04          	addw	sp,#4
1993  05b5               L072:
1994                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1996  05b5 7b07          	ld	a,(OFST+6,sp)
1997  05b7 a110          	cp	a,#16
1998  05b9 2704          	jreq	L472
1999  05bb 0d07          	tnz	(OFST+6,sp)
2000  05bd 2603          	jrne	L272
2001  05bf               L472:
2002  05bf 4f            	clr	a
2003  05c0 2010          	jra	L672
2004  05c2               L272:
2005  05c2 ae018e        	ldw	x,#398
2006  05c5 89            	pushw	x
2007  05c6 ae0000        	ldw	x,#0
2008  05c9 89            	pushw	x
2009  05ca ae0000        	ldw	x,#L101
2010  05cd cd0000        	call	_assert_failed
2012  05d0 5b04          	addw	sp,#4
2013  05d2               L672:
2014                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2016  05d2 0d08          	tnz	(OFST+7,sp)
2017  05d4 2706          	jreq	L203
2018  05d6 7b08          	ld	a,(OFST+7,sp)
2019  05d8 a120          	cp	a,#32
2020  05da 2603          	jrne	L003
2021  05dc               L203:
2022  05dc 4f            	clr	a
2023  05dd 2010          	jra	L403
2024  05df               L003:
2025  05df ae018f        	ldw	x,#399
2026  05e2 89            	pushw	x
2027  05e3 ae0000        	ldw	x,#0
2028  05e6 89            	pushw	x
2029  05e7 ae0000        	ldw	x,#L101
2030  05ea cd0000        	call	_assert_failed
2032  05ed 5b04          	addw	sp,#4
2033  05ef               L403:
2034                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2036  05ef 7b09          	ld	a,(OFST+8,sp)
2037  05f1 a140          	cp	a,#64
2038  05f3 2704          	jreq	L013
2039  05f5 0d09          	tnz	(OFST+8,sp)
2040  05f7 2603          	jrne	L603
2041  05f9               L013:
2042  05f9 4f            	clr	a
2043  05fa 2010          	jra	L213
2044  05fc               L603:
2045  05fc ae0190        	ldw	x,#400
2046  05ff 89            	pushw	x
2047  0600 ae0000        	ldw	x,#0
2048  0603 89            	pushw	x
2049  0604 ae0000        	ldw	x,#L101
2050  0607 cd0000        	call	_assert_failed
2052  060a 5b04          	addw	sp,#4
2053  060c               L213:
2054                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2056  060c 7b06          	ld	a,(OFST+5,sp)
2057  060e c7526e        	ld	21102,a
2058                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2058                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2058                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2060  0611 7b07          	ld	a,(OFST+6,sp)
2061  0613 1a08          	or	a,(OFST+7,sp)
2062  0615 1a09          	or	a,(OFST+8,sp)
2063  0617 6b01          	ld	(OFST+0,sp),a
2065  0619 7b02          	ld	a,(OFST+1,sp)
2066  061b 1a03          	or	a,(OFST+2,sp)
2067  061d 1a01          	or	a,(OFST+0,sp)
2068  061f c7526d        	ld	21101,a
2069                     ; 409 }
2072  0622 5b03          	addw	sp,#3
2073  0624 81            	ret
2276                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2276                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2276                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2276                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2276                     ; 427                  uint8_t TIM1_ICFilter)
2276                     ; 428 {
2277                     	switch	.text
2278  0625               _TIM1_ICInit:
2280  0625 89            	pushw	x
2281       00000000      OFST:	set	0
2284                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2286  0626 9e            	ld	a,xh
2287  0627 4d            	tnz	a
2288  0628 270f          	jreq	L023
2289  062a 9e            	ld	a,xh
2290  062b a101          	cp	a,#1
2291  062d 270a          	jreq	L023
2292  062f 9e            	ld	a,xh
2293  0630 a102          	cp	a,#2
2294  0632 2705          	jreq	L023
2295  0634 9e            	ld	a,xh
2296  0635 a103          	cp	a,#3
2297  0637 2603          	jrne	L613
2298  0639               L023:
2299  0639 4f            	clr	a
2300  063a 2010          	jra	L223
2301  063c               L613:
2302  063c ae01ae        	ldw	x,#430
2303  063f 89            	pushw	x
2304  0640 ae0000        	ldw	x,#0
2305  0643 89            	pushw	x
2306  0644 ae0000        	ldw	x,#L101
2307  0647 cd0000        	call	_assert_failed
2309  064a 5b04          	addw	sp,#4
2310  064c               L223:
2311                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2313  064c 0d02          	tnz	(OFST+2,sp)
2314  064e 2706          	jreq	L623
2315  0650 7b02          	ld	a,(OFST+2,sp)
2316  0652 a101          	cp	a,#1
2317  0654 2603          	jrne	L423
2318  0656               L623:
2319  0656 4f            	clr	a
2320  0657 2010          	jra	L033
2321  0659               L423:
2322  0659 ae01af        	ldw	x,#431
2323  065c 89            	pushw	x
2324  065d ae0000        	ldw	x,#0
2325  0660 89            	pushw	x
2326  0661 ae0000        	ldw	x,#L101
2327  0664 cd0000        	call	_assert_failed
2329  0667 5b04          	addw	sp,#4
2330  0669               L033:
2331                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2333  0669 7b05          	ld	a,(OFST+5,sp)
2334  066b a101          	cp	a,#1
2335  066d 270c          	jreq	L433
2336  066f 7b05          	ld	a,(OFST+5,sp)
2337  0671 a102          	cp	a,#2
2338  0673 2706          	jreq	L433
2339  0675 7b05          	ld	a,(OFST+5,sp)
2340  0677 a103          	cp	a,#3
2341  0679 2603          	jrne	L233
2342  067b               L433:
2343  067b 4f            	clr	a
2344  067c 2010          	jra	L633
2345  067e               L233:
2346  067e ae01b0        	ldw	x,#432
2347  0681 89            	pushw	x
2348  0682 ae0000        	ldw	x,#0
2349  0685 89            	pushw	x
2350  0686 ae0000        	ldw	x,#L101
2351  0689 cd0000        	call	_assert_failed
2353  068c 5b04          	addw	sp,#4
2354  068e               L633:
2355                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2357  068e 0d06          	tnz	(OFST+6,sp)
2358  0690 2712          	jreq	L243
2359  0692 7b06          	ld	a,(OFST+6,sp)
2360  0694 a104          	cp	a,#4
2361  0696 270c          	jreq	L243
2362  0698 7b06          	ld	a,(OFST+6,sp)
2363  069a a108          	cp	a,#8
2364  069c 2706          	jreq	L243
2365  069e 7b06          	ld	a,(OFST+6,sp)
2366  06a0 a10c          	cp	a,#12
2367  06a2 2603          	jrne	L043
2368  06a4               L243:
2369  06a4 4f            	clr	a
2370  06a5 2010          	jra	L443
2371  06a7               L043:
2372  06a7 ae01b1        	ldw	x,#433
2373  06aa 89            	pushw	x
2374  06ab ae0000        	ldw	x,#0
2375  06ae 89            	pushw	x
2376  06af ae0000        	ldw	x,#L101
2377  06b2 cd0000        	call	_assert_failed
2379  06b5 5b04          	addw	sp,#4
2380  06b7               L443:
2381                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2383  06b7 7b07          	ld	a,(OFST+7,sp)
2384  06b9 a110          	cp	a,#16
2385  06bb 2403          	jruge	L643
2386  06bd 4f            	clr	a
2387  06be 2010          	jra	L053
2388  06c0               L643:
2389  06c0 ae01b2        	ldw	x,#434
2390  06c3 89            	pushw	x
2391  06c4 ae0000        	ldw	x,#0
2392  06c7 89            	pushw	x
2393  06c8 ae0000        	ldw	x,#L101
2394  06cb cd0000        	call	_assert_failed
2396  06ce 5b04          	addw	sp,#4
2397  06d0               L053:
2398                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2400  06d0 0d01          	tnz	(OFST+1,sp)
2401  06d2 2614          	jrne	L176
2402                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2402                     ; 440                (uint8_t)TIM1_ICSelection,
2402                     ; 441                (uint8_t)TIM1_ICFilter);
2404  06d4 7b07          	ld	a,(OFST+7,sp)
2405  06d6 88            	push	a
2406  06d7 7b06          	ld	a,(OFST+6,sp)
2407  06d9 97            	ld	xl,a
2408  06da 7b03          	ld	a,(OFST+3,sp)
2409  06dc 95            	ld	xh,a
2410  06dd cd150c        	call	L3_TI1_Config
2412  06e0 84            	pop	a
2413                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2415  06e1 7b06          	ld	a,(OFST+6,sp)
2416  06e3 cd126b        	call	_TIM1_SetIC1Prescaler
2419  06e6 2046          	jra	L376
2420  06e8               L176:
2421                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2423  06e8 7b01          	ld	a,(OFST+1,sp)
2424  06ea a101          	cp	a,#1
2425  06ec 2614          	jrne	L576
2426                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2426                     ; 449                (uint8_t)TIM1_ICSelection,
2426                     ; 450                (uint8_t)TIM1_ICFilter);
2428  06ee 7b07          	ld	a,(OFST+7,sp)
2429  06f0 88            	push	a
2430  06f1 7b06          	ld	a,(OFST+6,sp)
2431  06f3 97            	ld	xl,a
2432  06f4 7b03          	ld	a,(OFST+3,sp)
2433  06f6 95            	ld	xh,a
2434  06f7 cd153c        	call	L5_TI2_Config
2436  06fa 84            	pop	a
2437                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2439  06fb 7b06          	ld	a,(OFST+6,sp)
2440  06fd cd129a        	call	_TIM1_SetIC2Prescaler
2443  0700 202c          	jra	L376
2444  0702               L576:
2445                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2447  0702 7b01          	ld	a,(OFST+1,sp)
2448  0704 a102          	cp	a,#2
2449  0706 2614          	jrne	L107
2450                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2450                     ; 458                (uint8_t)TIM1_ICSelection,
2450                     ; 459                (uint8_t)TIM1_ICFilter);
2452  0708 7b07          	ld	a,(OFST+7,sp)
2453  070a 88            	push	a
2454  070b 7b06          	ld	a,(OFST+6,sp)
2455  070d 97            	ld	xl,a
2456  070e 7b03          	ld	a,(OFST+3,sp)
2457  0710 95            	ld	xh,a
2458  0711 cd156c        	call	L7_TI3_Config
2460  0714 84            	pop	a
2461                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2463  0715 7b06          	ld	a,(OFST+6,sp)
2464  0717 cd12c9        	call	_TIM1_SetIC3Prescaler
2467  071a 2012          	jra	L376
2468  071c               L107:
2469                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2469                     ; 467                (uint8_t)TIM1_ICSelection,
2469                     ; 468                (uint8_t)TIM1_ICFilter);
2471  071c 7b07          	ld	a,(OFST+7,sp)
2472  071e 88            	push	a
2473  071f 7b06          	ld	a,(OFST+6,sp)
2474  0721 97            	ld	xl,a
2475  0722 7b03          	ld	a,(OFST+3,sp)
2476  0724 95            	ld	xh,a
2477  0725 cd159c        	call	L11_TI4_Config
2479  0728 84            	pop	a
2480                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2482  0729 7b06          	ld	a,(OFST+6,sp)
2483  072b cd12f8        	call	_TIM1_SetIC4Prescaler
2485  072e               L376:
2486                     ; 472 }
2489  072e 85            	popw	x
2490  072f 81            	ret
2587                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2587                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2587                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2587                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2587                     ; 492                      uint8_t TIM1_ICFilter)
2587                     ; 493 {
2588                     	switch	.text
2589  0730               _TIM1_PWMIConfig:
2591  0730 89            	pushw	x
2592  0731 89            	pushw	x
2593       00000002      OFST:	set	2
2596                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2598                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2600                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2602  0732 9e            	ld	a,xh
2603  0733 4d            	tnz	a
2604  0734 2705          	jreq	L653
2605  0736 9e            	ld	a,xh
2606  0737 a101          	cp	a,#1
2607  0739 2603          	jrne	L453
2608  073b               L653:
2609  073b 4f            	clr	a
2610  073c 2010          	jra	L063
2611  073e               L453:
2612  073e ae01f2        	ldw	x,#498
2613  0741 89            	pushw	x
2614  0742 ae0000        	ldw	x,#0
2615  0745 89            	pushw	x
2616  0746 ae0000        	ldw	x,#L101
2617  0749 cd0000        	call	_assert_failed
2619  074c 5b04          	addw	sp,#4
2620  074e               L063:
2621                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2623  074e 0d04          	tnz	(OFST+2,sp)
2624  0750 2706          	jreq	L463
2625  0752 7b04          	ld	a,(OFST+2,sp)
2626  0754 a101          	cp	a,#1
2627  0756 2603          	jrne	L263
2628  0758               L463:
2629  0758 4f            	clr	a
2630  0759 2010          	jra	L663
2631  075b               L263:
2632  075b ae01f3        	ldw	x,#499
2633  075e 89            	pushw	x
2634  075f ae0000        	ldw	x,#0
2635  0762 89            	pushw	x
2636  0763 ae0000        	ldw	x,#L101
2637  0766 cd0000        	call	_assert_failed
2639  0769 5b04          	addw	sp,#4
2640  076b               L663:
2641                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2643  076b 7b07          	ld	a,(OFST+5,sp)
2644  076d a101          	cp	a,#1
2645  076f 270c          	jreq	L273
2646  0771 7b07          	ld	a,(OFST+5,sp)
2647  0773 a102          	cp	a,#2
2648  0775 2706          	jreq	L273
2649  0777 7b07          	ld	a,(OFST+5,sp)
2650  0779 a103          	cp	a,#3
2651  077b 2603          	jrne	L073
2652  077d               L273:
2653  077d 4f            	clr	a
2654  077e 2010          	jra	L473
2655  0780               L073:
2656  0780 ae01f4        	ldw	x,#500
2657  0783 89            	pushw	x
2658  0784 ae0000        	ldw	x,#0
2659  0787 89            	pushw	x
2660  0788 ae0000        	ldw	x,#L101
2661  078b cd0000        	call	_assert_failed
2663  078e 5b04          	addw	sp,#4
2664  0790               L473:
2665                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2667  0790 0d08          	tnz	(OFST+6,sp)
2668  0792 2712          	jreq	L004
2669  0794 7b08          	ld	a,(OFST+6,sp)
2670  0796 a104          	cp	a,#4
2671  0798 270c          	jreq	L004
2672  079a 7b08          	ld	a,(OFST+6,sp)
2673  079c a108          	cp	a,#8
2674  079e 2706          	jreq	L004
2675  07a0 7b08          	ld	a,(OFST+6,sp)
2676  07a2 a10c          	cp	a,#12
2677  07a4 2603          	jrne	L673
2678  07a6               L004:
2679  07a6 4f            	clr	a
2680  07a7 2010          	jra	L204
2681  07a9               L673:
2682  07a9 ae01f5        	ldw	x,#501
2683  07ac 89            	pushw	x
2684  07ad ae0000        	ldw	x,#0
2685  07b0 89            	pushw	x
2686  07b1 ae0000        	ldw	x,#L101
2687  07b4 cd0000        	call	_assert_failed
2689  07b7 5b04          	addw	sp,#4
2690  07b9               L204:
2691                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2693  07b9 7b04          	ld	a,(OFST+2,sp)
2694  07bb a101          	cp	a,#1
2695  07bd 2706          	jreq	L357
2696                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2698  07bf a601          	ld	a,#1
2699  07c1 6b01          	ld	(OFST-1,sp),a
2702  07c3 2002          	jra	L557
2703  07c5               L357:
2704                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2706  07c5 0f01          	clr	(OFST-1,sp)
2708  07c7               L557:
2709                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2711  07c7 7b07          	ld	a,(OFST+5,sp)
2712  07c9 a101          	cp	a,#1
2713  07cb 2606          	jrne	L757
2714                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2716  07cd a602          	ld	a,#2
2717  07cf 6b02          	ld	(OFST+0,sp),a
2720  07d1 2004          	jra	L167
2721  07d3               L757:
2722                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2724  07d3 a601          	ld	a,#1
2725  07d5 6b02          	ld	(OFST+0,sp),a
2727  07d7               L167:
2728                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2730  07d7 0d03          	tnz	(OFST+1,sp)
2731  07d9 2626          	jrne	L367
2732                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2732                     ; 527                (uint8_t)TIM1_ICFilter);
2734  07db 7b09          	ld	a,(OFST+7,sp)
2735  07dd 88            	push	a
2736  07de 7b08          	ld	a,(OFST+6,sp)
2737  07e0 97            	ld	xl,a
2738  07e1 7b05          	ld	a,(OFST+3,sp)
2739  07e3 95            	ld	xh,a
2740  07e4 cd150c        	call	L3_TI1_Config
2742  07e7 84            	pop	a
2743                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2745  07e8 7b08          	ld	a,(OFST+6,sp)
2746  07ea cd126b        	call	_TIM1_SetIC1Prescaler
2748                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2750  07ed 7b09          	ld	a,(OFST+7,sp)
2751  07ef 88            	push	a
2752  07f0 7b03          	ld	a,(OFST+1,sp)
2753  07f2 97            	ld	xl,a
2754  07f3 7b02          	ld	a,(OFST+0,sp)
2755  07f5 95            	ld	xh,a
2756  07f6 cd153c        	call	L5_TI2_Config
2758  07f9 84            	pop	a
2759                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2761  07fa 7b08          	ld	a,(OFST+6,sp)
2762  07fc cd129a        	call	_TIM1_SetIC2Prescaler
2765  07ff 2024          	jra	L567
2766  0801               L367:
2767                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2767                     ; 542                (uint8_t)TIM1_ICFilter);
2769  0801 7b09          	ld	a,(OFST+7,sp)
2770  0803 88            	push	a
2771  0804 7b08          	ld	a,(OFST+6,sp)
2772  0806 97            	ld	xl,a
2773  0807 7b05          	ld	a,(OFST+3,sp)
2774  0809 95            	ld	xh,a
2775  080a cd153c        	call	L5_TI2_Config
2777  080d 84            	pop	a
2778                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2780  080e 7b08          	ld	a,(OFST+6,sp)
2781  0810 cd129a        	call	_TIM1_SetIC2Prescaler
2783                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2785  0813 7b09          	ld	a,(OFST+7,sp)
2786  0815 88            	push	a
2787  0816 7b03          	ld	a,(OFST+1,sp)
2788  0818 97            	ld	xl,a
2789  0819 7b02          	ld	a,(OFST+0,sp)
2790  081b 95            	ld	xh,a
2791  081c cd150c        	call	L3_TI1_Config
2793  081f 84            	pop	a
2794                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2796  0820 7b08          	ld	a,(OFST+6,sp)
2797  0822 cd126b        	call	_TIM1_SetIC1Prescaler
2799  0825               L567:
2800                     ; 553 }
2803  0825 5b04          	addw	sp,#4
2804  0827 81            	ret
2860                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2860                     ; 562 {
2861                     	switch	.text
2862  0828               _TIM1_Cmd:
2864  0828 88            	push	a
2865       00000000      OFST:	set	0
2868                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2870  0829 4d            	tnz	a
2871  082a 2704          	jreq	L014
2872  082c a101          	cp	a,#1
2873  082e 2603          	jrne	L604
2874  0830               L014:
2875  0830 4f            	clr	a
2876  0831 2010          	jra	L214
2877  0833               L604:
2878  0833 ae0234        	ldw	x,#564
2879  0836 89            	pushw	x
2880  0837 ae0000        	ldw	x,#0
2881  083a 89            	pushw	x
2882  083b ae0000        	ldw	x,#L101
2883  083e cd0000        	call	_assert_failed
2885  0841 5b04          	addw	sp,#4
2886  0843               L214:
2887                     ; 567   if (NewState != DISABLE)
2889  0843 0d01          	tnz	(OFST+1,sp)
2890  0845 2706          	jreq	L5101
2891                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2893  0847 72105250      	bset	21072,#0
2895  084b 2004          	jra	L7101
2896  084d               L5101:
2897                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2899  084d 72115250      	bres	21072,#0
2900  0851               L7101:
2901                     ; 575 }
2904  0851 84            	pop	a
2905  0852 81            	ret
2942                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2942                     ; 584 {
2943                     	switch	.text
2944  0853               _TIM1_CtrlPWMOutputs:
2946  0853 88            	push	a
2947       00000000      OFST:	set	0
2950                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2952  0854 4d            	tnz	a
2953  0855 2704          	jreq	L024
2954  0857 a101          	cp	a,#1
2955  0859 2603          	jrne	L614
2956  085b               L024:
2957  085b 4f            	clr	a
2958  085c 2010          	jra	L224
2959  085e               L614:
2960  085e ae024a        	ldw	x,#586
2961  0861 89            	pushw	x
2962  0862 ae0000        	ldw	x,#0
2963  0865 89            	pushw	x
2964  0866 ae0000        	ldw	x,#L101
2965  0869 cd0000        	call	_assert_failed
2967  086c 5b04          	addw	sp,#4
2968  086e               L224:
2969                     ; 590   if (NewState != DISABLE)
2971  086e 0d01          	tnz	(OFST+1,sp)
2972  0870 2706          	jreq	L7301
2973                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2975  0872 721e526d      	bset	21101,#7
2977  0876 2004          	jra	L1401
2978  0878               L7301:
2979                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2981  0878 721f526d      	bres	21101,#7
2982  087c               L1401:
2983                     ; 598 }
2986  087c 84            	pop	a
2987  087d 81            	ret
3095                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3095                     ; 618 {
3096                     	switch	.text
3097  087e               _TIM1_ITConfig:
3099  087e 89            	pushw	x
3100       00000000      OFST:	set	0
3103                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3105  087f 9e            	ld	a,xh
3106  0880 4d            	tnz	a
3107  0881 2703          	jreq	L624
3108  0883 4f            	clr	a
3109  0884 2010          	jra	L034
3110  0886               L624:
3111  0886 ae026c        	ldw	x,#620
3112  0889 89            	pushw	x
3113  088a ae0000        	ldw	x,#0
3114  088d 89            	pushw	x
3115  088e ae0000        	ldw	x,#L101
3116  0891 cd0000        	call	_assert_failed
3118  0894 5b04          	addw	sp,#4
3119  0896               L034:
3120                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3122  0896 0d02          	tnz	(OFST+2,sp)
3123  0898 2706          	jreq	L434
3124  089a 7b02          	ld	a,(OFST+2,sp)
3125  089c a101          	cp	a,#1
3126  089e 2603          	jrne	L234
3127  08a0               L434:
3128  08a0 4f            	clr	a
3129  08a1 2010          	jra	L634
3130  08a3               L234:
3131  08a3 ae026d        	ldw	x,#621
3132  08a6 89            	pushw	x
3133  08a7 ae0000        	ldw	x,#0
3134  08aa 89            	pushw	x
3135  08ab ae0000        	ldw	x,#L101
3136  08ae cd0000        	call	_assert_failed
3138  08b1 5b04          	addw	sp,#4
3139  08b3               L634:
3140                     ; 623   if (NewState != DISABLE)
3142  08b3 0d02          	tnz	(OFST+2,sp)
3143  08b5 270a          	jreq	L1111
3144                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3146  08b7 c65254        	ld	a,21076
3147  08ba 1a01          	or	a,(OFST+1,sp)
3148  08bc c75254        	ld	21076,a
3150  08bf 2009          	jra	L3111
3151  08c1               L1111:
3152                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3154  08c1 7b01          	ld	a,(OFST+1,sp)
3155  08c3 43            	cpl	a
3156  08c4 c45254        	and	a,21076
3157  08c7 c75254        	ld	21076,a
3158  08ca               L3111:
3159                     ; 633 }
3162  08ca 85            	popw	x
3163  08cb 81            	ret
3187                     ; 640 void TIM1_InternalClockConfig(void)
3187                     ; 641 {
3188                     	switch	.text
3189  08cc               _TIM1_InternalClockConfig:
3193                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3195  08cc c65252        	ld	a,21074
3196  08cf a4f8          	and	a,#248
3197  08d1 c75252        	ld	21074,a
3198                     ; 644 }
3201  08d4 81            	ret
3319                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3319                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3319                     ; 664                               uint8_t ExtTRGFilter)
3319                     ; 665 {
3320                     	switch	.text
3321  08d5               _TIM1_ETRClockMode1Config:
3323  08d5 89            	pushw	x
3324       00000000      OFST:	set	0
3327                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3329  08d6 9e            	ld	a,xh
3330  08d7 4d            	tnz	a
3331  08d8 270f          	jreq	L644
3332  08da 9e            	ld	a,xh
3333  08db a110          	cp	a,#16
3334  08dd 270a          	jreq	L644
3335  08df 9e            	ld	a,xh
3336  08e0 a120          	cp	a,#32
3337  08e2 2705          	jreq	L644
3338  08e4 9e            	ld	a,xh
3339  08e5 a130          	cp	a,#48
3340  08e7 2603          	jrne	L444
3341  08e9               L644:
3342  08e9 4f            	clr	a
3343  08ea 2010          	jra	L054
3344  08ec               L444:
3345  08ec ae029b        	ldw	x,#667
3346  08ef 89            	pushw	x
3347  08f0 ae0000        	ldw	x,#0
3348  08f3 89            	pushw	x
3349  08f4 ae0000        	ldw	x,#L101
3350  08f7 cd0000        	call	_assert_failed
3352  08fa 5b04          	addw	sp,#4
3353  08fc               L054:
3354                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3356  08fc 7b02          	ld	a,(OFST+2,sp)
3357  08fe a180          	cp	a,#128
3358  0900 2704          	jreq	L454
3359  0902 0d02          	tnz	(OFST+2,sp)
3360  0904 2603          	jrne	L254
3361  0906               L454:
3362  0906 4f            	clr	a
3363  0907 2010          	jra	L654
3364  0909               L254:
3365  0909 ae029c        	ldw	x,#668
3366  090c 89            	pushw	x
3367  090d ae0000        	ldw	x,#0
3368  0910 89            	pushw	x
3369  0911 ae0000        	ldw	x,#L101
3370  0914 cd0000        	call	_assert_failed
3372  0917 5b04          	addw	sp,#4
3373  0919               L654:
3374                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3376  0919 7b05          	ld	a,(OFST+5,sp)
3377  091b 88            	push	a
3378  091c 7b03          	ld	a,(OFST+3,sp)
3379  091e 97            	ld	xl,a
3380  091f 7b02          	ld	a,(OFST+2,sp)
3381  0921 95            	ld	xh,a
3382  0922 ad63          	call	_TIM1_ETRConfig
3384  0924 84            	pop	a
3385                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3385                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3387  0925 c65252        	ld	a,21074
3388  0928 a488          	and	a,#136
3389  092a aa77          	or	a,#119
3390  092c c75252        	ld	21074,a
3391                     ; 676 }
3394  092f 85            	popw	x
3395  0930 81            	ret
3454                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3454                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3454                     ; 696                               uint8_t ExtTRGFilter)
3454                     ; 697 {
3455                     	switch	.text
3456  0931               _TIM1_ETRClockMode2Config:
3458  0931 89            	pushw	x
3459       00000000      OFST:	set	0
3462                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3464  0932 9e            	ld	a,xh
3465  0933 4d            	tnz	a
3466  0934 270f          	jreq	L464
3467  0936 9e            	ld	a,xh
3468  0937 a110          	cp	a,#16
3469  0939 270a          	jreq	L464
3470  093b 9e            	ld	a,xh
3471  093c a120          	cp	a,#32
3472  093e 2705          	jreq	L464
3473  0940 9e            	ld	a,xh
3474  0941 a130          	cp	a,#48
3475  0943 2603          	jrne	L264
3476  0945               L464:
3477  0945 4f            	clr	a
3478  0946 2010          	jra	L664
3479  0948               L264:
3480  0948 ae02bb        	ldw	x,#699
3481  094b 89            	pushw	x
3482  094c ae0000        	ldw	x,#0
3483  094f 89            	pushw	x
3484  0950 ae0000        	ldw	x,#L101
3485  0953 cd0000        	call	_assert_failed
3487  0956 5b04          	addw	sp,#4
3488  0958               L664:
3489                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3491  0958 7b02          	ld	a,(OFST+2,sp)
3492  095a a180          	cp	a,#128
3493  095c 2704          	jreq	L274
3494  095e 0d02          	tnz	(OFST+2,sp)
3495  0960 2603          	jrne	L074
3496  0962               L274:
3497  0962 4f            	clr	a
3498  0963 2010          	jra	L474
3499  0965               L074:
3500  0965 ae02bc        	ldw	x,#700
3501  0968 89            	pushw	x
3502  0969 ae0000        	ldw	x,#0
3503  096c 89            	pushw	x
3504  096d ae0000        	ldw	x,#L101
3505  0970 cd0000        	call	_assert_failed
3507  0973 5b04          	addw	sp,#4
3508  0975               L474:
3509                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3511  0975 7b05          	ld	a,(OFST+5,sp)
3512  0977 88            	push	a
3513  0978 7b03          	ld	a,(OFST+3,sp)
3514  097a 97            	ld	xl,a
3515  097b 7b02          	ld	a,(OFST+2,sp)
3516  097d 95            	ld	xh,a
3517  097e ad07          	call	_TIM1_ETRConfig
3519  0980 84            	pop	a
3520                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3522  0981 721c5253      	bset	21075,#6
3523                     ; 707 }
3526  0985 85            	popw	x
3527  0986 81            	ret
3584                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3584                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3584                     ; 727                     uint8_t ExtTRGFilter)
3584                     ; 728 {
3585                     	switch	.text
3586  0987               _TIM1_ETRConfig:
3588  0987 89            	pushw	x
3589       00000000      OFST:	set	0
3592                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3594  0988 7b05          	ld	a,(OFST+5,sp)
3595  098a a110          	cp	a,#16
3596  098c 2403          	jruge	L005
3597  098e 4f            	clr	a
3598  098f 2010          	jra	L205
3599  0991               L005:
3600  0991 ae02da        	ldw	x,#730
3601  0994 89            	pushw	x
3602  0995 ae0000        	ldw	x,#0
3603  0998 89            	pushw	x
3604  0999 ae0000        	ldw	x,#L101
3605  099c cd0000        	call	_assert_failed
3607  099f 5b04          	addw	sp,#4
3608  09a1               L205:
3609                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3609                     ; 733                          (uint8_t)ExtTRGFilter );
3611  09a1 7b01          	ld	a,(OFST+1,sp)
3612  09a3 1a02          	or	a,(OFST+2,sp)
3613  09a5 1a05          	or	a,(OFST+5,sp)
3614  09a7 ca5253        	or	a,21075
3615  09aa c75253        	ld	21075,a
3616                     ; 734 }
3619  09ad 85            	popw	x
3620  09ae 81            	ret
3710                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3710                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3710                     ; 753                                  uint8_t ICFilter)
3710                     ; 754 {
3711                     	switch	.text
3712  09af               _TIM1_TIxExternalClockConfig:
3714  09af 89            	pushw	x
3715       00000000      OFST:	set	0
3718                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3720  09b0 9e            	ld	a,xh
3721  09b1 a140          	cp	a,#64
3722  09b3 270a          	jreq	L015
3723  09b5 9e            	ld	a,xh
3724  09b6 a160          	cp	a,#96
3725  09b8 2705          	jreq	L015
3726  09ba 9e            	ld	a,xh
3727  09bb a150          	cp	a,#80
3728  09bd 2603          	jrne	L605
3729  09bf               L015:
3730  09bf 4f            	clr	a
3731  09c0 2010          	jra	L215
3732  09c2               L605:
3733  09c2 ae02f4        	ldw	x,#756
3734  09c5 89            	pushw	x
3735  09c6 ae0000        	ldw	x,#0
3736  09c9 89            	pushw	x
3737  09ca ae0000        	ldw	x,#L101
3738  09cd cd0000        	call	_assert_failed
3740  09d0 5b04          	addw	sp,#4
3741  09d2               L215:
3742                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3744  09d2 0d02          	tnz	(OFST+2,sp)
3745  09d4 2706          	jreq	L615
3746  09d6 7b02          	ld	a,(OFST+2,sp)
3747  09d8 a101          	cp	a,#1
3748  09da 2603          	jrne	L415
3749  09dc               L615:
3750  09dc 4f            	clr	a
3751  09dd 2010          	jra	L025
3752  09df               L415:
3753  09df ae02f5        	ldw	x,#757
3754  09e2 89            	pushw	x
3755  09e3 ae0000        	ldw	x,#0
3756  09e6 89            	pushw	x
3757  09e7 ae0000        	ldw	x,#L101
3758  09ea cd0000        	call	_assert_failed
3760  09ed 5b04          	addw	sp,#4
3761  09ef               L025:
3762                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3764  09ef 7b05          	ld	a,(OFST+5,sp)
3765  09f1 a110          	cp	a,#16
3766  09f3 2403          	jruge	L225
3767  09f5 4f            	clr	a
3768  09f6 2010          	jra	L425
3769  09f8               L225:
3770  09f8 ae02f6        	ldw	x,#758
3771  09fb 89            	pushw	x
3772  09fc ae0000        	ldw	x,#0
3773  09ff 89            	pushw	x
3774  0a00 ae0000        	ldw	x,#L101
3775  0a03 cd0000        	call	_assert_failed
3777  0a06 5b04          	addw	sp,#4
3778  0a08               L425:
3779                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3781  0a08 7b01          	ld	a,(OFST+1,sp)
3782  0a0a a160          	cp	a,#96
3783  0a0c 260f          	jrne	L3131
3784                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3786  0a0e 7b05          	ld	a,(OFST+5,sp)
3787  0a10 88            	push	a
3788  0a11 7b03          	ld	a,(OFST+3,sp)
3789  0a13 ae0001        	ldw	x,#1
3790  0a16 95            	ld	xh,a
3791  0a17 cd153c        	call	L5_TI2_Config
3793  0a1a 84            	pop	a
3795  0a1b 200d          	jra	L5131
3796  0a1d               L3131:
3797                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3799  0a1d 7b05          	ld	a,(OFST+5,sp)
3800  0a1f 88            	push	a
3801  0a20 7b03          	ld	a,(OFST+3,sp)
3802  0a22 ae0001        	ldw	x,#1
3803  0a25 95            	ld	xh,a
3804  0a26 cd150c        	call	L3_TI1_Config
3806  0a29 84            	pop	a
3807  0a2a               L5131:
3808                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3810  0a2a 7b01          	ld	a,(OFST+1,sp)
3811  0a2c ad0a          	call	_TIM1_SelectInputTrigger
3813                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3815  0a2e c65252        	ld	a,21074
3816  0a31 aa07          	or	a,#7
3817  0a33 c75252        	ld	21074,a
3818                     ; 775 }
3821  0a36 85            	popw	x
3822  0a37 81            	ret
3908                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3908                     ; 788 {
3909                     	switch	.text
3910  0a38               _TIM1_SelectInputTrigger:
3912  0a38 88            	push	a
3913       00000000      OFST:	set	0
3916                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3918  0a39 a140          	cp	a,#64
3919  0a3b 2713          	jreq	L235
3920  0a3d a150          	cp	a,#80
3921  0a3f 270f          	jreq	L235
3922  0a41 a160          	cp	a,#96
3923  0a43 270b          	jreq	L235
3924  0a45 a170          	cp	a,#112
3925  0a47 2707          	jreq	L235
3926  0a49 a130          	cp	a,#48
3927  0a4b 2703          	jreq	L235
3928  0a4d 4d            	tnz	a
3929  0a4e 2603          	jrne	L035
3930  0a50               L235:
3931  0a50 4f            	clr	a
3932  0a51 2010          	jra	L435
3933  0a53               L035:
3934  0a53 ae0316        	ldw	x,#790
3935  0a56 89            	pushw	x
3936  0a57 ae0000        	ldw	x,#0
3937  0a5a 89            	pushw	x
3938  0a5b ae0000        	ldw	x,#L101
3939  0a5e cd0000        	call	_assert_failed
3941  0a61 5b04          	addw	sp,#4
3942  0a63               L435:
3943                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3945  0a63 c65252        	ld	a,21074
3946  0a66 a48f          	and	a,#143
3947  0a68 1a01          	or	a,(OFST+1,sp)
3948  0a6a c75252        	ld	21074,a
3949                     ; 794 }
3952  0a6d 84            	pop	a
3953  0a6e 81            	ret
3990                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3990                     ; 804 {
3991                     	switch	.text
3992  0a6f               _TIM1_UpdateDisableConfig:
3994  0a6f 88            	push	a
3995       00000000      OFST:	set	0
3998                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4000  0a70 4d            	tnz	a
4001  0a71 2704          	jreq	L245
4002  0a73 a101          	cp	a,#1
4003  0a75 2603          	jrne	L045
4004  0a77               L245:
4005  0a77 4f            	clr	a
4006  0a78 2010          	jra	L445
4007  0a7a               L045:
4008  0a7a ae0326        	ldw	x,#806
4009  0a7d 89            	pushw	x
4010  0a7e ae0000        	ldw	x,#0
4011  0a81 89            	pushw	x
4012  0a82 ae0000        	ldw	x,#L101
4013  0a85 cd0000        	call	_assert_failed
4015  0a88 5b04          	addw	sp,#4
4016  0a8a               L445:
4017                     ; 809   if (NewState != DISABLE)
4019  0a8a 0d01          	tnz	(OFST+1,sp)
4020  0a8c 2706          	jreq	L3731
4021                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
4023  0a8e 72125250      	bset	21072,#1
4025  0a92 2004          	jra	L5731
4026  0a94               L3731:
4027                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4029  0a94 72135250      	bres	21072,#1
4030  0a98               L5731:
4031                     ; 817 }
4034  0a98 84            	pop	a
4035  0a99 81            	ret
4094                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4094                     ; 828 {
4095                     	switch	.text
4096  0a9a               _TIM1_UpdateRequestConfig:
4098  0a9a 88            	push	a
4099       00000000      OFST:	set	0
4102                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4104  0a9b 4d            	tnz	a
4105  0a9c 2704          	jreq	L255
4106  0a9e a101          	cp	a,#1
4107  0aa0 2603          	jrne	L055
4108  0aa2               L255:
4109  0aa2 4f            	clr	a
4110  0aa3 2010          	jra	L455
4111  0aa5               L055:
4112  0aa5 ae033e        	ldw	x,#830
4113  0aa8 89            	pushw	x
4114  0aa9 ae0000        	ldw	x,#0
4115  0aac 89            	pushw	x
4116  0aad ae0000        	ldw	x,#L101
4117  0ab0 cd0000        	call	_assert_failed
4119  0ab3 5b04          	addw	sp,#4
4120  0ab5               L455:
4121                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4123  0ab5 0d01          	tnz	(OFST+1,sp)
4124  0ab7 2706          	jreq	L5241
4125                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4127  0ab9 72145250      	bset	21072,#2
4129  0abd 2004          	jra	L7241
4130  0abf               L5241:
4131                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4133  0abf 72155250      	bres	21072,#2
4134  0ac3               L7241:
4135                     ; 841 }
4138  0ac3 84            	pop	a
4139  0ac4 81            	ret
4176                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4176                     ; 850 {
4177                     	switch	.text
4178  0ac5               _TIM1_SelectHallSensor:
4180  0ac5 88            	push	a
4181       00000000      OFST:	set	0
4184                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4186  0ac6 4d            	tnz	a
4187  0ac7 2704          	jreq	L265
4188  0ac9 a101          	cp	a,#1
4189  0acb 2603          	jrne	L065
4190  0acd               L265:
4191  0acd 4f            	clr	a
4192  0ace 2010          	jra	L465
4193  0ad0               L065:
4194  0ad0 ae0354        	ldw	x,#852
4195  0ad3 89            	pushw	x
4196  0ad4 ae0000        	ldw	x,#0
4197  0ad7 89            	pushw	x
4198  0ad8 ae0000        	ldw	x,#L101
4199  0adb cd0000        	call	_assert_failed
4201  0ade 5b04          	addw	sp,#4
4202  0ae0               L465:
4203                     ; 855   if (NewState != DISABLE)
4205  0ae0 0d01          	tnz	(OFST+1,sp)
4206  0ae2 2706          	jreq	L7441
4207                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4209  0ae4 721e5251      	bset	21073,#7
4211  0ae8 2004          	jra	L1541
4212  0aea               L7441:
4213                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4215  0aea 721f5251      	bres	21073,#7
4216  0aee               L1541:
4217                     ; 863 }
4220  0aee 84            	pop	a
4221  0aef 81            	ret
4279                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4279                     ; 874 {
4280                     	switch	.text
4281  0af0               _TIM1_SelectOnePulseMode:
4283  0af0 88            	push	a
4284       00000000      OFST:	set	0
4287                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4289  0af1 a101          	cp	a,#1
4290  0af3 2703          	jreq	L275
4291  0af5 4d            	tnz	a
4292  0af6 2603          	jrne	L075
4293  0af8               L275:
4294  0af8 4f            	clr	a
4295  0af9 2010          	jra	L475
4296  0afb               L075:
4297  0afb ae036c        	ldw	x,#876
4298  0afe 89            	pushw	x
4299  0aff ae0000        	ldw	x,#0
4300  0b02 89            	pushw	x
4301  0b03 ae0000        	ldw	x,#L101
4302  0b06 cd0000        	call	_assert_failed
4304  0b09 5b04          	addw	sp,#4
4305  0b0b               L475:
4306                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4308  0b0b 0d01          	tnz	(OFST+1,sp)
4309  0b0d 2706          	jreq	L1051
4310                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4312  0b0f 72165250      	bset	21072,#3
4314  0b13 2004          	jra	L3051
4315  0b15               L1051:
4316                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4318  0b15 72175250      	bres	21072,#3
4319  0b19               L3051:
4320                     ; 888 }
4323  0b19 84            	pop	a
4324  0b1a 81            	ret
4423                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4423                     ; 904 {
4424                     	switch	.text
4425  0b1b               _TIM1_SelectOutputTrigger:
4427  0b1b 88            	push	a
4428       00000000      OFST:	set	0
4431                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4433  0b1c 4d            	tnz	a
4434  0b1d 2718          	jreq	L206
4435  0b1f a110          	cp	a,#16
4436  0b21 2714          	jreq	L206
4437  0b23 a120          	cp	a,#32
4438  0b25 2710          	jreq	L206
4439  0b27 a130          	cp	a,#48
4440  0b29 270c          	jreq	L206
4441  0b2b a140          	cp	a,#64
4442  0b2d 2708          	jreq	L206
4443  0b2f a150          	cp	a,#80
4444  0b31 2704          	jreq	L206
4445  0b33 a160          	cp	a,#96
4446  0b35 2603          	jrne	L006
4447  0b37               L206:
4448  0b37 4f            	clr	a
4449  0b38 2010          	jra	L406
4450  0b3a               L006:
4451  0b3a ae038a        	ldw	x,#906
4452  0b3d 89            	pushw	x
4453  0b3e ae0000        	ldw	x,#0
4454  0b41 89            	pushw	x
4455  0b42 ae0000        	ldw	x,#L101
4456  0b45 cd0000        	call	_assert_failed
4458  0b48 5b04          	addw	sp,#4
4459  0b4a               L406:
4460                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4460                     ; 910                         (uint8_t) TIM1_TRGOSource);
4462  0b4a c65251        	ld	a,21073
4463  0b4d a48f          	and	a,#143
4464  0b4f 1a01          	or	a,(OFST+1,sp)
4465  0b51 c75251        	ld	21073,a
4466                     ; 911 }
4469  0b54 84            	pop	a
4470  0b55 81            	ret
4545                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4545                     ; 924 {
4546                     	switch	.text
4547  0b56               _TIM1_SelectSlaveMode:
4549  0b56 88            	push	a
4550       00000000      OFST:	set	0
4553                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4555  0b57 a104          	cp	a,#4
4556  0b59 270c          	jreq	L216
4557  0b5b a105          	cp	a,#5
4558  0b5d 2708          	jreq	L216
4559  0b5f a106          	cp	a,#6
4560  0b61 2704          	jreq	L216
4561  0b63 a107          	cp	a,#7
4562  0b65 2603          	jrne	L016
4563  0b67               L216:
4564  0b67 4f            	clr	a
4565  0b68 2010          	jra	L416
4566  0b6a               L016:
4567  0b6a ae039e        	ldw	x,#926
4568  0b6d 89            	pushw	x
4569  0b6e ae0000        	ldw	x,#0
4570  0b71 89            	pushw	x
4571  0b72 ae0000        	ldw	x,#L101
4572  0b75 cd0000        	call	_assert_failed
4574  0b78 5b04          	addw	sp,#4
4575  0b7a               L416:
4576                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4576                     ; 930                          (uint8_t)TIM1_SlaveMode);
4578  0b7a c65252        	ld	a,21074
4579  0b7d a4f8          	and	a,#248
4580  0b7f 1a01          	or	a,(OFST+1,sp)
4581  0b81 c75252        	ld	21074,a
4582                     ; 931 }
4585  0b84 84            	pop	a
4586  0b85 81            	ret
4623                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4623                     ; 940 {
4624                     	switch	.text
4625  0b86               _TIM1_SelectMasterSlaveMode:
4627  0b86 88            	push	a
4628       00000000      OFST:	set	0
4631                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4633  0b87 4d            	tnz	a
4634  0b88 2704          	jreq	L226
4635  0b8a a101          	cp	a,#1
4636  0b8c 2603          	jrne	L026
4637  0b8e               L226:
4638  0b8e 4f            	clr	a
4639  0b8f 2010          	jra	L426
4640  0b91               L026:
4641  0b91 ae03ae        	ldw	x,#942
4642  0b94 89            	pushw	x
4643  0b95 ae0000        	ldw	x,#0
4644  0b98 89            	pushw	x
4645  0b99 ae0000        	ldw	x,#L101
4646  0b9c cd0000        	call	_assert_failed
4648  0b9f 5b04          	addw	sp,#4
4649  0ba1               L426:
4650                     ; 945   if (NewState != DISABLE)
4652  0ba1 0d01          	tnz	(OFST+1,sp)
4653  0ba3 2706          	jreq	L5161
4654                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4656  0ba5 721e5252      	bset	21074,#7
4658  0ba9 2004          	jra	L7161
4659  0bab               L5161:
4660                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4662  0bab 721f5252      	bres	21074,#7
4663  0baf               L7161:
4664                     ; 953 }
4667  0baf 84            	pop	a
4668  0bb0 81            	ret
4755                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4755                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4755                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4755                     ; 978 {
4756                     	switch	.text
4757  0bb1               _TIM1_EncoderInterfaceConfig:
4759  0bb1 89            	pushw	x
4760       00000000      OFST:	set	0
4763                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4765  0bb2 9e            	ld	a,xh
4766  0bb3 a101          	cp	a,#1
4767  0bb5 270a          	jreq	L236
4768  0bb7 9e            	ld	a,xh
4769  0bb8 a102          	cp	a,#2
4770  0bba 2705          	jreq	L236
4771  0bbc 9e            	ld	a,xh
4772  0bbd a103          	cp	a,#3
4773  0bbf 2603          	jrne	L036
4774  0bc1               L236:
4775  0bc1 4f            	clr	a
4776  0bc2 2010          	jra	L436
4777  0bc4               L036:
4778  0bc4 ae03d4        	ldw	x,#980
4779  0bc7 89            	pushw	x
4780  0bc8 ae0000        	ldw	x,#0
4781  0bcb 89            	pushw	x
4782  0bcc ae0000        	ldw	x,#L101
4783  0bcf cd0000        	call	_assert_failed
4785  0bd2 5b04          	addw	sp,#4
4786  0bd4               L436:
4787                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4789  0bd4 0d02          	tnz	(OFST+2,sp)
4790  0bd6 2706          	jreq	L046
4791  0bd8 7b02          	ld	a,(OFST+2,sp)
4792  0bda a101          	cp	a,#1
4793  0bdc 2603          	jrne	L636
4794  0bde               L046:
4795  0bde 4f            	clr	a
4796  0bdf 2010          	jra	L246
4797  0be1               L636:
4798  0be1 ae03d5        	ldw	x,#981
4799  0be4 89            	pushw	x
4800  0be5 ae0000        	ldw	x,#0
4801  0be8 89            	pushw	x
4802  0be9 ae0000        	ldw	x,#L101
4803  0bec cd0000        	call	_assert_failed
4805  0bef 5b04          	addw	sp,#4
4806  0bf1               L246:
4807                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4809  0bf1 0d05          	tnz	(OFST+5,sp)
4810  0bf3 2706          	jreq	L646
4811  0bf5 7b05          	ld	a,(OFST+5,sp)
4812  0bf7 a101          	cp	a,#1
4813  0bf9 2603          	jrne	L446
4814  0bfb               L646:
4815  0bfb 4f            	clr	a
4816  0bfc 2010          	jra	L056
4817  0bfe               L446:
4818  0bfe ae03d6        	ldw	x,#982
4819  0c01 89            	pushw	x
4820  0c02 ae0000        	ldw	x,#0
4821  0c05 89            	pushw	x
4822  0c06 ae0000        	ldw	x,#L101
4823  0c09 cd0000        	call	_assert_failed
4825  0c0c 5b04          	addw	sp,#4
4826  0c0e               L056:
4827                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4829  0c0e 0d02          	tnz	(OFST+2,sp)
4830  0c10 2706          	jreq	L1661
4831                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4833  0c12 7212525c      	bset	21084,#1
4835  0c16 2004          	jra	L3661
4836  0c18               L1661:
4837                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4839  0c18 7213525c      	bres	21084,#1
4840  0c1c               L3661:
4841                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4843  0c1c 0d05          	tnz	(OFST+5,sp)
4844  0c1e 2706          	jreq	L5661
4845                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4847  0c20 721a525c      	bset	21084,#5
4849  0c24 2004          	jra	L7661
4850  0c26               L5661:
4851                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4853  0c26 721b525c      	bres	21084,#5
4854  0c2a               L7661:
4855                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4855                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4857  0c2a c65252        	ld	a,21074
4858  0c2d a4f0          	and	a,#240
4859  0c2f 1a01          	or	a,(OFST+1,sp)
4860  0c31 c75252        	ld	21074,a
4861                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4861                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4863  0c34 c65258        	ld	a,21080
4864  0c37 a4fc          	and	a,#252
4865  0c39 aa01          	or	a,#1
4866  0c3b c75258        	ld	21080,a
4867                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4867                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4869  0c3e c65259        	ld	a,21081
4870  0c41 a4fc          	and	a,#252
4871  0c43 aa01          	or	a,#1
4872  0c45 c75259        	ld	21081,a
4873                     ; 1011 }
4876  0c48 85            	popw	x
4877  0c49 81            	ret
4945                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4945                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4945                     ; 1025 {
4946                     	switch	.text
4947  0c4a               _TIM1_PrescalerConfig:
4949  0c4a 89            	pushw	x
4950       00000000      OFST:	set	0
4953                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4955  0c4b 0d05          	tnz	(OFST+5,sp)
4956  0c4d 2706          	jreq	L656
4957  0c4f 7b05          	ld	a,(OFST+5,sp)
4958  0c51 a101          	cp	a,#1
4959  0c53 2603          	jrne	L456
4960  0c55               L656:
4961  0c55 4f            	clr	a
4962  0c56 2010          	jra	L066
4963  0c58               L456:
4964  0c58 ae0403        	ldw	x,#1027
4965  0c5b 89            	pushw	x
4966  0c5c ae0000        	ldw	x,#0
4967  0c5f 89            	pushw	x
4968  0c60 ae0000        	ldw	x,#L101
4969  0c63 cd0000        	call	_assert_failed
4971  0c66 5b04          	addw	sp,#4
4972  0c68               L066:
4973                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4975  0c68 7b01          	ld	a,(OFST+1,sp)
4976  0c6a c75260        	ld	21088,a
4977                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4979  0c6d 7b02          	ld	a,(OFST+2,sp)
4980  0c6f c75261        	ld	21089,a
4981                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4983  0c72 7b05          	ld	a,(OFST+5,sp)
4984  0c74 c75257        	ld	21079,a
4985                     ; 1035 }
4988  0c77 85            	popw	x
4989  0c78 81            	ret
5026                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5026                     ; 1049 {
5027                     	switch	.text
5028  0c79               _TIM1_CounterModeConfig:
5030  0c79 88            	push	a
5031       00000000      OFST:	set	0
5034                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5036  0c7a 4d            	tnz	a
5037  0c7b 2710          	jreq	L666
5038  0c7d a110          	cp	a,#16
5039  0c7f 270c          	jreq	L666
5040  0c81 a120          	cp	a,#32
5041  0c83 2708          	jreq	L666
5042  0c85 a140          	cp	a,#64
5043  0c87 2704          	jreq	L666
5044  0c89 a160          	cp	a,#96
5045  0c8b 2603          	jrne	L466
5046  0c8d               L666:
5047  0c8d 4f            	clr	a
5048  0c8e 2010          	jra	L076
5049  0c90               L466:
5050  0c90 ae041b        	ldw	x,#1051
5051  0c93 89            	pushw	x
5052  0c94 ae0000        	ldw	x,#0
5053  0c97 89            	pushw	x
5054  0c98 ae0000        	ldw	x,#L101
5055  0c9b cd0000        	call	_assert_failed
5057  0c9e 5b04          	addw	sp,#4
5058  0ca0               L076:
5059                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5059                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5061  0ca0 c65250        	ld	a,21072
5062  0ca3 a48f          	and	a,#143
5063  0ca5 1a01          	or	a,(OFST+1,sp)
5064  0ca7 c75250        	ld	21072,a
5065                     ; 1057 }
5068  0caa 84            	pop	a
5069  0cab 81            	ret
5128                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5128                     ; 1068 {
5129                     	switch	.text
5130  0cac               _TIM1_ForcedOC1Config:
5132  0cac 88            	push	a
5133       00000000      OFST:	set	0
5136                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5138  0cad a150          	cp	a,#80
5139  0caf 2704          	jreq	L676
5140  0cb1 a140          	cp	a,#64
5141  0cb3 2603          	jrne	L476
5142  0cb5               L676:
5143  0cb5 4f            	clr	a
5144  0cb6 2010          	jra	L007
5145  0cb8               L476:
5146  0cb8 ae042e        	ldw	x,#1070
5147  0cbb 89            	pushw	x
5148  0cbc ae0000        	ldw	x,#0
5149  0cbf 89            	pushw	x
5150  0cc0 ae0000        	ldw	x,#L101
5151  0cc3 cd0000        	call	_assert_failed
5153  0cc6 5b04          	addw	sp,#4
5154  0cc8               L007:
5155                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5155                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5157  0cc8 c65258        	ld	a,21080
5158  0ccb a48f          	and	a,#143
5159  0ccd 1a01          	or	a,(OFST+1,sp)
5160  0ccf c75258        	ld	21080,a
5161                     ; 1075 }
5164  0cd2 84            	pop	a
5165  0cd3 81            	ret
5202                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5202                     ; 1086 {
5203                     	switch	.text
5204  0cd4               _TIM1_ForcedOC2Config:
5206  0cd4 88            	push	a
5207       00000000      OFST:	set	0
5210                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5212  0cd5 a150          	cp	a,#80
5213  0cd7 2704          	jreq	L607
5214  0cd9 a140          	cp	a,#64
5215  0cdb 2603          	jrne	L407
5216  0cdd               L607:
5217  0cdd 4f            	clr	a
5218  0cde 2010          	jra	L017
5219  0ce0               L407:
5220  0ce0 ae0440        	ldw	x,#1088
5221  0ce3 89            	pushw	x
5222  0ce4 ae0000        	ldw	x,#0
5223  0ce7 89            	pushw	x
5224  0ce8 ae0000        	ldw	x,#L101
5225  0ceb cd0000        	call	_assert_failed
5227  0cee 5b04          	addw	sp,#4
5228  0cf0               L017:
5229                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5229                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5231  0cf0 c65259        	ld	a,21081
5232  0cf3 a48f          	and	a,#143
5233  0cf5 1a01          	or	a,(OFST+1,sp)
5234  0cf7 c75259        	ld	21081,a
5235                     ; 1093 }
5238  0cfa 84            	pop	a
5239  0cfb 81            	ret
5276                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5276                     ; 1105 {
5277                     	switch	.text
5278  0cfc               _TIM1_ForcedOC3Config:
5280  0cfc 88            	push	a
5281       00000000      OFST:	set	0
5284                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5286  0cfd a150          	cp	a,#80
5287  0cff 2704          	jreq	L617
5288  0d01 a140          	cp	a,#64
5289  0d03 2603          	jrne	L417
5290  0d05               L617:
5291  0d05 4f            	clr	a
5292  0d06 2010          	jra	L027
5293  0d08               L417:
5294  0d08 ae0453        	ldw	x,#1107
5295  0d0b 89            	pushw	x
5296  0d0c ae0000        	ldw	x,#0
5297  0d0f 89            	pushw	x
5298  0d10 ae0000        	ldw	x,#L101
5299  0d13 cd0000        	call	_assert_failed
5301  0d16 5b04          	addw	sp,#4
5302  0d18               L027:
5303                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5303                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5305  0d18 c6525a        	ld	a,21082
5306  0d1b a48f          	and	a,#143
5307  0d1d 1a01          	or	a,(OFST+1,sp)
5308  0d1f c7525a        	ld	21082,a
5309                     ; 1112 }
5312  0d22 84            	pop	a
5313  0d23 81            	ret
5350                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5350                     ; 1124 {
5351                     	switch	.text
5352  0d24               _TIM1_ForcedOC4Config:
5354  0d24 88            	push	a
5355       00000000      OFST:	set	0
5358                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5360  0d25 a150          	cp	a,#80
5361  0d27 2704          	jreq	L627
5362  0d29 a140          	cp	a,#64
5363  0d2b 2603          	jrne	L427
5364  0d2d               L627:
5365  0d2d 4f            	clr	a
5366  0d2e 2010          	jra	L037
5367  0d30               L427:
5368  0d30 ae0466        	ldw	x,#1126
5369  0d33 89            	pushw	x
5370  0d34 ae0000        	ldw	x,#0
5371  0d37 89            	pushw	x
5372  0d38 ae0000        	ldw	x,#L101
5373  0d3b cd0000        	call	_assert_failed
5375  0d3e 5b04          	addw	sp,#4
5376  0d40               L037:
5377                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5377                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5379  0d40 c6525b        	ld	a,21083
5380  0d43 a48f          	and	a,#143
5381  0d45 1a01          	or	a,(OFST+1,sp)
5382  0d47 c7525b        	ld	21083,a
5383                     ; 1131 }
5386  0d4a 84            	pop	a
5387  0d4b 81            	ret
5424                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5424                     ; 1140 {
5425                     	switch	.text
5426  0d4c               _TIM1_ARRPreloadConfig:
5428  0d4c 88            	push	a
5429       00000000      OFST:	set	0
5432                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5434  0d4d 4d            	tnz	a
5435  0d4e 2704          	jreq	L637
5436  0d50 a101          	cp	a,#1
5437  0d52 2603          	jrne	L437
5438  0d54               L637:
5439  0d54 4f            	clr	a
5440  0d55 2010          	jra	L047
5441  0d57               L437:
5442  0d57 ae0476        	ldw	x,#1142
5443  0d5a 89            	pushw	x
5444  0d5b ae0000        	ldw	x,#0
5445  0d5e 89            	pushw	x
5446  0d5f ae0000        	ldw	x,#L101
5447  0d62 cd0000        	call	_assert_failed
5449  0d65 5b04          	addw	sp,#4
5450  0d67               L047:
5451                     ; 1145   if (NewState != DISABLE)
5453  0d67 0d01          	tnz	(OFST+1,sp)
5454  0d69 2706          	jreq	L7502
5455                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5457  0d6b 721e5250      	bset	21072,#7
5459  0d6f 2004          	jra	L1602
5460  0d71               L7502:
5461                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5463  0d71 721f5250      	bres	21072,#7
5464  0d75               L1602:
5465                     ; 1153 }
5468  0d75 84            	pop	a
5469  0d76 81            	ret
5505                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5505                     ; 1162 {
5506                     	switch	.text
5507  0d77               _TIM1_SelectCOM:
5509  0d77 88            	push	a
5510       00000000      OFST:	set	0
5513                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5515  0d78 4d            	tnz	a
5516  0d79 2704          	jreq	L647
5517  0d7b a101          	cp	a,#1
5518  0d7d 2603          	jrne	L447
5519  0d7f               L647:
5520  0d7f 4f            	clr	a
5521  0d80 2010          	jra	L057
5522  0d82               L447:
5523  0d82 ae048c        	ldw	x,#1164
5524  0d85 89            	pushw	x
5525  0d86 ae0000        	ldw	x,#0
5526  0d89 89            	pushw	x
5527  0d8a ae0000        	ldw	x,#L101
5528  0d8d cd0000        	call	_assert_failed
5530  0d90 5b04          	addw	sp,#4
5531  0d92               L057:
5532                     ; 1167   if (NewState != DISABLE)
5534  0d92 0d01          	tnz	(OFST+1,sp)
5535  0d94 2706          	jreq	L1012
5536                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5538  0d96 72145251      	bset	21073,#2
5540  0d9a 2004          	jra	L3012
5541  0d9c               L1012:
5542                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5544  0d9c 72155251      	bres	21073,#2
5545  0da0               L3012:
5546                     ; 1175 }
5549  0da0 84            	pop	a
5550  0da1 81            	ret
5587                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5587                     ; 1184 {
5588                     	switch	.text
5589  0da2               _TIM1_CCPreloadControl:
5591  0da2 88            	push	a
5592       00000000      OFST:	set	0
5595                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5597  0da3 4d            	tnz	a
5598  0da4 2704          	jreq	L657
5599  0da6 a101          	cp	a,#1
5600  0da8 2603          	jrne	L457
5601  0daa               L657:
5602  0daa 4f            	clr	a
5603  0dab 2010          	jra	L067
5604  0dad               L457:
5605  0dad ae04a2        	ldw	x,#1186
5606  0db0 89            	pushw	x
5607  0db1 ae0000        	ldw	x,#0
5608  0db4 89            	pushw	x
5609  0db5 ae0000        	ldw	x,#L101
5610  0db8 cd0000        	call	_assert_failed
5612  0dbb 5b04          	addw	sp,#4
5613  0dbd               L067:
5614                     ; 1189   if (NewState != DISABLE)
5616  0dbd 0d01          	tnz	(OFST+1,sp)
5617  0dbf 2706          	jreq	L3212
5618                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5620  0dc1 72105251      	bset	21073,#0
5622  0dc5 2004          	jra	L5212
5623  0dc7               L3212:
5624                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5626  0dc7 72115251      	bres	21073,#0
5627  0dcb               L5212:
5628                     ; 1197 }
5631  0dcb 84            	pop	a
5632  0dcc 81            	ret
5669                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5669                     ; 1206 {
5670                     	switch	.text
5671  0dcd               _TIM1_OC1PreloadConfig:
5673  0dcd 88            	push	a
5674       00000000      OFST:	set	0
5677                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5679  0dce 4d            	tnz	a
5680  0dcf 2704          	jreq	L667
5681  0dd1 a101          	cp	a,#1
5682  0dd3 2603          	jrne	L467
5683  0dd5               L667:
5684  0dd5 4f            	clr	a
5685  0dd6 2010          	jra	L077
5686  0dd8               L467:
5687  0dd8 ae04b8        	ldw	x,#1208
5688  0ddb 89            	pushw	x
5689  0ddc ae0000        	ldw	x,#0
5690  0ddf 89            	pushw	x
5691  0de0 ae0000        	ldw	x,#L101
5692  0de3 cd0000        	call	_assert_failed
5694  0de6 5b04          	addw	sp,#4
5695  0de8               L077:
5696                     ; 1211   if (NewState != DISABLE)
5698  0de8 0d01          	tnz	(OFST+1,sp)
5699  0dea 2706          	jreq	L5412
5700                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5702  0dec 72165258      	bset	21080,#3
5704  0df0 2004          	jra	L7412
5705  0df2               L5412:
5706                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5708  0df2 72175258      	bres	21080,#3
5709  0df6               L7412:
5710                     ; 1219 }
5713  0df6 84            	pop	a
5714  0df7 81            	ret
5751                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5751                     ; 1228 {
5752                     	switch	.text
5753  0df8               _TIM1_OC2PreloadConfig:
5755  0df8 88            	push	a
5756       00000000      OFST:	set	0
5759                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5761  0df9 4d            	tnz	a
5762  0dfa 2704          	jreq	L677
5763  0dfc a101          	cp	a,#1
5764  0dfe 2603          	jrne	L477
5765  0e00               L677:
5766  0e00 4f            	clr	a
5767  0e01 2010          	jra	L0001
5768  0e03               L477:
5769  0e03 ae04ce        	ldw	x,#1230
5770  0e06 89            	pushw	x
5771  0e07 ae0000        	ldw	x,#0
5772  0e0a 89            	pushw	x
5773  0e0b ae0000        	ldw	x,#L101
5774  0e0e cd0000        	call	_assert_failed
5776  0e11 5b04          	addw	sp,#4
5777  0e13               L0001:
5778                     ; 1233   if (NewState != DISABLE)
5780  0e13 0d01          	tnz	(OFST+1,sp)
5781  0e15 2706          	jreq	L7612
5782                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5784  0e17 72165259      	bset	21081,#3
5786  0e1b 2004          	jra	L1712
5787  0e1d               L7612:
5788                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5790  0e1d 72175259      	bres	21081,#3
5791  0e21               L1712:
5792                     ; 1241 }
5795  0e21 84            	pop	a
5796  0e22 81            	ret
5833                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5833                     ; 1250 {
5834                     	switch	.text
5835  0e23               _TIM1_OC3PreloadConfig:
5837  0e23 88            	push	a
5838       00000000      OFST:	set	0
5841                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5843  0e24 4d            	tnz	a
5844  0e25 2704          	jreq	L6001
5845  0e27 a101          	cp	a,#1
5846  0e29 2603          	jrne	L4001
5847  0e2b               L6001:
5848  0e2b 4f            	clr	a
5849  0e2c 2010          	jra	L0101
5850  0e2e               L4001:
5851  0e2e ae04e4        	ldw	x,#1252
5852  0e31 89            	pushw	x
5853  0e32 ae0000        	ldw	x,#0
5854  0e35 89            	pushw	x
5855  0e36 ae0000        	ldw	x,#L101
5856  0e39 cd0000        	call	_assert_failed
5858  0e3c 5b04          	addw	sp,#4
5859  0e3e               L0101:
5860                     ; 1255   if (NewState != DISABLE)
5862  0e3e 0d01          	tnz	(OFST+1,sp)
5863  0e40 2706          	jreq	L1122
5864                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5866  0e42 7216525a      	bset	21082,#3
5868  0e46 2004          	jra	L3122
5869  0e48               L1122:
5870                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5872  0e48 7217525a      	bres	21082,#3
5873  0e4c               L3122:
5874                     ; 1263 }
5877  0e4c 84            	pop	a
5878  0e4d 81            	ret
5915                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5915                     ; 1272 {
5916                     	switch	.text
5917  0e4e               _TIM1_OC4PreloadConfig:
5919  0e4e 88            	push	a
5920       00000000      OFST:	set	0
5923                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5925  0e4f 4d            	tnz	a
5926  0e50 2704          	jreq	L6101
5927  0e52 a101          	cp	a,#1
5928  0e54 2603          	jrne	L4101
5929  0e56               L6101:
5930  0e56 4f            	clr	a
5931  0e57 2010          	jra	L0201
5932  0e59               L4101:
5933  0e59 ae04fa        	ldw	x,#1274
5934  0e5c 89            	pushw	x
5935  0e5d ae0000        	ldw	x,#0
5936  0e60 89            	pushw	x
5937  0e61 ae0000        	ldw	x,#L101
5938  0e64 cd0000        	call	_assert_failed
5940  0e67 5b04          	addw	sp,#4
5941  0e69               L0201:
5942                     ; 1277   if (NewState != DISABLE)
5944  0e69 0d01          	tnz	(OFST+1,sp)
5945  0e6b 2706          	jreq	L3322
5946                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5948  0e6d 7216525b      	bset	21083,#3
5950  0e71 2004          	jra	L5322
5951  0e73               L3322:
5952                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5954  0e73 7217525b      	bres	21083,#3
5955  0e77               L5322:
5956                     ; 1285 }
5959  0e77 84            	pop	a
5960  0e78 81            	ret
5996                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5996                     ; 1294 {
5997                     	switch	.text
5998  0e79               _TIM1_OC1FastConfig:
6000  0e79 88            	push	a
6001       00000000      OFST:	set	0
6004                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6006  0e7a 4d            	tnz	a
6007  0e7b 2704          	jreq	L6201
6008  0e7d a101          	cp	a,#1
6009  0e7f 2603          	jrne	L4201
6010  0e81               L6201:
6011  0e81 4f            	clr	a
6012  0e82 2010          	jra	L0301
6013  0e84               L4201:
6014  0e84 ae0510        	ldw	x,#1296
6015  0e87 89            	pushw	x
6016  0e88 ae0000        	ldw	x,#0
6017  0e8b 89            	pushw	x
6018  0e8c ae0000        	ldw	x,#L101
6019  0e8f cd0000        	call	_assert_failed
6021  0e92 5b04          	addw	sp,#4
6022  0e94               L0301:
6023                     ; 1299   if (NewState != DISABLE)
6025  0e94 0d01          	tnz	(OFST+1,sp)
6026  0e96 2706          	jreq	L5522
6027                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6029  0e98 72145258      	bset	21080,#2
6031  0e9c 2004          	jra	L7522
6032  0e9e               L5522:
6033                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6035  0e9e 72155258      	bres	21080,#2
6036  0ea2               L7522:
6037                     ; 1307 }
6040  0ea2 84            	pop	a
6041  0ea3 81            	ret
6077                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6077                     ; 1316 {
6078                     	switch	.text
6079  0ea4               _TIM1_OC2FastConfig:
6081  0ea4 88            	push	a
6082       00000000      OFST:	set	0
6085                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6087  0ea5 4d            	tnz	a
6088  0ea6 2704          	jreq	L6301
6089  0ea8 a101          	cp	a,#1
6090  0eaa 2603          	jrne	L4301
6091  0eac               L6301:
6092  0eac 4f            	clr	a
6093  0ead 2010          	jra	L0401
6094  0eaf               L4301:
6095  0eaf ae0526        	ldw	x,#1318
6096  0eb2 89            	pushw	x
6097  0eb3 ae0000        	ldw	x,#0
6098  0eb6 89            	pushw	x
6099  0eb7 ae0000        	ldw	x,#L101
6100  0eba cd0000        	call	_assert_failed
6102  0ebd 5b04          	addw	sp,#4
6103  0ebf               L0401:
6104                     ; 1321   if (NewState != DISABLE)
6106  0ebf 0d01          	tnz	(OFST+1,sp)
6107  0ec1 2706          	jreq	L7722
6108                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6110  0ec3 72145259      	bset	21081,#2
6112  0ec7 2004          	jra	L1032
6113  0ec9               L7722:
6114                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6116  0ec9 72155259      	bres	21081,#2
6117  0ecd               L1032:
6118                     ; 1329 }
6121  0ecd 84            	pop	a
6122  0ece 81            	ret
6158                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6158                     ; 1338 {
6159                     	switch	.text
6160  0ecf               _TIM1_OC3FastConfig:
6162  0ecf 88            	push	a
6163       00000000      OFST:	set	0
6166                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6168  0ed0 4d            	tnz	a
6169  0ed1 2704          	jreq	L6401
6170  0ed3 a101          	cp	a,#1
6171  0ed5 2603          	jrne	L4401
6172  0ed7               L6401:
6173  0ed7 4f            	clr	a
6174  0ed8 2010          	jra	L0501
6175  0eda               L4401:
6176  0eda ae053c        	ldw	x,#1340
6177  0edd 89            	pushw	x
6178  0ede ae0000        	ldw	x,#0
6179  0ee1 89            	pushw	x
6180  0ee2 ae0000        	ldw	x,#L101
6181  0ee5 cd0000        	call	_assert_failed
6183  0ee8 5b04          	addw	sp,#4
6184  0eea               L0501:
6185                     ; 1343   if (NewState != DISABLE)
6187  0eea 0d01          	tnz	(OFST+1,sp)
6188  0eec 2706          	jreq	L1232
6189                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6191  0eee 7214525a      	bset	21082,#2
6193  0ef2 2004          	jra	L3232
6194  0ef4               L1232:
6195                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6197  0ef4 7215525a      	bres	21082,#2
6198  0ef8               L3232:
6199                     ; 1351 }
6202  0ef8 84            	pop	a
6203  0ef9 81            	ret
6239                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6239                     ; 1360 {
6240                     	switch	.text
6241  0efa               _TIM1_OC4FastConfig:
6243  0efa 88            	push	a
6244       00000000      OFST:	set	0
6247                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6249  0efb 4d            	tnz	a
6250  0efc 2704          	jreq	L6501
6251  0efe a101          	cp	a,#1
6252  0f00 2603          	jrne	L4501
6253  0f02               L6501:
6254  0f02 4f            	clr	a
6255  0f03 2010          	jra	L0601
6256  0f05               L4501:
6257  0f05 ae0552        	ldw	x,#1362
6258  0f08 89            	pushw	x
6259  0f09 ae0000        	ldw	x,#0
6260  0f0c 89            	pushw	x
6261  0f0d ae0000        	ldw	x,#L101
6262  0f10 cd0000        	call	_assert_failed
6264  0f13 5b04          	addw	sp,#4
6265  0f15               L0601:
6266                     ; 1365   if (NewState != DISABLE)
6268  0f15 0d01          	tnz	(OFST+1,sp)
6269  0f17 2706          	jreq	L3432
6270                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6272  0f19 7214525b      	bset	21083,#2
6274  0f1d 2004          	jra	L5432
6275  0f1f               L3432:
6276                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6278  0f1f 7215525b      	bres	21083,#2
6279  0f23               L5432:
6280                     ; 1373 }
6283  0f23 84            	pop	a
6284  0f24 81            	ret
6390                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6390                     ; 1390 {
6391                     	switch	.text
6392  0f25               _TIM1_GenerateEvent:
6394  0f25 88            	push	a
6395       00000000      OFST:	set	0
6398                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6400  0f26 4d            	tnz	a
6401  0f27 2703          	jreq	L4601
6402  0f29 4f            	clr	a
6403  0f2a 2010          	jra	L6601
6404  0f2c               L4601:
6405  0f2c ae0570        	ldw	x,#1392
6406  0f2f 89            	pushw	x
6407  0f30 ae0000        	ldw	x,#0
6408  0f33 89            	pushw	x
6409  0f34 ae0000        	ldw	x,#L101
6410  0f37 cd0000        	call	_assert_failed
6412  0f3a 5b04          	addw	sp,#4
6413  0f3c               L6601:
6414                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6416  0f3c 7b01          	ld	a,(OFST+1,sp)
6417  0f3e c75257        	ld	21079,a
6418                     ; 1396 }
6421  0f41 84            	pop	a
6422  0f42 81            	ret
6459                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6459                     ; 1407 {
6460                     	switch	.text
6461  0f43               _TIM1_OC1PolarityConfig:
6463  0f43 88            	push	a
6464       00000000      OFST:	set	0
6467                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6469  0f44 4d            	tnz	a
6470  0f45 2704          	jreq	L4701
6471  0f47 a122          	cp	a,#34
6472  0f49 2603          	jrne	L2701
6473  0f4b               L4701:
6474  0f4b 4f            	clr	a
6475  0f4c 2010          	jra	L6701
6476  0f4e               L2701:
6477  0f4e ae0581        	ldw	x,#1409
6478  0f51 89            	pushw	x
6479  0f52 ae0000        	ldw	x,#0
6480  0f55 89            	pushw	x
6481  0f56 ae0000        	ldw	x,#L101
6482  0f59 cd0000        	call	_assert_failed
6484  0f5c 5b04          	addw	sp,#4
6485  0f5e               L6701:
6486                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6488  0f5e 0d01          	tnz	(OFST+1,sp)
6489  0f60 2706          	jreq	L7242
6490                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6492  0f62 7212525c      	bset	21084,#1
6494  0f66 2004          	jra	L1342
6495  0f68               L7242:
6496                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6498  0f68 7213525c      	bres	21084,#1
6499  0f6c               L1342:
6500                     ; 1420 }
6503  0f6c 84            	pop	a
6504  0f6d 81            	ret
6541                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6541                     ; 1431 {
6542                     	switch	.text
6543  0f6e               _TIM1_OC1NPolarityConfig:
6545  0f6e 88            	push	a
6546       00000000      OFST:	set	0
6549                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6551  0f6f 4d            	tnz	a
6552  0f70 2704          	jreq	L4011
6553  0f72 a188          	cp	a,#136
6554  0f74 2603          	jrne	L2011
6555  0f76               L4011:
6556  0f76 4f            	clr	a
6557  0f77 2010          	jra	L6011
6558  0f79               L2011:
6559  0f79 ae0599        	ldw	x,#1433
6560  0f7c 89            	pushw	x
6561  0f7d ae0000        	ldw	x,#0
6562  0f80 89            	pushw	x
6563  0f81 ae0000        	ldw	x,#L101
6564  0f84 cd0000        	call	_assert_failed
6566  0f87 5b04          	addw	sp,#4
6567  0f89               L6011:
6568                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6570  0f89 0d01          	tnz	(OFST+1,sp)
6571  0f8b 2706          	jreq	L1542
6572                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6574  0f8d 7216525c      	bset	21084,#3
6576  0f91 2004          	jra	L3542
6577  0f93               L1542:
6578                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6580  0f93 7217525c      	bres	21084,#3
6581  0f97               L3542:
6582                     ; 1444 }
6585  0f97 84            	pop	a
6586  0f98 81            	ret
6623                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6623                     ; 1455 {
6624                     	switch	.text
6625  0f99               _TIM1_OC2PolarityConfig:
6627  0f99 88            	push	a
6628       00000000      OFST:	set	0
6631                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6633  0f9a 4d            	tnz	a
6634  0f9b 2704          	jreq	L4111
6635  0f9d a122          	cp	a,#34
6636  0f9f 2603          	jrne	L2111
6637  0fa1               L4111:
6638  0fa1 4f            	clr	a
6639  0fa2 2010          	jra	L6111
6640  0fa4               L2111:
6641  0fa4 ae05b1        	ldw	x,#1457
6642  0fa7 89            	pushw	x
6643  0fa8 ae0000        	ldw	x,#0
6644  0fab 89            	pushw	x
6645  0fac ae0000        	ldw	x,#L101
6646  0faf cd0000        	call	_assert_failed
6648  0fb2 5b04          	addw	sp,#4
6649  0fb4               L6111:
6650                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6652  0fb4 0d01          	tnz	(OFST+1,sp)
6653  0fb6 2706          	jreq	L3742
6654                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6656  0fb8 721a525c      	bset	21084,#5
6658  0fbc 2004          	jra	L5742
6659  0fbe               L3742:
6660                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6662  0fbe 721b525c      	bres	21084,#5
6663  0fc2               L5742:
6664                     ; 1468 }
6667  0fc2 84            	pop	a
6668  0fc3 81            	ret
6705                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6705                     ; 1479 {
6706                     	switch	.text
6707  0fc4               _TIM1_OC2NPolarityConfig:
6709  0fc4 88            	push	a
6710       00000000      OFST:	set	0
6713                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6715  0fc5 4d            	tnz	a
6716  0fc6 2704          	jreq	L4211
6717  0fc8 a188          	cp	a,#136
6718  0fca 2603          	jrne	L2211
6719  0fcc               L4211:
6720  0fcc 4f            	clr	a
6721  0fcd 2010          	jra	L6211
6722  0fcf               L2211:
6723  0fcf ae05c9        	ldw	x,#1481
6724  0fd2 89            	pushw	x
6725  0fd3 ae0000        	ldw	x,#0
6726  0fd6 89            	pushw	x
6727  0fd7 ae0000        	ldw	x,#L101
6728  0fda cd0000        	call	_assert_failed
6730  0fdd 5b04          	addw	sp,#4
6731  0fdf               L6211:
6732                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6734  0fdf 0d01          	tnz	(OFST+1,sp)
6735  0fe1 2706          	jreq	L5152
6736                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6738  0fe3 721e525c      	bset	21084,#7
6740  0fe7 2004          	jra	L7152
6741  0fe9               L5152:
6742                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6744  0fe9 721f525c      	bres	21084,#7
6745  0fed               L7152:
6746                     ; 1492 }
6749  0fed 84            	pop	a
6750  0fee 81            	ret
6787                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6787                     ; 1503 {
6788                     	switch	.text
6789  0fef               _TIM1_OC3PolarityConfig:
6791  0fef 88            	push	a
6792       00000000      OFST:	set	0
6795                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6797  0ff0 4d            	tnz	a
6798  0ff1 2704          	jreq	L4311
6799  0ff3 a122          	cp	a,#34
6800  0ff5 2603          	jrne	L2311
6801  0ff7               L4311:
6802  0ff7 4f            	clr	a
6803  0ff8 2010          	jra	L6311
6804  0ffa               L2311:
6805  0ffa ae05e1        	ldw	x,#1505
6806  0ffd 89            	pushw	x
6807  0ffe ae0000        	ldw	x,#0
6808  1001 89            	pushw	x
6809  1002 ae0000        	ldw	x,#L101
6810  1005 cd0000        	call	_assert_failed
6812  1008 5b04          	addw	sp,#4
6813  100a               L6311:
6814                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6816  100a 0d01          	tnz	(OFST+1,sp)
6817  100c 2706          	jreq	L7352
6818                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6820  100e 7212525d      	bset	21085,#1
6822  1012 2004          	jra	L1452
6823  1014               L7352:
6824                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6826  1014 7213525d      	bres	21085,#1
6827  1018               L1452:
6828                     ; 1516 }
6831  1018 84            	pop	a
6832  1019 81            	ret
6869                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6869                     ; 1528 {
6870                     	switch	.text
6871  101a               _TIM1_OC3NPolarityConfig:
6873  101a 88            	push	a
6874       00000000      OFST:	set	0
6877                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6879  101b 4d            	tnz	a
6880  101c 2704          	jreq	L4411
6881  101e a188          	cp	a,#136
6882  1020 2603          	jrne	L2411
6883  1022               L4411:
6884  1022 4f            	clr	a
6885  1023 2010          	jra	L6411
6886  1025               L2411:
6887  1025 ae05fa        	ldw	x,#1530
6888  1028 89            	pushw	x
6889  1029 ae0000        	ldw	x,#0
6890  102c 89            	pushw	x
6891  102d ae0000        	ldw	x,#L101
6892  1030 cd0000        	call	_assert_failed
6894  1033 5b04          	addw	sp,#4
6895  1035               L6411:
6896                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6898  1035 0d01          	tnz	(OFST+1,sp)
6899  1037 2706          	jreq	L1652
6900                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6902  1039 7216525d      	bset	21085,#3
6904  103d 2004          	jra	L3652
6905  103f               L1652:
6906                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6908  103f 7217525d      	bres	21085,#3
6909  1043               L3652:
6910                     ; 1541 }
6913  1043 84            	pop	a
6914  1044 81            	ret
6951                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6951                     ; 1552 {
6952                     	switch	.text
6953  1045               _TIM1_OC4PolarityConfig:
6955  1045 88            	push	a
6956       00000000      OFST:	set	0
6959                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6961  1046 4d            	tnz	a
6962  1047 2704          	jreq	L4511
6963  1049 a122          	cp	a,#34
6964  104b 2603          	jrne	L2511
6965  104d               L4511:
6966  104d 4f            	clr	a
6967  104e 2010          	jra	L6511
6968  1050               L2511:
6969  1050 ae0612        	ldw	x,#1554
6970  1053 89            	pushw	x
6971  1054 ae0000        	ldw	x,#0
6972  1057 89            	pushw	x
6973  1058 ae0000        	ldw	x,#L101
6974  105b cd0000        	call	_assert_failed
6976  105e 5b04          	addw	sp,#4
6977  1060               L6511:
6978                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6980  1060 0d01          	tnz	(OFST+1,sp)
6981  1062 2706          	jreq	L3062
6982                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6984  1064 721a525d      	bset	21085,#5
6986  1068 2004          	jra	L5062
6987  106a               L3062:
6988                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6990  106a 721b525d      	bres	21085,#5
6991  106e               L5062:
6992                     ; 1565 }
6995  106e 84            	pop	a
6996  106f 81            	ret
7042                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7042                     ; 1580 {
7043                     	switch	.text
7044  1070               _TIM1_CCxCmd:
7046  1070 89            	pushw	x
7047       00000000      OFST:	set	0
7050                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7052  1071 9e            	ld	a,xh
7053  1072 4d            	tnz	a
7054  1073 270f          	jreq	L4611
7055  1075 9e            	ld	a,xh
7056  1076 a101          	cp	a,#1
7057  1078 270a          	jreq	L4611
7058  107a 9e            	ld	a,xh
7059  107b a102          	cp	a,#2
7060  107d 2705          	jreq	L4611
7061  107f 9e            	ld	a,xh
7062  1080 a103          	cp	a,#3
7063  1082 2603          	jrne	L2611
7064  1084               L4611:
7065  1084 4f            	clr	a
7066  1085 2010          	jra	L6611
7067  1087               L2611:
7068  1087 ae062e        	ldw	x,#1582
7069  108a 89            	pushw	x
7070  108b ae0000        	ldw	x,#0
7071  108e 89            	pushw	x
7072  108f ae0000        	ldw	x,#L101
7073  1092 cd0000        	call	_assert_failed
7075  1095 5b04          	addw	sp,#4
7076  1097               L6611:
7077                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7079  1097 0d02          	tnz	(OFST+2,sp)
7080  1099 2706          	jreq	L2711
7081  109b 7b02          	ld	a,(OFST+2,sp)
7082  109d a101          	cp	a,#1
7083  109f 2603          	jrne	L0711
7084  10a1               L2711:
7085  10a1 4f            	clr	a
7086  10a2 2010          	jra	L4711
7087  10a4               L0711:
7088  10a4 ae062f        	ldw	x,#1583
7089  10a7 89            	pushw	x
7090  10a8 ae0000        	ldw	x,#0
7091  10ab 89            	pushw	x
7092  10ac ae0000        	ldw	x,#L101
7093  10af cd0000        	call	_assert_failed
7095  10b2 5b04          	addw	sp,#4
7096  10b4               L4711:
7097                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7099  10b4 0d01          	tnz	(OFST+1,sp)
7100  10b6 2610          	jrne	L1362
7101                     ; 1588     if (NewState != DISABLE)
7103  10b8 0d02          	tnz	(OFST+2,sp)
7104  10ba 2706          	jreq	L3362
7105                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7107  10bc 7210525c      	bset	21084,#0
7109  10c0 2040          	jra	L7362
7110  10c2               L3362:
7111                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7113  10c2 7211525c      	bres	21084,#0
7114  10c6 203a          	jra	L7362
7115  10c8               L1362:
7116                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7118  10c8 7b01          	ld	a,(OFST+1,sp)
7119  10ca a101          	cp	a,#1
7120  10cc 2610          	jrne	L1462
7121                     ; 1601     if (NewState != DISABLE)
7123  10ce 0d02          	tnz	(OFST+2,sp)
7124  10d0 2706          	jreq	L3462
7125                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7127  10d2 7218525c      	bset	21084,#4
7129  10d6 202a          	jra	L7362
7130  10d8               L3462:
7131                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7133  10d8 7219525c      	bres	21084,#4
7134  10dc 2024          	jra	L7362
7135  10de               L1462:
7136                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7138  10de 7b01          	ld	a,(OFST+1,sp)
7139  10e0 a102          	cp	a,#2
7140  10e2 2610          	jrne	L1562
7141                     ; 1613     if (NewState != DISABLE)
7143  10e4 0d02          	tnz	(OFST+2,sp)
7144  10e6 2706          	jreq	L3562
7145                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7147  10e8 7210525d      	bset	21085,#0
7149  10ec 2014          	jra	L7362
7150  10ee               L3562:
7151                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7153  10ee 7211525d      	bres	21085,#0
7154  10f2 200e          	jra	L7362
7155  10f4               L1562:
7156                     ; 1625     if (NewState != DISABLE)
7158  10f4 0d02          	tnz	(OFST+2,sp)
7159  10f6 2706          	jreq	L1662
7160                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7162  10f8 7218525d      	bset	21085,#4
7164  10fc 2004          	jra	L7362
7165  10fe               L1662:
7166                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7168  10fe 7219525d      	bres	21085,#4
7169  1102               L7362:
7170                     ; 1634 }
7173  1102 85            	popw	x
7174  1103 81            	ret
7220                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7220                     ; 1648 {
7221                     	switch	.text
7222  1104               _TIM1_CCxNCmd:
7224  1104 89            	pushw	x
7225       00000000      OFST:	set	0
7228                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7230  1105 9e            	ld	a,xh
7231  1106 4d            	tnz	a
7232  1107 270a          	jreq	L2021
7233  1109 9e            	ld	a,xh
7234  110a a101          	cp	a,#1
7235  110c 2705          	jreq	L2021
7236  110e 9e            	ld	a,xh
7237  110f a102          	cp	a,#2
7238  1111 2603          	jrne	L0021
7239  1113               L2021:
7240  1113 4f            	clr	a
7241  1114 2010          	jra	L4021
7242  1116               L0021:
7243  1116 ae0672        	ldw	x,#1650
7244  1119 89            	pushw	x
7245  111a ae0000        	ldw	x,#0
7246  111d 89            	pushw	x
7247  111e ae0000        	ldw	x,#L101
7248  1121 cd0000        	call	_assert_failed
7250  1124 5b04          	addw	sp,#4
7251  1126               L4021:
7252                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7254  1126 0d02          	tnz	(OFST+2,sp)
7255  1128 2706          	jreq	L0121
7256  112a 7b02          	ld	a,(OFST+2,sp)
7257  112c a101          	cp	a,#1
7258  112e 2603          	jrne	L6021
7259  1130               L0121:
7260  1130 4f            	clr	a
7261  1131 2010          	jra	L2121
7262  1133               L6021:
7263  1133 ae0673        	ldw	x,#1651
7264  1136 89            	pushw	x
7265  1137 ae0000        	ldw	x,#0
7266  113a 89            	pushw	x
7267  113b ae0000        	ldw	x,#L101
7268  113e cd0000        	call	_assert_failed
7270  1141 5b04          	addw	sp,#4
7271  1143               L2121:
7272                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7274  1143 0d01          	tnz	(OFST+1,sp)
7275  1145 2610          	jrne	L7072
7276                     ; 1656     if (NewState != DISABLE)
7278  1147 0d02          	tnz	(OFST+2,sp)
7279  1149 2706          	jreq	L1172
7280                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7282  114b 7214525c      	bset	21084,#2
7284  114f 202a          	jra	L5172
7285  1151               L1172:
7286                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7288  1151 7215525c      	bres	21084,#2
7289  1155 2024          	jra	L5172
7290  1157               L7072:
7291                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7293  1157 7b01          	ld	a,(OFST+1,sp)
7294  1159 a101          	cp	a,#1
7295  115b 2610          	jrne	L7172
7296                     ; 1668     if (NewState != DISABLE)
7298  115d 0d02          	tnz	(OFST+2,sp)
7299  115f 2706          	jreq	L1272
7300                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7302  1161 721c525c      	bset	21084,#6
7304  1165 2014          	jra	L5172
7305  1167               L1272:
7306                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7308  1167 721d525c      	bres	21084,#6
7309  116b 200e          	jra	L5172
7310  116d               L7172:
7311                     ; 1680     if (NewState != DISABLE)
7313  116d 0d02          	tnz	(OFST+2,sp)
7314  116f 2706          	jreq	L7272
7315                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7317  1171 7214525d      	bset	21085,#2
7319  1175 2004          	jra	L5172
7320  1177               L7272:
7321                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7323  1177 7215525d      	bres	21085,#2
7324  117b               L5172:
7325                     ; 1689 }
7328  117b 85            	popw	x
7329  117c 81            	ret
7375                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7375                     ; 1713 {
7376                     	switch	.text
7377  117d               _TIM1_SelectOCxM:
7379  117d 89            	pushw	x
7380       00000000      OFST:	set	0
7383                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7385  117e 9e            	ld	a,xh
7386  117f 4d            	tnz	a
7387  1180 270f          	jreq	L0221
7388  1182 9e            	ld	a,xh
7389  1183 a101          	cp	a,#1
7390  1185 270a          	jreq	L0221
7391  1187 9e            	ld	a,xh
7392  1188 a102          	cp	a,#2
7393  118a 2705          	jreq	L0221
7394  118c 9e            	ld	a,xh
7395  118d a103          	cp	a,#3
7396  118f 2603          	jrne	L6121
7397  1191               L0221:
7398  1191 4f            	clr	a
7399  1192 2010          	jra	L2221
7400  1194               L6121:
7401  1194 ae06b3        	ldw	x,#1715
7402  1197 89            	pushw	x
7403  1198 ae0000        	ldw	x,#0
7404  119b 89            	pushw	x
7405  119c ae0000        	ldw	x,#L101
7406  119f cd0000        	call	_assert_failed
7408  11a2 5b04          	addw	sp,#4
7409  11a4               L2221:
7410                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7412  11a4 0d02          	tnz	(OFST+2,sp)
7413  11a6 272a          	jreq	L6221
7414  11a8 7b02          	ld	a,(OFST+2,sp)
7415  11aa a110          	cp	a,#16
7416  11ac 2724          	jreq	L6221
7417  11ae 7b02          	ld	a,(OFST+2,sp)
7418  11b0 a120          	cp	a,#32
7419  11b2 271e          	jreq	L6221
7420  11b4 7b02          	ld	a,(OFST+2,sp)
7421  11b6 a130          	cp	a,#48
7422  11b8 2718          	jreq	L6221
7423  11ba 7b02          	ld	a,(OFST+2,sp)
7424  11bc a160          	cp	a,#96
7425  11be 2712          	jreq	L6221
7426  11c0 7b02          	ld	a,(OFST+2,sp)
7427  11c2 a170          	cp	a,#112
7428  11c4 270c          	jreq	L6221
7429  11c6 7b02          	ld	a,(OFST+2,sp)
7430  11c8 a150          	cp	a,#80
7431  11ca 2706          	jreq	L6221
7432  11cc 7b02          	ld	a,(OFST+2,sp)
7433  11ce a140          	cp	a,#64
7434  11d0 2603          	jrne	L4221
7435  11d2               L6221:
7436  11d2 4f            	clr	a
7437  11d3 2010          	jra	L0321
7438  11d5               L4221:
7439  11d5 ae06b4        	ldw	x,#1716
7440  11d8 89            	pushw	x
7441  11d9 ae0000        	ldw	x,#0
7442  11dc 89            	pushw	x
7443  11dd ae0000        	ldw	x,#L101
7444  11e0 cd0000        	call	_assert_failed
7446  11e3 5b04          	addw	sp,#4
7447  11e5               L0321:
7448                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7450  11e5 0d01          	tnz	(OFST+1,sp)
7451  11e7 2610          	jrne	L5572
7452                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7454  11e9 7211525c      	bres	21084,#0
7455                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7455                     ; 1725                             | (uint8_t)TIM1_OCMode);
7457  11ed c65258        	ld	a,21080
7458  11f0 a48f          	and	a,#143
7459  11f2 1a02          	or	a,(OFST+2,sp)
7460  11f4 c75258        	ld	21080,a
7462  11f7 203a          	jra	L7572
7463  11f9               L5572:
7464                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7466  11f9 7b01          	ld	a,(OFST+1,sp)
7467  11fb a101          	cp	a,#1
7468  11fd 2610          	jrne	L1672
7469                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7471  11ff 7219525c      	bres	21084,#4
7472                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7472                     ; 1734                             | (uint8_t)TIM1_OCMode);
7474  1203 c65259        	ld	a,21081
7475  1206 a48f          	and	a,#143
7476  1208 1a02          	or	a,(OFST+2,sp)
7477  120a c75259        	ld	21081,a
7479  120d 2024          	jra	L7572
7480  120f               L1672:
7481                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7483  120f 7b01          	ld	a,(OFST+1,sp)
7484  1211 a102          	cp	a,#2
7485  1213 2610          	jrne	L5672
7486                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7488  1215 7211525d      	bres	21085,#0
7489                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7489                     ; 1743                             | (uint8_t)TIM1_OCMode);
7491  1219 c6525a        	ld	a,21082
7492  121c a48f          	and	a,#143
7493  121e 1a02          	or	a,(OFST+2,sp)
7494  1220 c7525a        	ld	21082,a
7496  1223 200e          	jra	L7572
7497  1225               L5672:
7498                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7500  1225 7219525d      	bres	21085,#4
7501                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7501                     ; 1752                             | (uint8_t)TIM1_OCMode);
7503  1229 c6525b        	ld	a,21083
7504  122c a48f          	and	a,#143
7505  122e 1a02          	or	a,(OFST+2,sp)
7506  1230 c7525b        	ld	21083,a
7507  1233               L7572:
7508                     ; 1754 }
7511  1233 85            	popw	x
7512  1234 81            	ret
7546                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7546                     ; 1763 {
7547                     	switch	.text
7548  1235               _TIM1_SetCounter:
7552                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7554  1235 9e            	ld	a,xh
7555  1236 c7525e        	ld	21086,a
7556                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7558  1239 9f            	ld	a,xl
7559  123a c7525f        	ld	21087,a
7560                     ; 1767 }
7563  123d 81            	ret
7597                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7597                     ; 1776 {
7598                     	switch	.text
7599  123e               _TIM1_SetAutoreload:
7603                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7605  123e 9e            	ld	a,xh
7606  123f c75262        	ld	21090,a
7607                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7609  1242 9f            	ld	a,xl
7610  1243 c75263        	ld	21091,a
7611                     ; 1780  }
7614  1246 81            	ret
7648                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7648                     ; 1789 {
7649                     	switch	.text
7650  1247               _TIM1_SetCompare1:
7654                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7656  1247 9e            	ld	a,xh
7657  1248 c75265        	ld	21093,a
7658                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7660  124b 9f            	ld	a,xl
7661  124c c75266        	ld	21094,a
7662                     ; 1793 }
7665  124f 81            	ret
7699                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7699                     ; 1802 {
7700                     	switch	.text
7701  1250               _TIM1_SetCompare2:
7705                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7707  1250 9e            	ld	a,xh
7708  1251 c75267        	ld	21095,a
7709                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7711  1254 9f            	ld	a,xl
7712  1255 c75268        	ld	21096,a
7713                     ; 1806 }
7716  1258 81            	ret
7750                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7750                     ; 1815 {
7751                     	switch	.text
7752  1259               _TIM1_SetCompare3:
7756                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7758  1259 9e            	ld	a,xh
7759  125a c75269        	ld	21097,a
7760                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7762  125d 9f            	ld	a,xl
7763  125e c7526a        	ld	21098,a
7764                     ; 1819 }
7767  1261 81            	ret
7801                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7801                     ; 1828 {
7802                     	switch	.text
7803  1262               _TIM1_SetCompare4:
7807                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7809  1262 9e            	ld	a,xh
7810  1263 c7526b        	ld	21099,a
7811                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7813  1266 9f            	ld	a,xl
7814  1267 c7526c        	ld	21100,a
7815                     ; 1832 }
7818  126a 81            	ret
7855                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7855                     ; 1845 {
7856                     	switch	.text
7857  126b               _TIM1_SetIC1Prescaler:
7859  126b 88            	push	a
7860       00000000      OFST:	set	0
7863                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7865  126c 4d            	tnz	a
7866  126d 270c          	jreq	L2521
7867  126f a104          	cp	a,#4
7868  1271 2708          	jreq	L2521
7869  1273 a108          	cp	a,#8
7870  1275 2704          	jreq	L2521
7871  1277 a10c          	cp	a,#12
7872  1279 2603          	jrne	L0521
7873  127b               L2521:
7874  127b 4f            	clr	a
7875  127c 2010          	jra	L4521
7876  127e               L0521:
7877  127e ae0737        	ldw	x,#1847
7878  1281 89            	pushw	x
7879  1282 ae0000        	ldw	x,#0
7880  1285 89            	pushw	x
7881  1286 ae0000        	ldw	x,#L101
7882  1289 cd0000        	call	_assert_failed
7884  128c 5b04          	addw	sp,#4
7885  128e               L4521:
7886                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7886                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7888  128e c65258        	ld	a,21080
7889  1291 a4f3          	and	a,#243
7890  1293 1a01          	or	a,(OFST+1,sp)
7891  1295 c75258        	ld	21080,a
7892                     ; 1852 }
7895  1298 84            	pop	a
7896  1299 81            	ret
7933                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7933                     ; 1865 {
7934                     	switch	.text
7935  129a               _TIM1_SetIC2Prescaler:
7937  129a 88            	push	a
7938       00000000      OFST:	set	0
7941                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7943  129b 4d            	tnz	a
7944  129c 270c          	jreq	L2621
7945  129e a104          	cp	a,#4
7946  12a0 2708          	jreq	L2621
7947  12a2 a108          	cp	a,#8
7948  12a4 2704          	jreq	L2621
7949  12a6 a10c          	cp	a,#12
7950  12a8 2603          	jrne	L0621
7951  12aa               L2621:
7952  12aa 4f            	clr	a
7953  12ab 2010          	jra	L4621
7954  12ad               L0621:
7955  12ad ae074c        	ldw	x,#1868
7956  12b0 89            	pushw	x
7957  12b1 ae0000        	ldw	x,#0
7958  12b4 89            	pushw	x
7959  12b5 ae0000        	ldw	x,#L101
7960  12b8 cd0000        	call	_assert_failed
7962  12bb 5b04          	addw	sp,#4
7963  12bd               L4621:
7964                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7964                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7966  12bd c65259        	ld	a,21081
7967  12c0 a4f3          	and	a,#243
7968  12c2 1a01          	or	a,(OFST+1,sp)
7969  12c4 c75259        	ld	21081,a
7970                     ; 1873 }
7973  12c7 84            	pop	a
7974  12c8 81            	ret
8011                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
8011                     ; 1886 {
8012                     	switch	.text
8013  12c9               _TIM1_SetIC3Prescaler:
8015  12c9 88            	push	a
8016       00000000      OFST:	set	0
8019                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
8021  12ca 4d            	tnz	a
8022  12cb 270c          	jreq	L2721
8023  12cd a104          	cp	a,#4
8024  12cf 2708          	jreq	L2721
8025  12d1 a108          	cp	a,#8
8026  12d3 2704          	jreq	L2721
8027  12d5 a10c          	cp	a,#12
8028  12d7 2603          	jrne	L0721
8029  12d9               L2721:
8030  12d9 4f            	clr	a
8031  12da 2010          	jra	L4721
8032  12dc               L0721:
8033  12dc ae0761        	ldw	x,#1889
8034  12df 89            	pushw	x
8035  12e0 ae0000        	ldw	x,#0
8036  12e3 89            	pushw	x
8037  12e4 ae0000        	ldw	x,#L101
8038  12e7 cd0000        	call	_assert_failed
8040  12ea 5b04          	addw	sp,#4
8041  12ec               L4721:
8042                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8042                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8044  12ec c6525a        	ld	a,21082
8045  12ef a4f3          	and	a,#243
8046  12f1 1a01          	or	a,(OFST+1,sp)
8047  12f3 c7525a        	ld	21082,a
8048                     ; 1894 }
8051  12f6 84            	pop	a
8052  12f7 81            	ret
8089                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8089                     ; 1907 {
8090                     	switch	.text
8091  12f8               _TIM1_SetIC4Prescaler:
8093  12f8 88            	push	a
8094       00000000      OFST:	set	0
8097                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8099  12f9 4d            	tnz	a
8100  12fa 270c          	jreq	L2031
8101  12fc a104          	cp	a,#4
8102  12fe 2708          	jreq	L2031
8103  1300 a108          	cp	a,#8
8104  1302 2704          	jreq	L2031
8105  1304 a10c          	cp	a,#12
8106  1306 2603          	jrne	L0031
8107  1308               L2031:
8108  1308 4f            	clr	a
8109  1309 2010          	jra	L4031
8110  130b               L0031:
8111  130b ae0776        	ldw	x,#1910
8112  130e 89            	pushw	x
8113  130f ae0000        	ldw	x,#0
8114  1312 89            	pushw	x
8115  1313 ae0000        	ldw	x,#L101
8116  1316 cd0000        	call	_assert_failed
8118  1319 5b04          	addw	sp,#4
8119  131b               L4031:
8120                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8120                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8122  131b c6525b        	ld	a,21083
8123  131e a4f3          	and	a,#243
8124  1320 1a01          	or	a,(OFST+1,sp)
8125  1322 c7525b        	ld	21083,a
8126                     ; 1915 }
8129  1325 84            	pop	a
8130  1326 81            	ret
8182                     ; 1922 uint16_t TIM1_GetCapture1(void)
8182                     ; 1923 {
8183                     	switch	.text
8184  1327               _TIM1_GetCapture1:
8186  1327 5204          	subw	sp,#4
8187       00000004      OFST:	set	4
8190                     ; 1926   uint16_t tmpccr1 = 0;
8192                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8196                     ; 1929   tmpccr1h = TIM1->CCR1H;
8198  1329 c65265        	ld	a,21093
8199  132c 6b02          	ld	(OFST-2,sp),a
8201                     ; 1930   tmpccr1l = TIM1->CCR1L;
8203  132e c65266        	ld	a,21094
8204  1331 6b01          	ld	(OFST-3,sp),a
8206                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8208  1333 7b01          	ld	a,(OFST-3,sp)
8209  1335 5f            	clrw	x
8210  1336 97            	ld	xl,a
8211  1337 1f03          	ldw	(OFST-1,sp),x
8213                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8215  1339 7b02          	ld	a,(OFST-2,sp)
8216  133b 5f            	clrw	x
8217  133c 97            	ld	xl,a
8218  133d 4f            	clr	a
8219  133e 02            	rlwa	x,a
8220  133f 01            	rrwa	x,a
8221  1340 1a04          	or	a,(OFST+0,sp)
8222  1342 01            	rrwa	x,a
8223  1343 1a03          	or	a,(OFST-1,sp)
8224  1345 01            	rrwa	x,a
8225  1346 1f03          	ldw	(OFST-1,sp),x
8227                     ; 1935   return (uint16_t)tmpccr1;
8229  1348 1e03          	ldw	x,(OFST-1,sp)
8232  134a 5b04          	addw	sp,#4
8233  134c 81            	ret
8285                     ; 1943 uint16_t TIM1_GetCapture2(void)
8285                     ; 1944 {
8286                     	switch	.text
8287  134d               _TIM1_GetCapture2:
8289  134d 5204          	subw	sp,#4
8290       00000004      OFST:	set	4
8293                     ; 1947   uint16_t tmpccr2 = 0;
8295                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8299                     ; 1950   tmpccr2h = TIM1->CCR2H;
8301  134f c65267        	ld	a,21095
8302  1352 6b02          	ld	(OFST-2,sp),a
8304                     ; 1951   tmpccr2l = TIM1->CCR2L;
8306  1354 c65268        	ld	a,21096
8307  1357 6b01          	ld	(OFST-3,sp),a
8309                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8311  1359 7b01          	ld	a,(OFST-3,sp)
8312  135b 5f            	clrw	x
8313  135c 97            	ld	xl,a
8314  135d 1f03          	ldw	(OFST-1,sp),x
8316                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8318  135f 7b02          	ld	a,(OFST-2,sp)
8319  1361 5f            	clrw	x
8320  1362 97            	ld	xl,a
8321  1363 4f            	clr	a
8322  1364 02            	rlwa	x,a
8323  1365 01            	rrwa	x,a
8324  1366 1a04          	or	a,(OFST+0,sp)
8325  1368 01            	rrwa	x,a
8326  1369 1a03          	or	a,(OFST-1,sp)
8327  136b 01            	rrwa	x,a
8328  136c 1f03          	ldw	(OFST-1,sp),x
8330                     ; 1956   return (uint16_t)tmpccr2;
8332  136e 1e03          	ldw	x,(OFST-1,sp)
8335  1370 5b04          	addw	sp,#4
8336  1372 81            	ret
8388                     ; 1964 uint16_t TIM1_GetCapture3(void)
8388                     ; 1965 {
8389                     	switch	.text
8390  1373               _TIM1_GetCapture3:
8392  1373 5204          	subw	sp,#4
8393       00000004      OFST:	set	4
8396                     ; 1967   uint16_t tmpccr3 = 0;
8398                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8402                     ; 1970   tmpccr3h = TIM1->CCR3H;
8404  1375 c65269        	ld	a,21097
8405  1378 6b02          	ld	(OFST-2,sp),a
8407                     ; 1971   tmpccr3l = TIM1->CCR3L;
8409  137a c6526a        	ld	a,21098
8410  137d 6b01          	ld	(OFST-3,sp),a
8412                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8414  137f 7b01          	ld	a,(OFST-3,sp)
8415  1381 5f            	clrw	x
8416  1382 97            	ld	xl,a
8417  1383 1f03          	ldw	(OFST-1,sp),x
8419                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8421  1385 7b02          	ld	a,(OFST-2,sp)
8422  1387 5f            	clrw	x
8423  1388 97            	ld	xl,a
8424  1389 4f            	clr	a
8425  138a 02            	rlwa	x,a
8426  138b 01            	rrwa	x,a
8427  138c 1a04          	or	a,(OFST+0,sp)
8428  138e 01            	rrwa	x,a
8429  138f 1a03          	or	a,(OFST-1,sp)
8430  1391 01            	rrwa	x,a
8431  1392 1f03          	ldw	(OFST-1,sp),x
8433                     ; 1976   return (uint16_t)tmpccr3;
8435  1394 1e03          	ldw	x,(OFST-1,sp)
8438  1396 5b04          	addw	sp,#4
8439  1398 81            	ret
8491                     ; 1984 uint16_t TIM1_GetCapture4(void)
8491                     ; 1985 {
8492                     	switch	.text
8493  1399               _TIM1_GetCapture4:
8495  1399 5204          	subw	sp,#4
8496       00000004      OFST:	set	4
8499                     ; 1987   uint16_t tmpccr4 = 0;
8501                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8505                     ; 1990   tmpccr4h = TIM1->CCR4H;
8507  139b c6526b        	ld	a,21099
8508  139e 6b02          	ld	(OFST-2,sp),a
8510                     ; 1991   tmpccr4l = TIM1->CCR4L;
8512  13a0 c6526c        	ld	a,21100
8513  13a3 6b01          	ld	(OFST-3,sp),a
8515                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8517  13a5 7b01          	ld	a,(OFST-3,sp)
8518  13a7 5f            	clrw	x
8519  13a8 97            	ld	xl,a
8520  13a9 1f03          	ldw	(OFST-1,sp),x
8522                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8524  13ab 7b02          	ld	a,(OFST-2,sp)
8525  13ad 5f            	clrw	x
8526  13ae 97            	ld	xl,a
8527  13af 4f            	clr	a
8528  13b0 02            	rlwa	x,a
8529  13b1 01            	rrwa	x,a
8530  13b2 1a04          	or	a,(OFST+0,sp)
8531  13b4 01            	rrwa	x,a
8532  13b5 1a03          	or	a,(OFST-1,sp)
8533  13b7 01            	rrwa	x,a
8534  13b8 1f03          	ldw	(OFST-1,sp),x
8536                     ; 1996   return (uint16_t)tmpccr4;
8538  13ba 1e03          	ldw	x,(OFST-1,sp)
8541  13bc 5b04          	addw	sp,#4
8542  13be 81            	ret
8576                     ; 2004 uint16_t TIM1_GetCounter(void)
8576                     ; 2005 {
8577                     	switch	.text
8578  13bf               _TIM1_GetCounter:
8580  13bf 89            	pushw	x
8581       00000002      OFST:	set	2
8584                     ; 2006   uint16_t tmpcntr = 0;
8586                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8588  13c0 c6525e        	ld	a,21086
8589  13c3 5f            	clrw	x
8590  13c4 97            	ld	xl,a
8591  13c5 4f            	clr	a
8592  13c6 02            	rlwa	x,a
8593  13c7 1f01          	ldw	(OFST-1,sp),x
8595                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8597  13c9 c6525f        	ld	a,21087
8598  13cc 5f            	clrw	x
8599  13cd 97            	ld	xl,a
8600  13ce 01            	rrwa	x,a
8601  13cf 1a02          	or	a,(OFST+0,sp)
8602  13d1 01            	rrwa	x,a
8603  13d2 1a01          	or	a,(OFST-1,sp)
8604  13d4 01            	rrwa	x,a
8607  13d5 5b02          	addw	sp,#2
8608  13d7 81            	ret
8642                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8642                     ; 2020 {
8643                     	switch	.text
8644  13d8               _TIM1_GetPrescaler:
8646  13d8 89            	pushw	x
8647       00000002      OFST:	set	2
8650                     ; 2021   uint16_t temp = 0;
8652                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8654  13d9 c65260        	ld	a,21088
8655  13dc 5f            	clrw	x
8656  13dd 97            	ld	xl,a
8657  13de 4f            	clr	a
8658  13df 02            	rlwa	x,a
8659  13e0 1f01          	ldw	(OFST-1,sp),x
8661                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8663  13e2 c65261        	ld	a,21089
8664  13e5 5f            	clrw	x
8665  13e6 97            	ld	xl,a
8666  13e7 01            	rrwa	x,a
8667  13e8 1a02          	or	a,(OFST+0,sp)
8668  13ea 01            	rrwa	x,a
8669  13eb 1a01          	or	a,(OFST-1,sp)
8670  13ed 01            	rrwa	x,a
8673  13ee 5b02          	addw	sp,#2
8674  13f0 81            	ret
8849                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8849                     ; 2048 {
8850                     	switch	.text
8851  13f1               _TIM1_GetFlagStatus:
8853  13f1 89            	pushw	x
8854  13f2 89            	pushw	x
8855       00000002      OFST:	set	2
8858                     ; 2049   FlagStatus bitstatus = RESET;
8860                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8864                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8866  13f3 a30001        	cpw	x,#1
8867  13f6 2737          	jreq	L6231
8868  13f8 a30002        	cpw	x,#2
8869  13fb 2732          	jreq	L6231
8870  13fd a30004        	cpw	x,#4
8871  1400 272d          	jreq	L6231
8872  1402 a30008        	cpw	x,#8
8873  1405 2728          	jreq	L6231
8874  1407 a30010        	cpw	x,#16
8875  140a 2723          	jreq	L6231
8876  140c a30020        	cpw	x,#32
8877  140f 271e          	jreq	L6231
8878  1411 a30040        	cpw	x,#64
8879  1414 2719          	jreq	L6231
8880  1416 a30080        	cpw	x,#128
8881  1419 2714          	jreq	L6231
8882  141b a30200        	cpw	x,#512
8883  141e 270f          	jreq	L6231
8884  1420 a30400        	cpw	x,#1024
8885  1423 270a          	jreq	L6231
8886  1425 a30800        	cpw	x,#2048
8887  1428 2705          	jreq	L6231
8888  142a a31000        	cpw	x,#4096
8889  142d 2603          	jrne	L4231
8890  142f               L6231:
8891  142f 4f            	clr	a
8892  1430 2010          	jra	L0331
8893  1432               L4231:
8894  1432 ae0805        	ldw	x,#2053
8895  1435 89            	pushw	x
8896  1436 ae0000        	ldw	x,#0
8897  1439 89            	pushw	x
8898  143a ae0000        	ldw	x,#L101
8899  143d cd0000        	call	_assert_failed
8901  1440 5b04          	addw	sp,#4
8902  1442               L0331:
8903                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8905  1442 c65255        	ld	a,21077
8906  1445 1404          	and	a,(OFST+2,sp)
8907  1447 6b01          	ld	(OFST-1,sp),a
8909                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8911  1449 7b03          	ld	a,(OFST+1,sp)
8912  144b 6b02          	ld	(OFST+0,sp),a
8914                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8916  144d c65256        	ld	a,21078
8917  1450 1402          	and	a,(OFST+0,sp)
8918  1452 1a01          	or	a,(OFST-1,sp)
8919  1454 2706          	jreq	L7643
8920                     ; 2060     bitstatus = SET;
8922  1456 a601          	ld	a,#1
8923  1458 6b02          	ld	(OFST+0,sp),a
8926  145a 2002          	jra	L1743
8927  145c               L7643:
8928                     ; 2064     bitstatus = RESET;
8930  145c 0f02          	clr	(OFST+0,sp)
8932  145e               L1743:
8933                     ; 2066   return (FlagStatus)(bitstatus);
8935  145e 7b02          	ld	a,(OFST+0,sp)
8938  1460 5b04          	addw	sp,#4
8939  1462 81            	ret
8975                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8975                     ; 2088 {
8976                     	switch	.text
8977  1463               _TIM1_ClearFlag:
8979  1463 89            	pushw	x
8980       00000000      OFST:	set	0
8983                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8985  1464 01            	rrwa	x,a
8986  1465 9f            	ld	a,xl
8987  1466 a4e1          	and	a,#225
8988  1468 97            	ld	xl,a
8989  1469 4f            	clr	a
8990  146a 02            	rlwa	x,a
8991  146b 5d            	tnzw	x
8992  146c 2607          	jrne	L4331
8993  146e 1e01          	ldw	x,(OFST+1,sp)
8994  1470 2703          	jreq	L4331
8995  1472 4f            	clr	a
8996  1473 2010          	jra	L6331
8997  1475               L4331:
8998  1475 ae082a        	ldw	x,#2090
8999  1478 89            	pushw	x
9000  1479 ae0000        	ldw	x,#0
9001  147c 89            	pushw	x
9002  147d ae0000        	ldw	x,#L101
9003  1480 cd0000        	call	_assert_failed
9005  1483 5b04          	addw	sp,#4
9006  1485               L6331:
9007                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
9009  1485 7b02          	ld	a,(OFST+2,sp)
9010  1487 43            	cpl	a
9011  1488 c75255        	ld	21077,a
9012                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
9012                     ; 2095                         (uint8_t)0x1E);
9014  148b 7b01          	ld	a,(OFST+1,sp)
9015  148d 43            	cpl	a
9016  148e a41e          	and	a,#30
9017  1490 c75256        	ld	21078,a
9018                     ; 2096 }
9021  1493 85            	popw	x
9022  1494 81            	ret
9087                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9087                     ; 2113 {
9088                     	switch	.text
9089  1495               _TIM1_GetITStatus:
9091  1495 88            	push	a
9092  1496 89            	pushw	x
9093       00000002      OFST:	set	2
9096                     ; 2114   ITStatus bitstatus = RESET;
9098                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9102                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9104  1497 a101          	cp	a,#1
9105  1499 271c          	jreq	L4431
9106  149b a102          	cp	a,#2
9107  149d 2718          	jreq	L4431
9108  149f a104          	cp	a,#4
9109  14a1 2714          	jreq	L4431
9110  14a3 a108          	cp	a,#8
9111  14a5 2710          	jreq	L4431
9112  14a7 a110          	cp	a,#16
9113  14a9 270c          	jreq	L4431
9114  14ab a120          	cp	a,#32
9115  14ad 2708          	jreq	L4431
9116  14af a140          	cp	a,#64
9117  14b1 2704          	jreq	L4431
9118  14b3 a180          	cp	a,#128
9119  14b5 2603          	jrne	L2431
9120  14b7               L4431:
9121  14b7 4f            	clr	a
9122  14b8 2010          	jra	L6431
9123  14ba               L2431:
9124  14ba ae0846        	ldw	x,#2118
9125  14bd 89            	pushw	x
9126  14be ae0000        	ldw	x,#0
9127  14c1 89            	pushw	x
9128  14c2 ae0000        	ldw	x,#L101
9129  14c5 cd0000        	call	_assert_failed
9131  14c8 5b04          	addw	sp,#4
9132  14ca               L6431:
9133                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9135  14ca c65255        	ld	a,21077
9136  14cd 1403          	and	a,(OFST+1,sp)
9137  14cf 6b01          	ld	(OFST-1,sp),a
9139                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9141  14d1 c65254        	ld	a,21076
9142  14d4 1403          	and	a,(OFST+1,sp)
9143  14d6 6b02          	ld	(OFST+0,sp),a
9145                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9147  14d8 0d01          	tnz	(OFST-1,sp)
9148  14da 270a          	jreq	L3453
9150  14dc 0d02          	tnz	(OFST+0,sp)
9151  14de 2706          	jreq	L3453
9152                     ; 2126     bitstatus = SET;
9154  14e0 a601          	ld	a,#1
9155  14e2 6b02          	ld	(OFST+0,sp),a
9158  14e4 2002          	jra	L5453
9159  14e6               L3453:
9160                     ; 2130     bitstatus = RESET;
9162  14e6 0f02          	clr	(OFST+0,sp)
9164  14e8               L5453:
9165                     ; 2132   return (ITStatus)(bitstatus);
9167  14e8 7b02          	ld	a,(OFST+0,sp)
9170  14ea 5b03          	addw	sp,#3
9171  14ec 81            	ret
9208                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9208                     ; 2150 {
9209                     	switch	.text
9210  14ed               _TIM1_ClearITPendingBit:
9212  14ed 88            	push	a
9213       00000000      OFST:	set	0
9216                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9218  14ee 4d            	tnz	a
9219  14ef 2703          	jreq	L2531
9220  14f1 4f            	clr	a
9221  14f2 2010          	jra	L4531
9222  14f4               L2531:
9223  14f4 ae0868        	ldw	x,#2152
9224  14f7 89            	pushw	x
9225  14f8 ae0000        	ldw	x,#0
9226  14fb 89            	pushw	x
9227  14fc ae0000        	ldw	x,#L101
9228  14ff cd0000        	call	_assert_failed
9230  1502 5b04          	addw	sp,#4
9231  1504               L4531:
9232                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9234  1504 7b01          	ld	a,(OFST+1,sp)
9235  1506 43            	cpl	a
9236  1507 c75255        	ld	21077,a
9237                     ; 2156 }
9240  150a 84            	pop	a
9241  150b 81            	ret
9293                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9293                     ; 2175                        uint8_t TIM1_ICSelection,
9293                     ; 2176                        uint8_t TIM1_ICFilter)
9293                     ; 2177 {
9294                     	switch	.text
9295  150c               L3_TI1_Config:
9297  150c 89            	pushw	x
9298  150d 88            	push	a
9299       00000001      OFST:	set	1
9302                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9304  150e 7211525c      	bres	21084,#0
9305                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9305                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9307  1512 7b06          	ld	a,(OFST+5,sp)
9308  1514 97            	ld	xl,a
9309  1515 a610          	ld	a,#16
9310  1517 42            	mul	x,a
9311  1518 9f            	ld	a,xl
9312  1519 1a03          	or	a,(OFST+2,sp)
9313  151b 6b01          	ld	(OFST+0,sp),a
9315  151d c65258        	ld	a,21080
9316  1520 a40c          	and	a,#12
9317  1522 1a01          	or	a,(OFST+0,sp)
9318  1524 c75258        	ld	21080,a
9319                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9321  1527 0d02          	tnz	(OFST+1,sp)
9322  1529 2706          	jreq	L3163
9323                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9325  152b 7212525c      	bset	21084,#1
9327  152f 2004          	jra	L5163
9328  1531               L3163:
9329                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9331  1531 7213525c      	bres	21084,#1
9332  1535               L5163:
9333                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9335  1535 7210525c      	bset	21084,#0
9336                     ; 2197 }
9339  1539 5b03          	addw	sp,#3
9340  153b 81            	ret
9392                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9392                     ; 2216                        uint8_t TIM1_ICSelection,
9392                     ; 2217                        uint8_t TIM1_ICFilter)
9392                     ; 2218 {
9393                     	switch	.text
9394  153c               L5_TI2_Config:
9396  153c 89            	pushw	x
9397  153d 88            	push	a
9398       00000001      OFST:	set	1
9401                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9403  153e 7219525c      	bres	21084,#4
9404                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9404                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9406  1542 7b06          	ld	a,(OFST+5,sp)
9407  1544 97            	ld	xl,a
9408  1545 a610          	ld	a,#16
9409  1547 42            	mul	x,a
9410  1548 9f            	ld	a,xl
9411  1549 1a03          	or	a,(OFST+2,sp)
9412  154b 6b01          	ld	(OFST+0,sp),a
9414  154d c65259        	ld	a,21081
9415  1550 a40c          	and	a,#12
9416  1552 1a01          	or	a,(OFST+0,sp)
9417  1554 c75259        	ld	21081,a
9418                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9420  1557 0d02          	tnz	(OFST+1,sp)
9421  1559 2706          	jreq	L5463
9422                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9424  155b 721a525c      	bset	21084,#5
9426  155f 2004          	jra	L7463
9427  1561               L5463:
9428                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9430  1561 721b525c      	bres	21084,#5
9431  1565               L7463:
9432                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9434  1565 7218525c      	bset	21084,#4
9435                     ; 2236 }
9438  1569 5b03          	addw	sp,#3
9439  156b 81            	ret
9491                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9491                     ; 2255                        uint8_t TIM1_ICSelection,
9491                     ; 2256                        uint8_t TIM1_ICFilter)
9491                     ; 2257 {
9492                     	switch	.text
9493  156c               L7_TI3_Config:
9495  156c 89            	pushw	x
9496  156d 88            	push	a
9497       00000001      OFST:	set	1
9500                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9502  156e 7211525d      	bres	21085,#0
9503                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9503                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9505  1572 7b06          	ld	a,(OFST+5,sp)
9506  1574 97            	ld	xl,a
9507  1575 a610          	ld	a,#16
9508  1577 42            	mul	x,a
9509  1578 9f            	ld	a,xl
9510  1579 1a03          	or	a,(OFST+2,sp)
9511  157b 6b01          	ld	(OFST+0,sp),a
9513  157d c6525a        	ld	a,21082
9514  1580 a40c          	and	a,#12
9515  1582 1a01          	or	a,(OFST+0,sp)
9516  1584 c7525a        	ld	21082,a
9517                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9519  1587 0d02          	tnz	(OFST+1,sp)
9520  1589 2706          	jreq	L7763
9521                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9523  158b 7212525d      	bset	21085,#1
9525  158f 2004          	jra	L1073
9526  1591               L7763:
9527                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9529  1591 7213525d      	bres	21085,#1
9530  1595               L1073:
9531                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9533  1595 7210525d      	bset	21085,#0
9534                     ; 2276 }
9537  1599 5b03          	addw	sp,#3
9538  159b 81            	ret
9590                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9590                     ; 2295                        uint8_t TIM1_ICSelection,
9590                     ; 2296                        uint8_t TIM1_ICFilter)
9590                     ; 2297 {
9591                     	switch	.text
9592  159c               L11_TI4_Config:
9594  159c 89            	pushw	x
9595  159d 88            	push	a
9596       00000001      OFST:	set	1
9599                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9601  159e 7219525d      	bres	21085,#4
9602                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9602                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9604  15a2 7b06          	ld	a,(OFST+5,sp)
9605  15a4 97            	ld	xl,a
9606  15a5 a610          	ld	a,#16
9607  15a7 42            	mul	x,a
9608  15a8 9f            	ld	a,xl
9609  15a9 1a03          	or	a,(OFST+2,sp)
9610  15ab 6b01          	ld	(OFST+0,sp),a
9612  15ad c6525b        	ld	a,21083
9613  15b0 a40c          	and	a,#12
9614  15b2 1a01          	or	a,(OFST+0,sp)
9615  15b4 c7525b        	ld	21083,a
9616                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9618  15b7 0d02          	tnz	(OFST+1,sp)
9619  15b9 2706          	jreq	L1373
9620                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9622  15bb 721a525d      	bset	21085,#5
9624  15bf 2004          	jra	L3373
9625  15c1               L1373:
9626                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9628  15c1 721b525d      	bres	21085,#5
9629  15c5               L3373:
9630                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9632  15c5 7218525d      	bset	21085,#4
9633                     ; 2317 }
9636  15c9 5b03          	addw	sp,#3
9637  15cb 81            	ret
9650                     	xdef	_TIM1_ClearITPendingBit
9651                     	xdef	_TIM1_GetITStatus
9652                     	xdef	_TIM1_ClearFlag
9653                     	xdef	_TIM1_GetFlagStatus
9654                     	xdef	_TIM1_GetPrescaler
9655                     	xdef	_TIM1_GetCounter
9656                     	xdef	_TIM1_GetCapture4
9657                     	xdef	_TIM1_GetCapture3
9658                     	xdef	_TIM1_GetCapture2
9659                     	xdef	_TIM1_GetCapture1
9660                     	xdef	_TIM1_SetIC4Prescaler
9661                     	xdef	_TIM1_SetIC3Prescaler
9662                     	xdef	_TIM1_SetIC2Prescaler
9663                     	xdef	_TIM1_SetIC1Prescaler
9664                     	xdef	_TIM1_SetCompare4
9665                     	xdef	_TIM1_SetCompare3
9666                     	xdef	_TIM1_SetCompare2
9667                     	xdef	_TIM1_SetCompare1
9668                     	xdef	_TIM1_SetAutoreload
9669                     	xdef	_TIM1_SetCounter
9670                     	xdef	_TIM1_SelectOCxM
9671                     	xdef	_TIM1_CCxNCmd
9672                     	xdef	_TIM1_CCxCmd
9673                     	xdef	_TIM1_OC4PolarityConfig
9674                     	xdef	_TIM1_OC3NPolarityConfig
9675                     	xdef	_TIM1_OC3PolarityConfig
9676                     	xdef	_TIM1_OC2NPolarityConfig
9677                     	xdef	_TIM1_OC2PolarityConfig
9678                     	xdef	_TIM1_OC1NPolarityConfig
9679                     	xdef	_TIM1_OC1PolarityConfig
9680                     	xdef	_TIM1_GenerateEvent
9681                     	xdef	_TIM1_OC4FastConfig
9682                     	xdef	_TIM1_OC3FastConfig
9683                     	xdef	_TIM1_OC2FastConfig
9684                     	xdef	_TIM1_OC1FastConfig
9685                     	xdef	_TIM1_OC4PreloadConfig
9686                     	xdef	_TIM1_OC3PreloadConfig
9687                     	xdef	_TIM1_OC2PreloadConfig
9688                     	xdef	_TIM1_OC1PreloadConfig
9689                     	xdef	_TIM1_CCPreloadControl
9690                     	xdef	_TIM1_SelectCOM
9691                     	xdef	_TIM1_ARRPreloadConfig
9692                     	xdef	_TIM1_ForcedOC4Config
9693                     	xdef	_TIM1_ForcedOC3Config
9694                     	xdef	_TIM1_ForcedOC2Config
9695                     	xdef	_TIM1_ForcedOC1Config
9696                     	xdef	_TIM1_CounterModeConfig
9697                     	xdef	_TIM1_PrescalerConfig
9698                     	xdef	_TIM1_EncoderInterfaceConfig
9699                     	xdef	_TIM1_SelectMasterSlaveMode
9700                     	xdef	_TIM1_SelectSlaveMode
9701                     	xdef	_TIM1_SelectOutputTrigger
9702                     	xdef	_TIM1_SelectOnePulseMode
9703                     	xdef	_TIM1_SelectHallSensor
9704                     	xdef	_TIM1_UpdateRequestConfig
9705                     	xdef	_TIM1_UpdateDisableConfig
9706                     	xdef	_TIM1_SelectInputTrigger
9707                     	xdef	_TIM1_TIxExternalClockConfig
9708                     	xdef	_TIM1_ETRConfig
9709                     	xdef	_TIM1_ETRClockMode2Config
9710                     	xdef	_TIM1_ETRClockMode1Config
9711                     	xdef	_TIM1_InternalClockConfig
9712                     	xdef	_TIM1_ITConfig
9713                     	xdef	_TIM1_CtrlPWMOutputs
9714                     	xdef	_TIM1_Cmd
9715                     	xdef	_TIM1_PWMIConfig
9716                     	xdef	_TIM1_ICInit
9717                     	xdef	_TIM1_BDTRConfig
9718                     	xdef	_TIM1_OC4Init
9719                     	xdef	_TIM1_OC3Init
9720                     	xdef	_TIM1_OC2Init
9721                     	xdef	_TIM1_OC1Init
9722                     	xdef	_TIM1_TimeBaseInit
9723                     	xdef	_TIM1_DeInit
9724                     	xref	_assert_failed
9725                     .const:	section	.text
9726  0000               L101:
9727  0000 7372635c7374  	dc.b	"src\stm8s_tim1.c",0
9747                     	end
