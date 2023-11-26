   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 53 void UART1_DeInit(void)
  42                     ; 54 {
  44                     	switch	.text
  45  0000               _UART1_DeInit:
  49                     ; 57   (void)UART1->SR;
  51  0000 c65230        	ld	a,21040
  52                     ; 58   (void)UART1->DR;
  54  0003 c65231        	ld	a,21041
  55                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  57  0006 725f5233      	clr	21043
  58                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  60  000a 725f5232      	clr	21042
  61                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  63  000e 725f5234      	clr	21044
  64                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  66  0012 725f5235      	clr	21045
  67                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  69  0016 725f5236      	clr	21046
  70                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  72  001a 725f5237      	clr	21047
  73                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  75  001e 725f5238      	clr	21048
  76                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  78  0022 725f5239      	clr	21049
  79                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  81  0026 725f523a      	clr	21050
  82                     ; 71 }
  85  002a 81            	ret
 389                     .const:	section	.text
 390  0000               L21:
 391  0000 00098969      	dc.l	625001
 392  0004               L25:
 393  0004 00000064      	dc.l	100
 394                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 394                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 394                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 394                     ; 93 {
 395                     	switch	.text
 396  002b               _UART1_Init:
 398  002b 520c          	subw	sp,#12
 399       0000000c      OFST:	set	12
 402                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 406                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 408  002d 96            	ldw	x,sp
 409  002e 1c000f        	addw	x,#OFST+3
 410  0031 cd0000        	call	c_ltor
 412  0034 ae0000        	ldw	x,#L21
 413  0037 cd0000        	call	c_lcmp
 415  003a 2403          	jruge	L01
 416  003c 4f            	clr	a
 417  003d 2010          	jra	L41
 418  003f               L01:
 419  003f ae0061        	ldw	x,#97
 420  0042 89            	pushw	x
 421  0043 ae0000        	ldw	x,#0
 422  0046 89            	pushw	x
 423  0047 ae0008        	ldw	x,#L371
 424  004a cd0000        	call	_assert_failed
 426  004d 5b04          	addw	sp,#4
 427  004f               L41:
 428                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 430  004f 0d13          	tnz	(OFST+7,sp)
 431  0051 2706          	jreq	L02
 432  0053 7b13          	ld	a,(OFST+7,sp)
 433  0055 a110          	cp	a,#16
 434  0057 2603          	jrne	L61
 435  0059               L02:
 436  0059 4f            	clr	a
 437  005a 2010          	jra	L22
 438  005c               L61:
 439  005c ae0062        	ldw	x,#98
 440  005f 89            	pushw	x
 441  0060 ae0000        	ldw	x,#0
 442  0063 89            	pushw	x
 443  0064 ae0008        	ldw	x,#L371
 444  0067 cd0000        	call	_assert_failed
 446  006a 5b04          	addw	sp,#4
 447  006c               L22:
 448                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 450  006c 0d14          	tnz	(OFST+8,sp)
 451  006e 2712          	jreq	L62
 452  0070 7b14          	ld	a,(OFST+8,sp)
 453  0072 a110          	cp	a,#16
 454  0074 270c          	jreq	L62
 455  0076 7b14          	ld	a,(OFST+8,sp)
 456  0078 a120          	cp	a,#32
 457  007a 2706          	jreq	L62
 458  007c 7b14          	ld	a,(OFST+8,sp)
 459  007e a130          	cp	a,#48
 460  0080 2603          	jrne	L42
 461  0082               L62:
 462  0082 4f            	clr	a
 463  0083 2010          	jra	L03
 464  0085               L42:
 465  0085 ae0063        	ldw	x,#99
 466  0088 89            	pushw	x
 467  0089 ae0000        	ldw	x,#0
 468  008c 89            	pushw	x
 469  008d ae0008        	ldw	x,#L371
 470  0090 cd0000        	call	_assert_failed
 472  0093 5b04          	addw	sp,#4
 473  0095               L03:
 474                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 476  0095 0d15          	tnz	(OFST+9,sp)
 477  0097 270c          	jreq	L43
 478  0099 7b15          	ld	a,(OFST+9,sp)
 479  009b a104          	cp	a,#4
 480  009d 2706          	jreq	L43
 481  009f 7b15          	ld	a,(OFST+9,sp)
 482  00a1 a106          	cp	a,#6
 483  00a3 2603          	jrne	L23
 484  00a5               L43:
 485  00a5 4f            	clr	a
 486  00a6 2010          	jra	L63
 487  00a8               L23:
 488  00a8 ae0064        	ldw	x,#100
 489  00ab 89            	pushw	x
 490  00ac ae0000        	ldw	x,#0
 491  00af 89            	pushw	x
 492  00b0 ae0008        	ldw	x,#L371
 493  00b3 cd0000        	call	_assert_failed
 495  00b6 5b04          	addw	sp,#4
 496  00b8               L63:
 497                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 499  00b8 7b17          	ld	a,(OFST+11,sp)
 500  00ba a108          	cp	a,#8
 501  00bc 2730          	jreq	L24
 502  00be 7b17          	ld	a,(OFST+11,sp)
 503  00c0 a140          	cp	a,#64
 504  00c2 272a          	jreq	L24
 505  00c4 7b17          	ld	a,(OFST+11,sp)
 506  00c6 a104          	cp	a,#4
 507  00c8 2724          	jreq	L24
 508  00ca 7b17          	ld	a,(OFST+11,sp)
 509  00cc a180          	cp	a,#128
 510  00ce 271e          	jreq	L24
 511  00d0 7b17          	ld	a,(OFST+11,sp)
 512  00d2 a10c          	cp	a,#12
 513  00d4 2718          	jreq	L24
 514  00d6 7b17          	ld	a,(OFST+11,sp)
 515  00d8 a10c          	cp	a,#12
 516  00da 2712          	jreq	L24
 517  00dc 7b17          	ld	a,(OFST+11,sp)
 518  00de a144          	cp	a,#68
 519  00e0 270c          	jreq	L24
 520  00e2 7b17          	ld	a,(OFST+11,sp)
 521  00e4 a1c0          	cp	a,#192
 522  00e6 2706          	jreq	L24
 523  00e8 7b17          	ld	a,(OFST+11,sp)
 524  00ea a188          	cp	a,#136
 525  00ec 2603          	jrne	L04
 526  00ee               L24:
 527  00ee 4f            	clr	a
 528  00ef 2010          	jra	L44
 529  00f1               L04:
 530  00f1 ae0065        	ldw	x,#101
 531  00f4 89            	pushw	x
 532  00f5 ae0000        	ldw	x,#0
 533  00f8 89            	pushw	x
 534  00f9 ae0008        	ldw	x,#L371
 535  00fc cd0000        	call	_assert_failed
 537  00ff 5b04          	addw	sp,#4
 538  0101               L44:
 539                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 541  0101 7b16          	ld	a,(OFST+10,sp)
 542  0103 a488          	and	a,#136
 543  0105 a188          	cp	a,#136
 544  0107 271b          	jreq	L64
 545  0109 7b16          	ld	a,(OFST+10,sp)
 546  010b a444          	and	a,#68
 547  010d a144          	cp	a,#68
 548  010f 2713          	jreq	L64
 549  0111 7b16          	ld	a,(OFST+10,sp)
 550  0113 a422          	and	a,#34
 551  0115 a122          	cp	a,#34
 552  0117 270b          	jreq	L64
 553  0119 7b16          	ld	a,(OFST+10,sp)
 554  011b a411          	and	a,#17
 555  011d a111          	cp	a,#17
 556  011f 2703          	jreq	L64
 557  0121 4f            	clr	a
 558  0122 2010          	jra	L05
 559  0124               L64:
 560  0124 ae0066        	ldw	x,#102
 561  0127 89            	pushw	x
 562  0128 ae0000        	ldw	x,#0
 563  012b 89            	pushw	x
 564  012c ae0008        	ldw	x,#L371
 565  012f cd0000        	call	_assert_failed
 567  0132 5b04          	addw	sp,#4
 568  0134               L05:
 569                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 571  0134 72195234      	bres	21044,#4
 572                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 574  0138 c65234        	ld	a,21044
 575  013b 1a13          	or	a,(OFST+7,sp)
 576  013d c75234        	ld	21044,a
 577                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 579  0140 c65236        	ld	a,21046
 580  0143 a4cf          	and	a,#207
 581  0145 c75236        	ld	21046,a
 582                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 584  0148 c65236        	ld	a,21046
 585  014b 1a14          	or	a,(OFST+8,sp)
 586  014d c75236        	ld	21046,a
 587                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 589  0150 c65234        	ld	a,21044
 590  0153 a4f9          	and	a,#249
 591  0155 c75234        	ld	21044,a
 592                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 594  0158 c65234        	ld	a,21044
 595  015b 1a15          	or	a,(OFST+9,sp)
 596  015d c75234        	ld	21044,a
 597                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 599  0160 725f5232      	clr	21042
 600                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 602  0164 c65233        	ld	a,21043
 603  0167 a40f          	and	a,#15
 604  0169 c75233        	ld	21043,a
 605                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 607  016c c65233        	ld	a,21043
 608  016f a4f0          	and	a,#240
 609  0171 c75233        	ld	21043,a
 610                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 612  0174 96            	ldw	x,sp
 613  0175 1c000f        	addw	x,#OFST+3
 614  0178 cd0000        	call	c_ltor
 616  017b a604          	ld	a,#4
 617  017d cd0000        	call	c_llsh
 619  0180 96            	ldw	x,sp
 620  0181 1c0001        	addw	x,#OFST-11
 621  0184 cd0000        	call	c_rtol
 624  0187 cd0000        	call	_CLK_GetClockFreq
 626  018a 96            	ldw	x,sp
 627  018b 1c0001        	addw	x,#OFST-11
 628  018e cd0000        	call	c_ludv
 630  0191 96            	ldw	x,sp
 631  0192 1c0009        	addw	x,#OFST-3
 632  0195 cd0000        	call	c_rtol
 635                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 637  0198 96            	ldw	x,sp
 638  0199 1c000f        	addw	x,#OFST+3
 639  019c cd0000        	call	c_ltor
 641  019f a604          	ld	a,#4
 642  01a1 cd0000        	call	c_llsh
 644  01a4 96            	ldw	x,sp
 645  01a5 1c0001        	addw	x,#OFST-11
 646  01a8 cd0000        	call	c_rtol
 649  01ab cd0000        	call	_CLK_GetClockFreq
 651  01ae a664          	ld	a,#100
 652  01b0 cd0000        	call	c_smul
 654  01b3 96            	ldw	x,sp
 655  01b4 1c0001        	addw	x,#OFST-11
 656  01b7 cd0000        	call	c_ludv
 658  01ba 96            	ldw	x,sp
 659  01bb 1c0005        	addw	x,#OFST-7
 660  01be cd0000        	call	c_rtol
 663                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 665  01c1 96            	ldw	x,sp
 666  01c2 1c0009        	addw	x,#OFST-3
 667  01c5 cd0000        	call	c_ltor
 669  01c8 a664          	ld	a,#100
 670  01ca cd0000        	call	c_smul
 672  01cd 96            	ldw	x,sp
 673  01ce 1c0001        	addw	x,#OFST-11
 674  01d1 cd0000        	call	c_rtol
 677  01d4 96            	ldw	x,sp
 678  01d5 1c0005        	addw	x,#OFST-7
 679  01d8 cd0000        	call	c_ltor
 681  01db 96            	ldw	x,sp
 682  01dc 1c0001        	addw	x,#OFST-11
 683  01df cd0000        	call	c_lsub
 685  01e2 a604          	ld	a,#4
 686  01e4 cd0000        	call	c_llsh
 688  01e7 ae0004        	ldw	x,#L25
 689  01ea cd0000        	call	c_ludv
 691  01ed b603          	ld	a,c_lreg+3
 692  01ef a40f          	and	a,#15
 693  01f1 ca5233        	or	a,21043
 694  01f4 c75233        	ld	21043,a
 695                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 697  01f7 1e0b          	ldw	x,(OFST-1,sp)
 698  01f9 54            	srlw	x
 699  01fa 54            	srlw	x
 700  01fb 54            	srlw	x
 701  01fc 54            	srlw	x
 702  01fd 01            	rrwa	x,a
 703  01fe a4f0          	and	a,#240
 704  0200 5f            	clrw	x
 705  0201 ca5233        	or	a,21043
 706  0204 c75233        	ld	21043,a
 707                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 709  0207 c65232        	ld	a,21042
 710  020a 1a0c          	or	a,(OFST+0,sp)
 711  020c c75232        	ld	21042,a
 712                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 714  020f c65235        	ld	a,21045
 715  0212 a4f3          	and	a,#243
 716  0214 c75235        	ld	21045,a
 717                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 719  0217 c65236        	ld	a,21046
 720  021a a4f8          	and	a,#248
 721  021c c75236        	ld	21046,a
 722                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 722                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 724  021f 7b16          	ld	a,(OFST+10,sp)
 725  0221 a407          	and	a,#7
 726  0223 ca5236        	or	a,21046
 727  0226 c75236        	ld	21046,a
 728                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 730  0229 7b17          	ld	a,(OFST+11,sp)
 731  022b a504          	bcp	a,#4
 732  022d 2706          	jreq	L571
 733                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 735  022f 72165235      	bset	21045,#3
 737  0233 2004          	jra	L771
 738  0235               L571:
 739                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 741  0235 72175235      	bres	21045,#3
 742  0239               L771:
 743                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 745  0239 7b17          	ld	a,(OFST+11,sp)
 746  023b a508          	bcp	a,#8
 747  023d 2706          	jreq	L102
 748                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 750  023f 72145235      	bset	21045,#2
 752  0243 2004          	jra	L302
 753  0245               L102:
 754                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 756  0245 72155235      	bres	21045,#2
 757  0249               L302:
 758                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 760  0249 7b16          	ld	a,(OFST+10,sp)
 761  024b a580          	bcp	a,#128
 762  024d 2706          	jreq	L502
 763                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 765  024f 72175236      	bres	21046,#3
 767  0253 200a          	jra	L702
 768  0255               L502:
 769                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 771  0255 7b16          	ld	a,(OFST+10,sp)
 772  0257 a408          	and	a,#8
 773  0259 ca5236        	or	a,21046
 774  025c c75236        	ld	21046,a
 775  025f               L702:
 776                     ; 176 }
 779  025f 5b0c          	addw	sp,#12
 780  0261 81            	ret
 835                     ; 184 void UART1_Cmd(FunctionalState NewState)
 835                     ; 185 {
 836                     	switch	.text
 837  0262               _UART1_Cmd:
 841                     ; 186   if (NewState != DISABLE)
 843  0262 4d            	tnz	a
 844  0263 2706          	jreq	L732
 845                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 847  0265 721b5234      	bres	21044,#5
 849  0269 2004          	jra	L142
 850  026b               L732:
 851                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 853  026b 721a5234      	bset	21044,#5
 854  026f               L142:
 855                     ; 196 }
 858  026f 81            	ret
 984                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 984                     ; 212 {
 985                     	switch	.text
 986  0270               _UART1_ITConfig:
 988  0270 89            	pushw	x
 989  0271 89            	pushw	x
 990       00000002      OFST:	set	2
 993                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 997                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 999  0272 a30100        	cpw	x,#256
1000  0275 2719          	jreq	L26
1001  0277 a30277        	cpw	x,#631
1002  027a 2714          	jreq	L26
1003  027c a30266        	cpw	x,#614
1004  027f 270f          	jreq	L26
1005  0281 a30205        	cpw	x,#517
1006  0284 270a          	jreq	L26
1007  0286 a30244        	cpw	x,#580
1008  0289 2705          	jreq	L26
1009  028b a30346        	cpw	x,#838
1010  028e 2603          	jrne	L06
1011  0290               L26:
1012  0290 4f            	clr	a
1013  0291 2010          	jra	L46
1014  0293               L06:
1015  0293 ae00d8        	ldw	x,#216
1016  0296 89            	pushw	x
1017  0297 ae0000        	ldw	x,#0
1018  029a 89            	pushw	x
1019  029b ae0008        	ldw	x,#L371
1020  029e cd0000        	call	_assert_failed
1022  02a1 5b04          	addw	sp,#4
1023  02a3               L46:
1024                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1026  02a3 0d07          	tnz	(OFST+5,sp)
1027  02a5 2706          	jreq	L07
1028  02a7 7b07          	ld	a,(OFST+5,sp)
1029  02a9 a101          	cp	a,#1
1030  02ab 2603          	jrne	L66
1031  02ad               L07:
1032  02ad 4f            	clr	a
1033  02ae 2010          	jra	L27
1034  02b0               L66:
1035  02b0 ae00d9        	ldw	x,#217
1036  02b3 89            	pushw	x
1037  02b4 ae0000        	ldw	x,#0
1038  02b7 89            	pushw	x
1039  02b8 ae0008        	ldw	x,#L371
1040  02bb cd0000        	call	_assert_failed
1042  02be 5b04          	addw	sp,#4
1043  02c0               L27:
1044                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1046  02c0 7b03          	ld	a,(OFST+1,sp)
1047  02c2 6b01          	ld	(OFST-1,sp),a
1049                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1051  02c4 7b04          	ld	a,(OFST+2,sp)
1052  02c6 a40f          	and	a,#15
1053  02c8 5f            	clrw	x
1054  02c9 97            	ld	xl,a
1055  02ca a601          	ld	a,#1
1056  02cc 5d            	tnzw	x
1057  02cd 2704          	jreq	L47
1058  02cf               L67:
1059  02cf 48            	sll	a
1060  02d0 5a            	decw	x
1061  02d1 26fc          	jrne	L67
1062  02d3               L47:
1063  02d3 6b02          	ld	(OFST+0,sp),a
1065                     ; 224   if (NewState != DISABLE)
1067  02d5 0d07          	tnz	(OFST+5,sp)
1068  02d7 272a          	jreq	L123
1069                     ; 227     if (uartreg == 0x01)
1071  02d9 7b01          	ld	a,(OFST-1,sp)
1072  02db a101          	cp	a,#1
1073  02dd 260a          	jrne	L323
1074                     ; 229       UART1->CR1 |= itpos;
1076  02df c65234        	ld	a,21044
1077  02e2 1a02          	or	a,(OFST+0,sp)
1078  02e4 c75234        	ld	21044,a
1080  02e7 2045          	jra	L333
1081  02e9               L323:
1082                     ; 231     else if (uartreg == 0x02)
1084  02e9 7b01          	ld	a,(OFST-1,sp)
1085  02eb a102          	cp	a,#2
1086  02ed 260a          	jrne	L723
1087                     ; 233       UART1->CR2 |= itpos;
1089  02ef c65235        	ld	a,21045
1090  02f2 1a02          	or	a,(OFST+0,sp)
1091  02f4 c75235        	ld	21045,a
1093  02f7 2035          	jra	L333
1094  02f9               L723:
1095                     ; 237       UART1->CR4 |= itpos;
1097  02f9 c65237        	ld	a,21047
1098  02fc 1a02          	or	a,(OFST+0,sp)
1099  02fe c75237        	ld	21047,a
1100  0301 202b          	jra	L333
1101  0303               L123:
1102                     ; 243     if (uartreg == 0x01)
1104  0303 7b01          	ld	a,(OFST-1,sp)
1105  0305 a101          	cp	a,#1
1106  0307 260b          	jrne	L533
1107                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1109  0309 7b02          	ld	a,(OFST+0,sp)
1110  030b 43            	cpl	a
1111  030c c45234        	and	a,21044
1112  030f c75234        	ld	21044,a
1114  0312 201a          	jra	L333
1115  0314               L533:
1116                     ; 247     else if (uartreg == 0x02)
1118  0314 7b01          	ld	a,(OFST-1,sp)
1119  0316 a102          	cp	a,#2
1120  0318 260b          	jrne	L143
1121                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1123  031a 7b02          	ld	a,(OFST+0,sp)
1124  031c 43            	cpl	a
1125  031d c45235        	and	a,21045
1126  0320 c75235        	ld	21045,a
1128  0323 2009          	jra	L333
1129  0325               L143:
1130                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1132  0325 7b02          	ld	a,(OFST+0,sp)
1133  0327 43            	cpl	a
1134  0328 c45237        	and	a,21047
1135  032b c75237        	ld	21047,a
1136  032e               L333:
1137                     ; 257 }
1140  032e 5b04          	addw	sp,#4
1141  0330 81            	ret
1178                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1178                     ; 266 {
1179                     	switch	.text
1180  0331               _UART1_HalfDuplexCmd:
1182  0331 88            	push	a
1183       00000000      OFST:	set	0
1186                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1188  0332 4d            	tnz	a
1189  0333 2704          	jreq	L401
1190  0335 a101          	cp	a,#1
1191  0337 2603          	jrne	L201
1192  0339               L401:
1193  0339 4f            	clr	a
1194  033a 2010          	jra	L601
1195  033c               L201:
1196  033c ae010b        	ldw	x,#267
1197  033f 89            	pushw	x
1198  0340 ae0000        	ldw	x,#0
1199  0343 89            	pushw	x
1200  0344 ae0008        	ldw	x,#L371
1201  0347 cd0000        	call	_assert_failed
1203  034a 5b04          	addw	sp,#4
1204  034c               L601:
1205                     ; 269   if (NewState != DISABLE)
1207  034c 0d01          	tnz	(OFST+1,sp)
1208  034e 2706          	jreq	L363
1209                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1211  0350 72165238      	bset	21048,#3
1213  0354 2004          	jra	L563
1214  0356               L363:
1215                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1217  0356 72175238      	bres	21048,#3
1218  035a               L563:
1219                     ; 277 }
1222  035a 84            	pop	a
1223  035b 81            	ret
1281                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1281                     ; 286 {
1282                     	switch	.text
1283  035c               _UART1_IrDAConfig:
1285  035c 88            	push	a
1286       00000000      OFST:	set	0
1289                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1291  035d a101          	cp	a,#1
1292  035f 2703          	jreq	L411
1293  0361 4d            	tnz	a
1294  0362 2603          	jrne	L211
1295  0364               L411:
1296  0364 4f            	clr	a
1297  0365 2010          	jra	L611
1298  0367               L211:
1299  0367 ae011f        	ldw	x,#287
1300  036a 89            	pushw	x
1301  036b ae0000        	ldw	x,#0
1302  036e 89            	pushw	x
1303  036f ae0008        	ldw	x,#L371
1304  0372 cd0000        	call	_assert_failed
1306  0375 5b04          	addw	sp,#4
1307  0377               L611:
1308                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1310  0377 0d01          	tnz	(OFST+1,sp)
1311  0379 2706          	jreq	L514
1312                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1314  037b 72145238      	bset	21048,#2
1316  037f 2004          	jra	L714
1317  0381               L514:
1318                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1320  0381 72155238      	bres	21048,#2
1321  0385               L714:
1322                     ; 297 }
1325  0385 84            	pop	a
1326  0386 81            	ret
1362                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1362                     ; 306 {
1363                     	switch	.text
1364  0387               _UART1_IrDACmd:
1366  0387 88            	push	a
1367       00000000      OFST:	set	0
1370                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1372  0388 4d            	tnz	a
1373  0389 2704          	jreq	L421
1374  038b a101          	cp	a,#1
1375  038d 2603          	jrne	L221
1376  038f               L421:
1377  038f 4f            	clr	a
1378  0390 2010          	jra	L621
1379  0392               L221:
1380  0392 ae0134        	ldw	x,#308
1381  0395 89            	pushw	x
1382  0396 ae0000        	ldw	x,#0
1383  0399 89            	pushw	x
1384  039a ae0008        	ldw	x,#L371
1385  039d cd0000        	call	_assert_failed
1387  03a0 5b04          	addw	sp,#4
1388  03a2               L621:
1389                     ; 310   if (NewState != DISABLE)
1391  03a2 0d01          	tnz	(OFST+1,sp)
1392  03a4 2706          	jreq	L734
1393                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1395  03a6 72125238      	bset	21048,#1
1397  03aa 2004          	jra	L144
1398  03ac               L734:
1399                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1401  03ac 72135238      	bres	21048,#1
1402  03b0               L144:
1403                     ; 320 }
1406  03b0 84            	pop	a
1407  03b1 81            	ret
1467                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1467                     ; 330 {
1468                     	switch	.text
1469  03b2               _UART1_LINBreakDetectionConfig:
1471  03b2 88            	push	a
1472       00000000      OFST:	set	0
1475                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1477  03b3 4d            	tnz	a
1478  03b4 2704          	jreq	L431
1479  03b6 a101          	cp	a,#1
1480  03b8 2603          	jrne	L231
1481  03ba               L431:
1482  03ba 4f            	clr	a
1483  03bb 2010          	jra	L631
1484  03bd               L231:
1485  03bd ae014b        	ldw	x,#331
1486  03c0 89            	pushw	x
1487  03c1 ae0000        	ldw	x,#0
1488  03c4 89            	pushw	x
1489  03c5 ae0008        	ldw	x,#L371
1490  03c8 cd0000        	call	_assert_failed
1492  03cb 5b04          	addw	sp,#4
1493  03cd               L631:
1494                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1496  03cd 0d01          	tnz	(OFST+1,sp)
1497  03cf 2706          	jreq	L174
1498                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1500  03d1 721a5237      	bset	21047,#5
1502  03d5 2004          	jra	L374
1503  03d7               L174:
1504                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1506  03d7 721b5237      	bres	21047,#5
1507  03db               L374:
1508                     ; 341 }
1511  03db 84            	pop	a
1512  03dc 81            	ret
1548                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1548                     ; 350 {
1549                     	switch	.text
1550  03dd               _UART1_LINCmd:
1552  03dd 88            	push	a
1553       00000000      OFST:	set	0
1556                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1558  03de 4d            	tnz	a
1559  03df 2704          	jreq	L441
1560  03e1 a101          	cp	a,#1
1561  03e3 2603          	jrne	L241
1562  03e5               L441:
1563  03e5 4f            	clr	a
1564  03e6 2010          	jra	L641
1565  03e8               L241:
1566  03e8 ae015f        	ldw	x,#351
1567  03eb 89            	pushw	x
1568  03ec ae0000        	ldw	x,#0
1569  03ef 89            	pushw	x
1570  03f0 ae0008        	ldw	x,#L371
1571  03f3 cd0000        	call	_assert_failed
1573  03f6 5b04          	addw	sp,#4
1574  03f8               L641:
1575                     ; 353   if (NewState != DISABLE)
1577  03f8 0d01          	tnz	(OFST+1,sp)
1578  03fa 2706          	jreq	L315
1579                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1581  03fc 721c5236      	bset	21046,#6
1583  0400 2004          	jra	L515
1584  0402               L315:
1585                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1587  0402 721d5236      	bres	21046,#6
1588  0406               L515:
1589                     ; 363 }
1592  0406 84            	pop	a
1593  0407 81            	ret
1629                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1629                     ; 372 {
1630                     	switch	.text
1631  0408               _UART1_SmartCardCmd:
1633  0408 88            	push	a
1634       00000000      OFST:	set	0
1637                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1639  0409 4d            	tnz	a
1640  040a 2704          	jreq	L451
1641  040c a101          	cp	a,#1
1642  040e 2603          	jrne	L251
1643  0410               L451:
1644  0410 4f            	clr	a
1645  0411 2010          	jra	L651
1646  0413               L251:
1647  0413 ae0175        	ldw	x,#373
1648  0416 89            	pushw	x
1649  0417 ae0000        	ldw	x,#0
1650  041a 89            	pushw	x
1651  041b ae0008        	ldw	x,#L371
1652  041e cd0000        	call	_assert_failed
1654  0421 5b04          	addw	sp,#4
1655  0423               L651:
1656                     ; 375   if (NewState != DISABLE)
1658  0423 0d01          	tnz	(OFST+1,sp)
1659  0425 2706          	jreq	L535
1660                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1662  0427 721a5238      	bset	21048,#5
1664  042b 2004          	jra	L735
1665  042d               L535:
1666                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1668  042d 721b5238      	bres	21048,#5
1669  0431               L735:
1670                     ; 385 }
1673  0431 84            	pop	a
1674  0432 81            	ret
1711                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1711                     ; 395 {
1712                     	switch	.text
1713  0433               _UART1_SmartCardNACKCmd:
1715  0433 88            	push	a
1716       00000000      OFST:	set	0
1719                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1721  0434 4d            	tnz	a
1722  0435 2704          	jreq	L461
1723  0437 a101          	cp	a,#1
1724  0439 2603          	jrne	L261
1725  043b               L461:
1726  043b 4f            	clr	a
1727  043c 2010          	jra	L661
1728  043e               L261:
1729  043e ae018c        	ldw	x,#396
1730  0441 89            	pushw	x
1731  0442 ae0000        	ldw	x,#0
1732  0445 89            	pushw	x
1733  0446 ae0008        	ldw	x,#L371
1734  0449 cd0000        	call	_assert_failed
1736  044c 5b04          	addw	sp,#4
1737  044e               L661:
1738                     ; 398   if (NewState != DISABLE)
1740  044e 0d01          	tnz	(OFST+1,sp)
1741  0450 2706          	jreq	L755
1742                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1744  0452 72185238      	bset	21048,#4
1746  0456 2004          	jra	L165
1747  0458               L755:
1748                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1750  0458 72195238      	bres	21048,#4
1751  045c               L165:
1752                     ; 408 }
1755  045c 84            	pop	a
1756  045d 81            	ret
1814                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1814                     ; 417 {
1815                     	switch	.text
1816  045e               _UART1_WakeUpConfig:
1818  045e 88            	push	a
1819       00000000      OFST:	set	0
1822                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1824  045f 4d            	tnz	a
1825  0460 2704          	jreq	L471
1826  0462 a108          	cp	a,#8
1827  0464 2603          	jrne	L271
1828  0466               L471:
1829  0466 4f            	clr	a
1830  0467 2010          	jra	L671
1831  0469               L271:
1832  0469 ae01a2        	ldw	x,#418
1833  046c 89            	pushw	x
1834  046d ae0000        	ldw	x,#0
1835  0470 89            	pushw	x
1836  0471 ae0008        	ldw	x,#L371
1837  0474 cd0000        	call	_assert_failed
1839  0477 5b04          	addw	sp,#4
1840  0479               L671:
1841                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1843  0479 72175234      	bres	21044,#3
1844                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1846  047d c65234        	ld	a,21044
1847  0480 1a01          	or	a,(OFST+1,sp)
1848  0482 c75234        	ld	21044,a
1849                     ; 422 }
1852  0485 84            	pop	a
1853  0486 81            	ret
1890                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1890                     ; 431 {
1891                     	switch	.text
1892  0487               _UART1_ReceiverWakeUpCmd:
1894  0487 88            	push	a
1895       00000000      OFST:	set	0
1898                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1900  0488 4d            	tnz	a
1901  0489 2704          	jreq	L402
1902  048b a101          	cp	a,#1
1903  048d 2603          	jrne	L202
1904  048f               L402:
1905  048f 4f            	clr	a
1906  0490 2010          	jra	L602
1907  0492               L202:
1908  0492 ae01b0        	ldw	x,#432
1909  0495 89            	pushw	x
1910  0496 ae0000        	ldw	x,#0
1911  0499 89            	pushw	x
1912  049a ae0008        	ldw	x,#L371
1913  049d cd0000        	call	_assert_failed
1915  04a0 5b04          	addw	sp,#4
1916  04a2               L602:
1917                     ; 434   if (NewState != DISABLE)
1919  04a2 0d01          	tnz	(OFST+1,sp)
1920  04a4 2706          	jreq	L726
1921                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1923  04a6 72125235      	bset	21045,#1
1925  04aa 2004          	jra	L136
1926  04ac               L726:
1927                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1929  04ac 72135235      	bres	21045,#1
1930  04b0               L136:
1931                     ; 444 }
1934  04b0 84            	pop	a
1935  04b1 81            	ret
1958                     ; 451 uint8_t UART1_ReceiveData8(void)
1958                     ; 452 {
1959                     	switch	.text
1960  04b2               _UART1_ReceiveData8:
1964                     ; 453   return ((uint8_t)UART1->DR);
1966  04b2 c65231        	ld	a,21041
1969  04b5 81            	ret
2003                     ; 461 uint16_t UART1_ReceiveData9(void)
2003                     ; 462 {
2004                     	switch	.text
2005  04b6               _UART1_ReceiveData9:
2007  04b6 89            	pushw	x
2008       00000002      OFST:	set	2
2011                     ; 463   uint16_t temp = 0;
2013                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2015  04b7 c65234        	ld	a,21044
2016  04ba 5f            	clrw	x
2017  04bb a480          	and	a,#128
2018  04bd 5f            	clrw	x
2019  04be 02            	rlwa	x,a
2020  04bf 58            	sllw	x
2021  04c0 1f01          	ldw	(OFST-1,sp),x
2023                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2025  04c2 c65231        	ld	a,21041
2026  04c5 5f            	clrw	x
2027  04c6 97            	ld	xl,a
2028  04c7 01            	rrwa	x,a
2029  04c8 1a02          	or	a,(OFST+0,sp)
2030  04ca 01            	rrwa	x,a
2031  04cb 1a01          	or	a,(OFST-1,sp)
2032  04cd 01            	rrwa	x,a
2033  04ce 01            	rrwa	x,a
2034  04cf a4ff          	and	a,#255
2035  04d1 01            	rrwa	x,a
2036  04d2 a401          	and	a,#1
2037  04d4 01            	rrwa	x,a
2040  04d5 5b02          	addw	sp,#2
2041  04d7 81            	ret
2075                     ; 474 void UART1_SendData8(uint8_t Data)
2075                     ; 475 {
2076                     	switch	.text
2077  04d8               _UART1_SendData8:
2081                     ; 477   UART1->DR = Data;
2083  04d8 c75231        	ld	21041,a
2084                     ; 478 }
2087  04db 81            	ret
2121                     ; 486 void UART1_SendData9(uint16_t Data)
2121                     ; 487 {
2122                     	switch	.text
2123  04dc               _UART1_SendData9:
2125  04dc 89            	pushw	x
2126       00000000      OFST:	set	0
2129                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2131  04dd 721d5234      	bres	21044,#6
2132                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2134  04e1 54            	srlw	x
2135  04e2 54            	srlw	x
2136  04e3 9f            	ld	a,xl
2137  04e4 a440          	and	a,#64
2138  04e6 ca5234        	or	a,21044
2139  04e9 c75234        	ld	21044,a
2140                     ; 493   UART1->DR   = (uint8_t)(Data);
2142  04ec 7b02          	ld	a,(OFST+2,sp)
2143  04ee c75231        	ld	21041,a
2144                     ; 494 }
2147  04f1 85            	popw	x
2148  04f2 81            	ret
2171                     ; 501 void UART1_SendBreak(void)
2171                     ; 502 {
2172                     	switch	.text
2173  04f3               _UART1_SendBreak:
2177                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2179  04f3 72105235      	bset	21045,#0
2180                     ; 504 }
2183  04f7 81            	ret
2218                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2218                     ; 512 {
2219                     	switch	.text
2220  04f8               _UART1_SetAddress:
2222  04f8 88            	push	a
2223       00000000      OFST:	set	0
2226                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2228  04f9 a110          	cp	a,#16
2229  04fb 2403          	jruge	L422
2230  04fd 4f            	clr	a
2231  04fe 2010          	jra	L622
2232  0500               L422:
2233  0500 ae0202        	ldw	x,#514
2234  0503 89            	pushw	x
2235  0504 ae0000        	ldw	x,#0
2236  0507 89            	pushw	x
2237  0508 ae0008        	ldw	x,#L371
2238  050b cd0000        	call	_assert_failed
2240  050e 5b04          	addw	sp,#4
2241  0510               L622:
2242                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2244  0510 c65237        	ld	a,21047
2245  0513 a4f0          	and	a,#240
2246  0515 c75237        	ld	21047,a
2247                     ; 519   UART1->CR4 |= UART1_Address;
2249  0518 c65237        	ld	a,21047
2250  051b 1a01          	or	a,(OFST+1,sp)
2251  051d c75237        	ld	21047,a
2252                     ; 520 }
2255  0520 84            	pop	a
2256  0521 81            	ret
2290                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2290                     ; 529 {
2291                     	switch	.text
2292  0522               _UART1_SetGuardTime:
2296                     ; 531   UART1->GTR = UART1_GuardTime;
2298  0522 c75239        	ld	21049,a
2299                     ; 532 }
2302  0525 81            	ret
2336                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2336                     ; 557 {
2337                     	switch	.text
2338  0526               _UART1_SetPrescaler:
2342                     ; 559   UART1->PSCR = UART1_Prescaler;
2344  0526 c7523a        	ld	21050,a
2345                     ; 560 }
2348  0529 81            	ret
2492                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2492                     ; 569 {
2493                     	switch	.text
2494  052a               _UART1_GetFlagStatus:
2496  052a 89            	pushw	x
2497  052b 88            	push	a
2498       00000001      OFST:	set	1
2501                     ; 570   FlagStatus status = RESET;
2503                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2505  052c a30080        	cpw	x,#128
2506  052f 272d          	jreq	L042
2507  0531 a30040        	cpw	x,#64
2508  0534 2728          	jreq	L042
2509  0536 a30020        	cpw	x,#32
2510  0539 2723          	jreq	L042
2511  053b a30010        	cpw	x,#16
2512  053e 271e          	jreq	L042
2513  0540 a30008        	cpw	x,#8
2514  0543 2719          	jreq	L042
2515  0545 a30004        	cpw	x,#4
2516  0548 2714          	jreq	L042
2517  054a a30002        	cpw	x,#2
2518  054d 270f          	jreq	L042
2519  054f a30001        	cpw	x,#1
2520  0552 270a          	jreq	L042
2521  0554 a30101        	cpw	x,#257
2522  0557 2705          	jreq	L042
2523  0559 a30210        	cpw	x,#528
2524  055c 2603          	jrne	L632
2525  055e               L042:
2526  055e 4f            	clr	a
2527  055f 2010          	jra	L242
2528  0561               L632:
2529  0561 ae023d        	ldw	x,#573
2530  0564 89            	pushw	x
2531  0565 ae0000        	ldw	x,#0
2532  0568 89            	pushw	x
2533  0569 ae0008        	ldw	x,#L371
2534  056c cd0000        	call	_assert_failed
2536  056f 5b04          	addw	sp,#4
2537  0571               L242:
2538                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2540  0571 1e02          	ldw	x,(OFST+1,sp)
2541  0573 a30210        	cpw	x,#528
2542  0576 2611          	jrne	L1601
2543                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2545  0578 c65237        	ld	a,21047
2546  057b 1503          	bcp	a,(OFST+2,sp)
2547  057d 2706          	jreq	L3601
2548                     ; 582       status = SET;
2550  057f a601          	ld	a,#1
2551  0581 6b01          	ld	(OFST+0,sp),a
2554  0583 202b          	jra	L7601
2555  0585               L3601:
2556                     ; 587       status = RESET;
2558  0585 0f01          	clr	(OFST+0,sp)
2560  0587 2027          	jra	L7601
2561  0589               L1601:
2562                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2564  0589 1e02          	ldw	x,(OFST+1,sp)
2565  058b a30101        	cpw	x,#257
2566  058e 2611          	jrne	L1701
2567                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2569  0590 c65235        	ld	a,21045
2570  0593 1503          	bcp	a,(OFST+2,sp)
2571  0595 2706          	jreq	L3701
2572                     ; 595       status = SET;
2574  0597 a601          	ld	a,#1
2575  0599 6b01          	ld	(OFST+0,sp),a
2578  059b 2013          	jra	L7601
2579  059d               L3701:
2580                     ; 600       status = RESET;
2582  059d 0f01          	clr	(OFST+0,sp)
2584  059f 200f          	jra	L7601
2585  05a1               L1701:
2586                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2588  05a1 c65230        	ld	a,21040
2589  05a4 1503          	bcp	a,(OFST+2,sp)
2590  05a6 2706          	jreq	L1011
2591                     ; 608       status = SET;
2593  05a8 a601          	ld	a,#1
2594  05aa 6b01          	ld	(OFST+0,sp),a
2597  05ac 2002          	jra	L7601
2598  05ae               L1011:
2599                     ; 613       status = RESET;
2601  05ae 0f01          	clr	(OFST+0,sp)
2603  05b0               L7601:
2604                     ; 617   return status;
2606  05b0 7b01          	ld	a,(OFST+0,sp)
2609  05b2 5b03          	addw	sp,#3
2610  05b4 81            	ret
2646                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2646                     ; 647 {
2647                     	switch	.text
2648  05b5               _UART1_ClearFlag:
2650  05b5 89            	pushw	x
2651       00000000      OFST:	set	0
2654                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2656  05b6 a30020        	cpw	x,#32
2657  05b9 2705          	jreq	L052
2658  05bb a30210        	cpw	x,#528
2659  05be 2603          	jrne	L642
2660  05c0               L052:
2661  05c0 4f            	clr	a
2662  05c1 2010          	jra	L252
2663  05c3               L642:
2664  05c3 ae0288        	ldw	x,#648
2665  05c6 89            	pushw	x
2666  05c7 ae0000        	ldw	x,#0
2667  05ca 89            	pushw	x
2668  05cb ae0008        	ldw	x,#L371
2669  05ce cd0000        	call	_assert_failed
2671  05d1 5b04          	addw	sp,#4
2672  05d3               L252:
2673                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2675  05d3 1e01          	ldw	x,(OFST+1,sp)
2676  05d5 a30020        	cpw	x,#32
2677  05d8 2606          	jrne	L3211
2678                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2680  05da 35df5230      	mov	21040,#223
2682  05de 2004          	jra	L5211
2683  05e0               L3211:
2684                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2686  05e0 72195237      	bres	21047,#4
2687  05e4               L5211:
2688                     ; 660 }
2691  05e4 85            	popw	x
2692  05e5 81            	ret
2775                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2775                     ; 676 {
2776                     	switch	.text
2777  05e6               _UART1_GetITStatus:
2779  05e6 89            	pushw	x
2780  05e7 89            	pushw	x
2781       00000002      OFST:	set	2
2784                     ; 677   ITStatus pendingbitstatus = RESET;
2786                     ; 678   uint8_t itpos = 0;
2788                     ; 679   uint8_t itmask1 = 0;
2790                     ; 680   uint8_t itmask2 = 0;
2792                     ; 681   uint8_t enablestatus = 0;
2794                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2796  05e8 a30277        	cpw	x,#631
2797  05eb 271e          	jreq	L062
2798  05ed a30266        	cpw	x,#614
2799  05f0 2719          	jreq	L062
2800  05f2 a30255        	cpw	x,#597
2801  05f5 2714          	jreq	L062
2802  05f7 a30244        	cpw	x,#580
2803  05fa 270f          	jreq	L062
2804  05fc a30235        	cpw	x,#565
2805  05ff 270a          	jreq	L062
2806  0601 a30346        	cpw	x,#838
2807  0604 2705          	jreq	L062
2808  0606 a30100        	cpw	x,#256
2809  0609 2603          	jrne	L652
2810  060b               L062:
2811  060b 4f            	clr	a
2812  060c 2010          	jra	L262
2813  060e               L652:
2814  060e ae02ac        	ldw	x,#684
2815  0611 89            	pushw	x
2816  0612 ae0000        	ldw	x,#0
2817  0615 89            	pushw	x
2818  0616 ae0008        	ldw	x,#L371
2819  0619 cd0000        	call	_assert_failed
2821  061c 5b04          	addw	sp,#4
2822  061e               L262:
2823                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2825  061e 7b04          	ld	a,(OFST+2,sp)
2826  0620 a40f          	and	a,#15
2827  0622 5f            	clrw	x
2828  0623 97            	ld	xl,a
2829  0624 a601          	ld	a,#1
2830  0626 5d            	tnzw	x
2831  0627 2704          	jreq	L462
2832  0629               L662:
2833  0629 48            	sll	a
2834  062a 5a            	decw	x
2835  062b 26fc          	jrne	L662
2836  062d               L462:
2837  062d 6b01          	ld	(OFST-1,sp),a
2839                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2841  062f 7b04          	ld	a,(OFST+2,sp)
2842  0631 4e            	swap	a
2843  0632 a40f          	and	a,#15
2844  0634 6b02          	ld	(OFST+0,sp),a
2846                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2848  0636 7b02          	ld	a,(OFST+0,sp)
2849  0638 5f            	clrw	x
2850  0639 97            	ld	xl,a
2851  063a a601          	ld	a,#1
2852  063c 5d            	tnzw	x
2853  063d 2704          	jreq	L072
2854  063f               L272:
2855  063f 48            	sll	a
2856  0640 5a            	decw	x
2857  0641 26fc          	jrne	L272
2858  0643               L072:
2859  0643 6b02          	ld	(OFST+0,sp),a
2861                     ; 695   if (UART1_IT == UART1_IT_PE)
2863  0645 1e03          	ldw	x,(OFST+1,sp)
2864  0647 a30100        	cpw	x,#256
2865  064a 261c          	jrne	L1711
2866                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2868  064c c65234        	ld	a,21044
2869  064f 1402          	and	a,(OFST+0,sp)
2870  0651 6b02          	ld	(OFST+0,sp),a
2872                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2874  0653 c65230        	ld	a,21040
2875  0656 1501          	bcp	a,(OFST-1,sp)
2876  0658 270a          	jreq	L3711
2878  065a 0d02          	tnz	(OFST+0,sp)
2879  065c 2706          	jreq	L3711
2880                     ; 704       pendingbitstatus = SET;
2882  065e a601          	ld	a,#1
2883  0660 6b02          	ld	(OFST+0,sp),a
2886  0662 2041          	jra	L7711
2887  0664               L3711:
2888                     ; 709       pendingbitstatus = RESET;
2890  0664 0f02          	clr	(OFST+0,sp)
2892  0666 203d          	jra	L7711
2893  0668               L1711:
2894                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2896  0668 1e03          	ldw	x,(OFST+1,sp)
2897  066a a30346        	cpw	x,#838
2898  066d 261c          	jrne	L1021
2899                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2901  066f c65237        	ld	a,21047
2902  0672 1402          	and	a,(OFST+0,sp)
2903  0674 6b02          	ld	(OFST+0,sp),a
2905                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2907  0676 c65237        	ld	a,21047
2908  0679 1501          	bcp	a,(OFST-1,sp)
2909  067b 270a          	jreq	L3021
2911  067d 0d02          	tnz	(OFST+0,sp)
2912  067f 2706          	jreq	L3021
2913                     ; 721       pendingbitstatus = SET;
2915  0681 a601          	ld	a,#1
2916  0683 6b02          	ld	(OFST+0,sp),a
2919  0685 201e          	jra	L7711
2920  0687               L3021:
2921                     ; 726       pendingbitstatus = RESET;
2923  0687 0f02          	clr	(OFST+0,sp)
2925  0689 201a          	jra	L7711
2926  068b               L1021:
2927                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2929  068b c65235        	ld	a,21045
2930  068e 1402          	and	a,(OFST+0,sp)
2931  0690 6b02          	ld	(OFST+0,sp),a
2933                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2935  0692 c65230        	ld	a,21040
2936  0695 1501          	bcp	a,(OFST-1,sp)
2937  0697 270a          	jreq	L1121
2939  0699 0d02          	tnz	(OFST+0,sp)
2940  069b 2706          	jreq	L1121
2941                     ; 737       pendingbitstatus = SET;
2943  069d a601          	ld	a,#1
2944  069f 6b02          	ld	(OFST+0,sp),a
2947  06a1 2002          	jra	L7711
2948  06a3               L1121:
2949                     ; 742       pendingbitstatus = RESET;
2951  06a3 0f02          	clr	(OFST+0,sp)
2953  06a5               L7711:
2954                     ; 747   return  pendingbitstatus;
2956  06a5 7b02          	ld	a,(OFST+0,sp)
2959  06a7 5b04          	addw	sp,#4
2960  06a9 81            	ret
2997                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2997                     ; 776 {
2998                     	switch	.text
2999  06aa               _UART1_ClearITPendingBit:
3001  06aa 89            	pushw	x
3002       00000000      OFST:	set	0
3005                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
3007  06ab a30255        	cpw	x,#597
3008  06ae 2705          	jreq	L003
3009  06b0 a30346        	cpw	x,#838
3010  06b3 2603          	jrne	L672
3011  06b5               L003:
3012  06b5 4f            	clr	a
3013  06b6 2010          	jra	L203
3014  06b8               L672:
3015  06b8 ae0309        	ldw	x,#777
3016  06bb 89            	pushw	x
3017  06bc ae0000        	ldw	x,#0
3018  06bf 89            	pushw	x
3019  06c0 ae0008        	ldw	x,#L371
3020  06c3 cd0000        	call	_assert_failed
3022  06c6 5b04          	addw	sp,#4
3023  06c8               L203:
3024                     ; 780   if (UART1_IT == UART1_IT_RXNE)
3026  06c8 1e01          	ldw	x,(OFST+1,sp)
3027  06ca a30255        	cpw	x,#597
3028  06cd 2606          	jrne	L3321
3029                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
3031  06cf 35df5230      	mov	21040,#223
3033  06d3 2004          	jra	L5321
3034  06d5               L3321:
3035                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
3037  06d5 72195237      	bres	21047,#4
3038  06d9               L5321:
3039                     ; 789 }
3042  06d9 85            	popw	x
3043  06da 81            	ret
3056                     	xdef	_UART1_ClearITPendingBit
3057                     	xdef	_UART1_GetITStatus
3058                     	xdef	_UART1_ClearFlag
3059                     	xdef	_UART1_GetFlagStatus
3060                     	xdef	_UART1_SetPrescaler
3061                     	xdef	_UART1_SetGuardTime
3062                     	xdef	_UART1_SetAddress
3063                     	xdef	_UART1_SendBreak
3064                     	xdef	_UART1_SendData9
3065                     	xdef	_UART1_SendData8
3066                     	xdef	_UART1_ReceiveData9
3067                     	xdef	_UART1_ReceiveData8
3068                     	xdef	_UART1_ReceiverWakeUpCmd
3069                     	xdef	_UART1_WakeUpConfig
3070                     	xdef	_UART1_SmartCardNACKCmd
3071                     	xdef	_UART1_SmartCardCmd
3072                     	xdef	_UART1_LINCmd
3073                     	xdef	_UART1_LINBreakDetectionConfig
3074                     	xdef	_UART1_IrDACmd
3075                     	xdef	_UART1_IrDAConfig
3076                     	xdef	_UART1_HalfDuplexCmd
3077                     	xdef	_UART1_ITConfig
3078                     	xdef	_UART1_Cmd
3079                     	xdef	_UART1_Init
3080                     	xdef	_UART1_DeInit
3081                     	xref	_assert_failed
3082                     	xref	_CLK_GetClockFreq
3083                     	switch	.const
3084  0008               L371:
3085  0008 7372635c7374  	dc.b	"src\stm8s_uart1.c",0
3086                     	xref.b	c_lreg
3087                     	xref.b	c_x
3107                     	xref	c_lsub
3108                     	xref	c_smul
3109                     	xref	c_ludv
3110                     	xref	c_rtol
3111                     	xref	c_llsh
3112                     	xref	c_lcmp
3113                     	xref	c_ltor
3114                     	end
