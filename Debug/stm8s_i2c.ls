   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 67 void I2C_DeInit(void)
  42                     ; 68 {
  44                     	switch	.text
  45  0000               _I2C_DeInit:
  49                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  51  0000 725f5210      	clr	21008
  52                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  54  0004 725f5211      	clr	21009
  55                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  57  0008 725f5212      	clr	21010
  58                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  60  000c 725f5213      	clr	21011
  61                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  63  0010 725f5214      	clr	21012
  64                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  66  0014 725f521a      	clr	21018
  67                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  69  0018 725f521b      	clr	21019
  70                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  72  001c 725f521c      	clr	21020
  73                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  75  0020 3502521d      	mov	21021,#2
  76                     ; 78 }
  79  0024 81            	ret
 259                     .const:	section	.text
 260  0000               L44:
 261  0000 00061a81      	dc.l	400001
 262  0004               L05:
 263  0004 000186a1      	dc.l	100001
 264  0008               L25:
 265  0008 000f4240      	dc.l	1000000
 266                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 266                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 266                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 266                     ; 99 {
 267                     	switch	.text
 268  0025               _I2C_Init:
 270  0025 5209          	subw	sp,#9
 271       00000009      OFST:	set	9
 274                     ; 100   uint16_t result = 0x0004;
 276                     ; 101   uint16_t tmpval = 0;
 278                     ; 102   uint8_t tmpccrh = 0;
 280  0027 0f07          	clr	(OFST-2,sp)
 282                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 284  0029 0d13          	tnz	(OFST+10,sp)
 285  002b 270c          	jreq	L21
 286  002d 7b13          	ld	a,(OFST+10,sp)
 287  002f a101          	cp	a,#1
 288  0031 2706          	jreq	L21
 289  0033 7b13          	ld	a,(OFST+10,sp)
 290  0035 a102          	cp	a,#2
 291  0037 2603          	jrne	L01
 292  0039               L21:
 293  0039 4f            	clr	a
 294  003a 2010          	jra	L41
 295  003c               L01:
 296  003c ae0069        	ldw	x,#105
 297  003f 89            	pushw	x
 298  0040 ae0000        	ldw	x,#0
 299  0043 89            	pushw	x
 300  0044 ae000c        	ldw	x,#L131
 301  0047 cd0000        	call	_assert_failed
 303  004a 5b04          	addw	sp,#4
 304  004c               L41:
 305                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 307  004c 0d14          	tnz	(OFST+11,sp)
 308  004e 2706          	jreq	L02
 309  0050 7b14          	ld	a,(OFST+11,sp)
 310  0052 a180          	cp	a,#128
 311  0054 2603          	jrne	L61
 312  0056               L02:
 313  0056 4f            	clr	a
 314  0057 2010          	jra	L22
 315  0059               L61:
 316  0059 ae006a        	ldw	x,#106
 317  005c 89            	pushw	x
 318  005d ae0000        	ldw	x,#0
 319  0060 89            	pushw	x
 320  0061 ae000c        	ldw	x,#L131
 321  0064 cd0000        	call	_assert_failed
 323  0067 5b04          	addw	sp,#4
 324  0069               L22:
 325                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 327  0069 1e10          	ldw	x,(OFST+7,sp)
 328  006b a30400        	cpw	x,#1024
 329  006e 2403          	jruge	L42
 330  0070 4f            	clr	a
 331  0071 2010          	jra	L62
 332  0073               L42:
 333  0073 ae006b        	ldw	x,#107
 334  0076 89            	pushw	x
 335  0077 ae0000        	ldw	x,#0
 336  007a 89            	pushw	x
 337  007b ae000c        	ldw	x,#L131
 338  007e cd0000        	call	_assert_failed
 340  0081 5b04          	addw	sp,#4
 341  0083               L62:
 342                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 344  0083 0d12          	tnz	(OFST+9,sp)
 345  0085 2706          	jreq	L23
 346  0087 7b12          	ld	a,(OFST+9,sp)
 347  0089 a140          	cp	a,#64
 348  008b 2603          	jrne	L03
 349  008d               L23:
 350  008d 4f            	clr	a
 351  008e 2010          	jra	L43
 352  0090               L03:
 353  0090 ae006c        	ldw	x,#108
 354  0093 89            	pushw	x
 355  0094 ae0000        	ldw	x,#0
 356  0097 89            	pushw	x
 357  0098 ae000c        	ldw	x,#L131
 358  009b cd0000        	call	_assert_failed
 360  009e 5b04          	addw	sp,#4
 361  00a0               L43:
 362                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 364  00a0 0d15          	tnz	(OFST+12,sp)
 365  00a2 2709          	jreq	L63
 366  00a4 7b15          	ld	a,(OFST+12,sp)
 367  00a6 a111          	cp	a,#17
 368  00a8 2403          	jruge	L63
 369  00aa 4f            	clr	a
 370  00ab 2010          	jra	L04
 371  00ad               L63:
 372  00ad ae006d        	ldw	x,#109
 373  00b0 89            	pushw	x
 374  00b1 ae0000        	ldw	x,#0
 375  00b4 89            	pushw	x
 376  00b5 ae000c        	ldw	x,#L131
 377  00b8 cd0000        	call	_assert_failed
 379  00bb 5b04          	addw	sp,#4
 380  00bd               L04:
 381                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 383  00bd 96            	ldw	x,sp
 384  00be 1c000c        	addw	x,#OFST+3
 385  00c1 cd0000        	call	c_lzmp
 387  00c4 2712          	jreq	L24
 388  00c6 96            	ldw	x,sp
 389  00c7 1c000c        	addw	x,#OFST+3
 390  00ca cd0000        	call	c_ltor
 392  00cd ae0000        	ldw	x,#L44
 393  00d0 cd0000        	call	c_lcmp
 395  00d3 2403          	jruge	L24
 396  00d5 4f            	clr	a
 397  00d6 2010          	jra	L64
 398  00d8               L24:
 399  00d8 ae006e        	ldw	x,#110
 400  00db 89            	pushw	x
 401  00dc ae0000        	ldw	x,#0
 402  00df 89            	pushw	x
 403  00e0 ae000c        	ldw	x,#L131
 404  00e3 cd0000        	call	_assert_failed
 406  00e6 5b04          	addw	sp,#4
 407  00e8               L64:
 408                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 410  00e8 c65212        	ld	a,21010
 411  00eb a4c0          	and	a,#192
 412  00ed c75212        	ld	21010,a
 413                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 415  00f0 c65212        	ld	a,21010
 416  00f3 1a15          	or	a,(OFST+12,sp)
 417  00f5 c75212        	ld	21010,a
 418                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 420  00f8 72115210      	bres	21008,#0
 421                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 423  00fc c6521c        	ld	a,21020
 424  00ff a430          	and	a,#48
 425  0101 c7521c        	ld	21020,a
 426                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 428  0104 725f521b      	clr	21019
 429                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 431  0108 96            	ldw	x,sp
 432  0109 1c000c        	addw	x,#OFST+3
 433  010c cd0000        	call	c_ltor
 435  010f ae0004        	ldw	x,#L05
 436  0112 cd0000        	call	c_lcmp
 438  0115 2403          	jruge	L45
 439  0117 cc01a4        	jp	L331
 440  011a               L45:
 441                     ; 131     tmpccrh = I2C_CCRH_FS;
 443  011a a680          	ld	a,#128
 444  011c 6b07          	ld	(OFST-2,sp),a
 446                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 448  011e 0d12          	tnz	(OFST+9,sp)
 449  0120 2630          	jrne	L531
 450                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 452  0122 96            	ldw	x,sp
 453  0123 1c000c        	addw	x,#OFST+3
 454  0126 cd0000        	call	c_ltor
 456  0129 a603          	ld	a,#3
 457  012b cd0000        	call	c_smul
 459  012e 96            	ldw	x,sp
 460  012f 1c0001        	addw	x,#OFST-8
 461  0132 cd0000        	call	c_rtol
 464  0135 7b15          	ld	a,(OFST+12,sp)
 465  0137 b703          	ld	c_lreg+3,a
 466  0139 3f02          	clr	c_lreg+2
 467  013b 3f01          	clr	c_lreg+1
 468  013d 3f00          	clr	c_lreg
 469  013f ae0008        	ldw	x,#L25
 470  0142 cd0000        	call	c_lmul
 472  0145 96            	ldw	x,sp
 473  0146 1c0001        	addw	x,#OFST-8
 474  0149 cd0000        	call	c_ludv
 476  014c be02          	ldw	x,c_lreg+2
 477  014e 1f08          	ldw	(OFST-1,sp),x
 480  0150 2034          	jra	L731
 481  0152               L531:
 482                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 484  0152 96            	ldw	x,sp
 485  0153 1c000c        	addw	x,#OFST+3
 486  0156 cd0000        	call	c_ltor
 488  0159 a619          	ld	a,#25
 489  015b cd0000        	call	c_smul
 491  015e 96            	ldw	x,sp
 492  015f 1c0001        	addw	x,#OFST-8
 493  0162 cd0000        	call	c_rtol
 496  0165 7b15          	ld	a,(OFST+12,sp)
 497  0167 b703          	ld	c_lreg+3,a
 498  0169 3f02          	clr	c_lreg+2
 499  016b 3f01          	clr	c_lreg+1
 500  016d 3f00          	clr	c_lreg
 501  016f ae0008        	ldw	x,#L25
 502  0172 cd0000        	call	c_lmul
 504  0175 96            	ldw	x,sp
 505  0176 1c0001        	addw	x,#OFST-8
 506  0179 cd0000        	call	c_ludv
 508  017c be02          	ldw	x,c_lreg+2
 509  017e 1f08          	ldw	(OFST-1,sp),x
 511                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 513  0180 7b07          	ld	a,(OFST-2,sp)
 514  0182 aa40          	or	a,#64
 515  0184 6b07          	ld	(OFST-2,sp),a
 517  0186               L731:
 518                     ; 147     if (result < (uint16_t)0x01)
 520  0186 1e08          	ldw	x,(OFST-1,sp)
 521  0188 2605          	jrne	L141
 522                     ; 150       result = (uint16_t)0x0001;
 524  018a ae0001        	ldw	x,#1
 525  018d 1f08          	ldw	(OFST-1,sp),x
 527  018f               L141:
 528                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 530  018f 7b15          	ld	a,(OFST+12,sp)
 531  0191 97            	ld	xl,a
 532  0192 a603          	ld	a,#3
 533  0194 42            	mul	x,a
 534  0195 a60a          	ld	a,#10
 535  0197 cd0000        	call	c_sdivx
 537  019a 5c            	incw	x
 538  019b 1f05          	ldw	(OFST-4,sp),x
 540                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 542  019d 7b06          	ld	a,(OFST-3,sp)
 543  019f c7521d        	ld	21021,a
 545  01a2 2043          	jra	L341
 546  01a4               L331:
 547                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 549  01a4 96            	ldw	x,sp
 550  01a5 1c000c        	addw	x,#OFST+3
 551  01a8 cd0000        	call	c_ltor
 553  01ab 3803          	sll	c_lreg+3
 554  01ad 3902          	rlc	c_lreg+2
 555  01af 3901          	rlc	c_lreg+1
 556  01b1 3900          	rlc	c_lreg
 557  01b3 96            	ldw	x,sp
 558  01b4 1c0001        	addw	x,#OFST-8
 559  01b7 cd0000        	call	c_rtol
 562  01ba 7b15          	ld	a,(OFST+12,sp)
 563  01bc b703          	ld	c_lreg+3,a
 564  01be 3f02          	clr	c_lreg+2
 565  01c0 3f01          	clr	c_lreg+1
 566  01c2 3f00          	clr	c_lreg
 567  01c4 ae0008        	ldw	x,#L25
 568  01c7 cd0000        	call	c_lmul
 570  01ca 96            	ldw	x,sp
 571  01cb 1c0001        	addw	x,#OFST-8
 572  01ce cd0000        	call	c_ludv
 574  01d1 be02          	ldw	x,c_lreg+2
 575  01d3 1f08          	ldw	(OFST-1,sp),x
 577                     ; 167     if (result < (uint16_t)0x0004)
 579  01d5 1e08          	ldw	x,(OFST-1,sp)
 580  01d7 a30004        	cpw	x,#4
 581  01da 2405          	jruge	L541
 582                     ; 170       result = (uint16_t)0x0004;
 584  01dc ae0004        	ldw	x,#4
 585  01df 1f08          	ldw	(OFST-1,sp),x
 587  01e1               L541:
 588                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 590  01e1 7b15          	ld	a,(OFST+12,sp)
 591  01e3 4c            	inc	a
 592  01e4 c7521d        	ld	21021,a
 593  01e7               L341:
 594                     ; 181   I2C->CCRL = (uint8_t)result;
 596  01e7 7b09          	ld	a,(OFST+0,sp)
 597  01e9 c7521b        	ld	21019,a
 598                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 600  01ec 7b08          	ld	a,(OFST-1,sp)
 601  01ee a40f          	and	a,#15
 602  01f0 1a07          	or	a,(OFST-2,sp)
 603  01f2 c7521c        	ld	21020,a
 604                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 606  01f5 72105210      	bset	21008,#0
 607                     ; 188   I2C_AcknowledgeConfig(Ack);
 609  01f9 7b13          	ld	a,(OFST+10,sp)
 610  01fb cd031d        	call	_I2C_AcknowledgeConfig
 612                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 614  01fe 7b11          	ld	a,(OFST+8,sp)
 615  0200 c75213        	ld	21011,a
 616                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 616                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 618  0203 1e10          	ldw	x,(OFST+7,sp)
 619  0205 4f            	clr	a
 620  0206 01            	rrwa	x,a
 621  0207 48            	sll	a
 622  0208 59            	rlcw	x
 623  0209 01            	rrwa	x,a
 624  020a a406          	and	a,#6
 625  020c 5f            	clrw	x
 626  020d 6b04          	ld	(OFST-5,sp),a
 628  020f 7b14          	ld	a,(OFST+11,sp)
 629  0211 aa40          	or	a,#64
 630  0213 1a04          	or	a,(OFST-5,sp)
 631  0215 c75214        	ld	21012,a
 632                     ; 194 }
 635  0218 5b09          	addw	sp,#9
 636  021a 81            	ret
 692                     ; 202 void I2C_Cmd(FunctionalState NewState)
 692                     ; 203 {
 693                     	switch	.text
 694  021b               _I2C_Cmd:
 696  021b 88            	push	a
 697       00000000      OFST:	set	0
 700                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 702  021c 4d            	tnz	a
 703  021d 2704          	jreq	L26
 704  021f a101          	cp	a,#1
 705  0221 2603          	jrne	L06
 706  0223               L26:
 707  0223 4f            	clr	a
 708  0224 2010          	jra	L46
 709  0226               L06:
 710  0226 ae00cd        	ldw	x,#205
 711  0229 89            	pushw	x
 712  022a ae0000        	ldw	x,#0
 713  022d 89            	pushw	x
 714  022e ae000c        	ldw	x,#L131
 715  0231 cd0000        	call	_assert_failed
 717  0234 5b04          	addw	sp,#4
 718  0236               L46:
 719                     ; 207   if (NewState != DISABLE)
 721  0236 0d01          	tnz	(OFST+1,sp)
 722  0238 2706          	jreq	L571
 723                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 725  023a 72105210      	bset	21008,#0
 727  023e 2004          	jra	L771
 728  0240               L571:
 729                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 731  0240 72115210      	bres	21008,#0
 732  0244               L771:
 733                     ; 217 }
 736  0244 84            	pop	a
 737  0245 81            	ret
 773                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 773                     ; 226 {
 774                     	switch	.text
 775  0246               _I2C_GeneralCallCmd:
 777  0246 88            	push	a
 778       00000000      OFST:	set	0
 781                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 783  0247 4d            	tnz	a
 784  0248 2704          	jreq	L27
 785  024a a101          	cp	a,#1
 786  024c 2603          	jrne	L07
 787  024e               L27:
 788  024e 4f            	clr	a
 789  024f 2010          	jra	L47
 790  0251               L07:
 791  0251 ae00e4        	ldw	x,#228
 792  0254 89            	pushw	x
 793  0255 ae0000        	ldw	x,#0
 794  0258 89            	pushw	x
 795  0259 ae000c        	ldw	x,#L131
 796  025c cd0000        	call	_assert_failed
 798  025f 5b04          	addw	sp,#4
 799  0261               L47:
 800                     ; 230   if (NewState != DISABLE)
 802  0261 0d01          	tnz	(OFST+1,sp)
 803  0263 2706          	jreq	L712
 804                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 806  0265 721c5210      	bset	21008,#6
 808  0269 2004          	jra	L122
 809  026b               L712:
 810                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 812  026b 721d5210      	bres	21008,#6
 813  026f               L122:
 814                     ; 240 }
 817  026f 84            	pop	a
 818  0270 81            	ret
 854                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 854                     ; 251 {
 855                     	switch	.text
 856  0271               _I2C_GenerateSTART:
 858  0271 88            	push	a
 859       00000000      OFST:	set	0
 862                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 864  0272 4d            	tnz	a
 865  0273 2704          	jreq	L201
 866  0275 a101          	cp	a,#1
 867  0277 2603          	jrne	L001
 868  0279               L201:
 869  0279 4f            	clr	a
 870  027a 2010          	jra	L401
 871  027c               L001:
 872  027c ae00fd        	ldw	x,#253
 873  027f 89            	pushw	x
 874  0280 ae0000        	ldw	x,#0
 875  0283 89            	pushw	x
 876  0284 ae000c        	ldw	x,#L131
 877  0287 cd0000        	call	_assert_failed
 879  028a 5b04          	addw	sp,#4
 880  028c               L401:
 881                     ; 255   if (NewState != DISABLE)
 883  028c 0d01          	tnz	(OFST+1,sp)
 884  028e 2706          	jreq	L142
 885                     ; 258     I2C->CR2 |= I2C_CR2_START;
 887  0290 72105211      	bset	21009,#0
 889  0294 2004          	jra	L342
 890  0296               L142:
 891                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 893  0296 72115211      	bres	21009,#0
 894  029a               L342:
 895                     ; 265 }
 898  029a 84            	pop	a
 899  029b 81            	ret
 935                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 935                     ; 274 {
 936                     	switch	.text
 937  029c               _I2C_GenerateSTOP:
 939  029c 88            	push	a
 940       00000000      OFST:	set	0
 943                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 945  029d 4d            	tnz	a
 946  029e 2704          	jreq	L211
 947  02a0 a101          	cp	a,#1
 948  02a2 2603          	jrne	L011
 949  02a4               L211:
 950  02a4 4f            	clr	a
 951  02a5 2010          	jra	L411
 952  02a7               L011:
 953  02a7 ae0114        	ldw	x,#276
 954  02aa 89            	pushw	x
 955  02ab ae0000        	ldw	x,#0
 956  02ae 89            	pushw	x
 957  02af ae000c        	ldw	x,#L131
 958  02b2 cd0000        	call	_assert_failed
 960  02b5 5b04          	addw	sp,#4
 961  02b7               L411:
 962                     ; 278   if (NewState != DISABLE)
 964  02b7 0d01          	tnz	(OFST+1,sp)
 965  02b9 2706          	jreq	L362
 966                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 968  02bb 72125211      	bset	21009,#1
 970  02bf 2004          	jra	L562
 971  02c1               L362:
 972                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 974  02c1 72135211      	bres	21009,#1
 975  02c5               L562:
 976                     ; 288 }
 979  02c5 84            	pop	a
 980  02c6 81            	ret
1017                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1017                     ; 297 {
1018                     	switch	.text
1019  02c7               _I2C_SoftwareResetCmd:
1021  02c7 88            	push	a
1022       00000000      OFST:	set	0
1025                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1027  02c8 4d            	tnz	a
1028  02c9 2704          	jreq	L221
1029  02cb a101          	cp	a,#1
1030  02cd 2603          	jrne	L021
1031  02cf               L221:
1032  02cf 4f            	clr	a
1033  02d0 2010          	jra	L421
1034  02d2               L021:
1035  02d2 ae012b        	ldw	x,#299
1036  02d5 89            	pushw	x
1037  02d6 ae0000        	ldw	x,#0
1038  02d9 89            	pushw	x
1039  02da ae000c        	ldw	x,#L131
1040  02dd cd0000        	call	_assert_failed
1042  02e0 5b04          	addw	sp,#4
1043  02e2               L421:
1044                     ; 301   if (NewState != DISABLE)
1046  02e2 0d01          	tnz	(OFST+1,sp)
1047  02e4 2706          	jreq	L503
1048                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1050  02e6 721e5211      	bset	21009,#7
1052  02ea 2004          	jra	L703
1053  02ec               L503:
1054                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1056  02ec 721f5211      	bres	21009,#7
1057  02f0               L703:
1058                     ; 311 }
1061  02f0 84            	pop	a
1062  02f1 81            	ret
1099                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1099                     ; 321 {
1100                     	switch	.text
1101  02f2               _I2C_StretchClockCmd:
1103  02f2 88            	push	a
1104       00000000      OFST:	set	0
1107                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1109  02f3 4d            	tnz	a
1110  02f4 2704          	jreq	L231
1111  02f6 a101          	cp	a,#1
1112  02f8 2603          	jrne	L031
1113  02fa               L231:
1114  02fa 4f            	clr	a
1115  02fb 2010          	jra	L431
1116  02fd               L031:
1117  02fd ae0143        	ldw	x,#323
1118  0300 89            	pushw	x
1119  0301 ae0000        	ldw	x,#0
1120  0304 89            	pushw	x
1121  0305 ae000c        	ldw	x,#L131
1122  0308 cd0000        	call	_assert_failed
1124  030b 5b04          	addw	sp,#4
1125  030d               L431:
1126                     ; 325   if (NewState != DISABLE)
1128  030d 0d01          	tnz	(OFST+1,sp)
1129  030f 2706          	jreq	L723
1130                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1132  0311 721f5210      	bres	21008,#7
1134  0315 2004          	jra	L133
1135  0317               L723:
1136                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1138  0317 721e5210      	bset	21008,#7
1139  031b               L133:
1140                     ; 336 }
1143  031b 84            	pop	a
1144  031c 81            	ret
1181                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1181                     ; 346 {
1182                     	switch	.text
1183  031d               _I2C_AcknowledgeConfig:
1185  031d 88            	push	a
1186       00000000      OFST:	set	0
1189                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1191  031e 4d            	tnz	a
1192  031f 2708          	jreq	L241
1193  0321 a101          	cp	a,#1
1194  0323 2704          	jreq	L241
1195  0325 a102          	cp	a,#2
1196  0327 2603          	jrne	L041
1197  0329               L241:
1198  0329 4f            	clr	a
1199  032a 2010          	jra	L441
1200  032c               L041:
1201  032c ae015c        	ldw	x,#348
1202  032f 89            	pushw	x
1203  0330 ae0000        	ldw	x,#0
1204  0333 89            	pushw	x
1205  0334 ae000c        	ldw	x,#L131
1206  0337 cd0000        	call	_assert_failed
1208  033a 5b04          	addw	sp,#4
1209  033c               L441:
1210                     ; 350   if (Ack == I2C_ACK_NONE)
1212  033c 0d01          	tnz	(OFST+1,sp)
1213  033e 2606          	jrne	L153
1214                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1216  0340 72155211      	bres	21009,#2
1218  0344 2014          	jra	L353
1219  0346               L153:
1220                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1222  0346 72145211      	bset	21009,#2
1223                     ; 360     if (Ack == I2C_ACK_CURR)
1225  034a 7b01          	ld	a,(OFST+1,sp)
1226  034c a101          	cp	a,#1
1227  034e 2606          	jrne	L553
1228                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1230  0350 72175211      	bres	21009,#3
1232  0354 2004          	jra	L353
1233  0356               L553:
1234                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1236  0356 72165211      	bset	21009,#3
1237  035a               L353:
1238                     ; 371 }
1241  035a 84            	pop	a
1242  035b 81            	ret
1315                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1315                     ; 382 {
1316                     	switch	.text
1317  035c               _I2C_ITConfig:
1319  035c 89            	pushw	x
1320       00000000      OFST:	set	0
1323                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1325  035d 9e            	ld	a,xh
1326  035e a101          	cp	a,#1
1327  0360 271e          	jreq	L251
1328  0362 9e            	ld	a,xh
1329  0363 a102          	cp	a,#2
1330  0365 2719          	jreq	L251
1331  0367 9e            	ld	a,xh
1332  0368 a104          	cp	a,#4
1333  036a 2714          	jreq	L251
1334  036c 9e            	ld	a,xh
1335  036d a103          	cp	a,#3
1336  036f 270f          	jreq	L251
1337  0371 9e            	ld	a,xh
1338  0372 a105          	cp	a,#5
1339  0374 270a          	jreq	L251
1340  0376 9e            	ld	a,xh
1341  0377 a106          	cp	a,#6
1342  0379 2705          	jreq	L251
1343  037b 9e            	ld	a,xh
1344  037c a107          	cp	a,#7
1345  037e 2603          	jrne	L051
1346  0380               L251:
1347  0380 4f            	clr	a
1348  0381 2010          	jra	L451
1349  0383               L051:
1350  0383 ae0180        	ldw	x,#384
1351  0386 89            	pushw	x
1352  0387 ae0000        	ldw	x,#0
1353  038a 89            	pushw	x
1354  038b ae000c        	ldw	x,#L131
1355  038e cd0000        	call	_assert_failed
1357  0391 5b04          	addw	sp,#4
1358  0393               L451:
1359                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1361  0393 0d02          	tnz	(OFST+2,sp)
1362  0395 2706          	jreq	L061
1363  0397 7b02          	ld	a,(OFST+2,sp)
1364  0399 a101          	cp	a,#1
1365  039b 2603          	jrne	L651
1366  039d               L061:
1367  039d 4f            	clr	a
1368  039e 2010          	jra	L261
1369  03a0               L651:
1370  03a0 ae0181        	ldw	x,#385
1371  03a3 89            	pushw	x
1372  03a4 ae0000        	ldw	x,#0
1373  03a7 89            	pushw	x
1374  03a8 ae000c        	ldw	x,#L131
1375  03ab cd0000        	call	_assert_failed
1377  03ae 5b04          	addw	sp,#4
1378  03b0               L261:
1379                     ; 387   if (NewState != DISABLE)
1381  03b0 0d02          	tnz	(OFST+2,sp)
1382  03b2 270a          	jreq	L514
1383                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1385  03b4 c6521a        	ld	a,21018
1386  03b7 1a01          	or	a,(OFST+1,sp)
1387  03b9 c7521a        	ld	21018,a
1389  03bc 2009          	jra	L714
1390  03be               L514:
1391                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1393  03be 7b01          	ld	a,(OFST+1,sp)
1394  03c0 43            	cpl	a
1395  03c1 c4521a        	and	a,21018
1396  03c4 c7521a        	ld	21018,a
1397  03c7               L714:
1398                     ; 397 }
1401  03c7 85            	popw	x
1402  03c8 81            	ret
1439                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1439                     ; 406 {
1440                     	switch	.text
1441  03c9               _I2C_FastModeDutyCycleConfig:
1443  03c9 88            	push	a
1444       00000000      OFST:	set	0
1447                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1449  03ca 4d            	tnz	a
1450  03cb 2704          	jreq	L071
1451  03cd a140          	cp	a,#64
1452  03cf 2603          	jrne	L661
1453  03d1               L071:
1454  03d1 4f            	clr	a
1455  03d2 2010          	jra	L271
1456  03d4               L661:
1457  03d4 ae0198        	ldw	x,#408
1458  03d7 89            	pushw	x
1459  03d8 ae0000        	ldw	x,#0
1460  03db 89            	pushw	x
1461  03dc ae000c        	ldw	x,#L131
1462  03df cd0000        	call	_assert_failed
1464  03e2 5b04          	addw	sp,#4
1465  03e4               L271:
1466                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1468  03e4 7b01          	ld	a,(OFST+1,sp)
1469  03e6 a140          	cp	a,#64
1470  03e8 2606          	jrne	L734
1471                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1473  03ea 721c521c      	bset	21020,#6
1475  03ee 2004          	jra	L144
1476  03f0               L734:
1477                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1479  03f0 721d521c      	bres	21020,#6
1480  03f4               L144:
1481                     ; 420 }
1484  03f4 84            	pop	a
1485  03f5 81            	ret
1508                     ; 427 uint8_t I2C_ReceiveData(void)
1508                     ; 428 {
1509                     	switch	.text
1510  03f6               _I2C_ReceiveData:
1514                     ; 430   return ((uint8_t)I2C->DR);
1516  03f6 c65216        	ld	a,21014
1519  03f9 81            	ret
1585                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1585                     ; 441 {
1586                     	switch	.text
1587  03fa               _I2C_Send7bitAddress:
1589  03fa 89            	pushw	x
1590       00000000      OFST:	set	0
1593                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1595  03fb 9e            	ld	a,xh
1596  03fc a501          	bcp	a,#1
1597  03fe 2603          	jrne	L002
1598  0400 4f            	clr	a
1599  0401 2010          	jra	L202
1600  0403               L002:
1601  0403 ae01bb        	ldw	x,#443
1602  0406 89            	pushw	x
1603  0407 ae0000        	ldw	x,#0
1604  040a 89            	pushw	x
1605  040b ae000c        	ldw	x,#L131
1606  040e cd0000        	call	_assert_failed
1608  0411 5b04          	addw	sp,#4
1609  0413               L202:
1610                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1612  0413 0d02          	tnz	(OFST+2,sp)
1613  0415 2706          	jreq	L602
1614  0417 7b02          	ld	a,(OFST+2,sp)
1615  0419 a101          	cp	a,#1
1616  041b 2603          	jrne	L402
1617  041d               L602:
1618  041d 4f            	clr	a
1619  041e 2010          	jra	L012
1620  0420               L402:
1621  0420 ae01bc        	ldw	x,#444
1622  0423 89            	pushw	x
1623  0424 ae0000        	ldw	x,#0
1624  0427 89            	pushw	x
1625  0428 ae000c        	ldw	x,#L131
1626  042b cd0000        	call	_assert_failed
1628  042e 5b04          	addw	sp,#4
1629  0430               L012:
1630                     ; 447   Address &= (uint8_t)0xFE;
1632  0430 7b01          	ld	a,(OFST+1,sp)
1633  0432 a4fe          	and	a,#254
1634  0434 6b01          	ld	(OFST+1,sp),a
1635                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1637  0436 7b01          	ld	a,(OFST+1,sp)
1638  0438 1a02          	or	a,(OFST+2,sp)
1639  043a c75216        	ld	21014,a
1640                     ; 451 }
1643  043d 85            	popw	x
1644  043e 81            	ret
1678                     ; 458 void I2C_SendData(uint8_t Data)
1678                     ; 459 {
1679                     	switch	.text
1680  043f               _I2C_SendData:
1684                     ; 461   I2C->DR = Data;
1686  043f c75216        	ld	21014,a
1687                     ; 462 }
1690  0442 81            	ret
1915                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1915                     ; 579 {
1916                     	switch	.text
1917  0443               _I2C_CheckEvent:
1919  0443 89            	pushw	x
1920  0444 5206          	subw	sp,#6
1921       00000006      OFST:	set	6
1924                     ; 580   __IO uint16_t lastevent = 0x00;
1926  0446 5f            	clrw	x
1927  0447 1f04          	ldw	(OFST-2,sp),x
1929                     ; 581   uint8_t flag1 = 0x00 ;
1931                     ; 582   uint8_t flag2 = 0x00;
1933                     ; 583   ErrorStatus status = ERROR;
1935                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1937  0449 1e07          	ldw	x,(OFST+1,sp)
1938  044b a30682        	cpw	x,#1666
1939  044e 2769          	jreq	L022
1940  0450 1e07          	ldw	x,(OFST+1,sp)
1941  0452 a30202        	cpw	x,#514
1942  0455 2762          	jreq	L022
1943  0457 1e07          	ldw	x,(OFST+1,sp)
1944  0459 a31200        	cpw	x,#4608
1945  045c 275b          	jreq	L022
1946  045e 1e07          	ldw	x,(OFST+1,sp)
1947  0460 a30240        	cpw	x,#576
1948  0463 2754          	jreq	L022
1949  0465 1e07          	ldw	x,(OFST+1,sp)
1950  0467 a30350        	cpw	x,#848
1951  046a 274d          	jreq	L022
1952  046c 1e07          	ldw	x,(OFST+1,sp)
1953  046e a30684        	cpw	x,#1668
1954  0471 2746          	jreq	L022
1955  0473 1e07          	ldw	x,(OFST+1,sp)
1956  0475 a30794        	cpw	x,#1940
1957  0478 273f          	jreq	L022
1958  047a 1e07          	ldw	x,(OFST+1,sp)
1959  047c a30004        	cpw	x,#4
1960  047f 2738          	jreq	L022
1961  0481 1e07          	ldw	x,(OFST+1,sp)
1962  0483 a30010        	cpw	x,#16
1963  0486 2731          	jreq	L022
1964  0488 1e07          	ldw	x,(OFST+1,sp)
1965  048a a30301        	cpw	x,#769
1966  048d 272a          	jreq	L022
1967  048f 1e07          	ldw	x,(OFST+1,sp)
1968  0491 a30782        	cpw	x,#1922
1969  0494 2723          	jreq	L022
1970  0496 1e07          	ldw	x,(OFST+1,sp)
1971  0498 a30302        	cpw	x,#770
1972  049b 271c          	jreq	L022
1973  049d 1e07          	ldw	x,(OFST+1,sp)
1974  049f a30340        	cpw	x,#832
1975  04a2 2715          	jreq	L022
1976  04a4 1e07          	ldw	x,(OFST+1,sp)
1977  04a6 a30784        	cpw	x,#1924
1978  04a9 270e          	jreq	L022
1979  04ab 1e07          	ldw	x,(OFST+1,sp)
1980  04ad a30780        	cpw	x,#1920
1981  04b0 2707          	jreq	L022
1982  04b2 1e07          	ldw	x,(OFST+1,sp)
1983  04b4 a30308        	cpw	x,#776
1984  04b7 2603          	jrne	L612
1985  04b9               L022:
1986  04b9 4f            	clr	a
1987  04ba 2010          	jra	L222
1988  04bc               L612:
1989  04bc ae024a        	ldw	x,#586
1990  04bf 89            	pushw	x
1991  04c0 ae0000        	ldw	x,#0
1992  04c3 89            	pushw	x
1993  04c4 ae000c        	ldw	x,#L131
1994  04c7 cd0000        	call	_assert_failed
1996  04ca 5b04          	addw	sp,#4
1997  04cc               L222:
1998                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
2000  04cc 1e07          	ldw	x,(OFST+1,sp)
2001  04ce a30004        	cpw	x,#4
2002  04d1 260b          	jrne	L336
2003                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
2005  04d3 c65218        	ld	a,21016
2006  04d6 a404          	and	a,#4
2007  04d8 5f            	clrw	x
2008  04d9 97            	ld	xl,a
2009  04da 1f04          	ldw	(OFST-2,sp),x
2012  04dc 201f          	jra	L536
2013  04de               L336:
2014                     ; 594     flag1 = I2C->SR1;
2016  04de c65217        	ld	a,21015
2017  04e1 6b03          	ld	(OFST-3,sp),a
2019                     ; 595     flag2 = I2C->SR3;
2021  04e3 c65219        	ld	a,21017
2022  04e6 6b06          	ld	(OFST+0,sp),a
2024                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2026  04e8 7b03          	ld	a,(OFST-3,sp)
2027  04ea 5f            	clrw	x
2028  04eb 97            	ld	xl,a
2029  04ec 1f01          	ldw	(OFST-5,sp),x
2031  04ee 7b06          	ld	a,(OFST+0,sp)
2032  04f0 5f            	clrw	x
2033  04f1 97            	ld	xl,a
2034  04f2 4f            	clr	a
2035  04f3 02            	rlwa	x,a
2036  04f4 01            	rrwa	x,a
2037  04f5 1a02          	or	a,(OFST-4,sp)
2038  04f7 01            	rrwa	x,a
2039  04f8 1a01          	or	a,(OFST-5,sp)
2040  04fa 01            	rrwa	x,a
2041  04fb 1f04          	ldw	(OFST-2,sp),x
2043  04fd               L536:
2044                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2046  04fd 1e04          	ldw	x,(OFST-2,sp)
2047  04ff 01            	rrwa	x,a
2048  0500 1408          	and	a,(OFST+2,sp)
2049  0502 01            	rrwa	x,a
2050  0503 1407          	and	a,(OFST+1,sp)
2051  0505 01            	rrwa	x,a
2052  0506 1307          	cpw	x,(OFST+1,sp)
2053  0508 2606          	jrne	L736
2054                     ; 602     status = SUCCESS;
2056  050a a601          	ld	a,#1
2057  050c 6b06          	ld	(OFST+0,sp),a
2060  050e 2002          	jra	L146
2061  0510               L736:
2062                     ; 607     status = ERROR;
2064  0510 0f06          	clr	(OFST+0,sp)
2066  0512               L146:
2067                     ; 611   return status;
2069  0512 7b06          	ld	a,(OFST+0,sp)
2072  0514 5b08          	addw	sp,#8
2073  0516 81            	ret
2126                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2126                     ; 629 {
2127                     	switch	.text
2128  0517               _I2C_GetLastEvent:
2130  0517 5206          	subw	sp,#6
2131       00000006      OFST:	set	6
2134                     ; 630   __IO uint16_t lastevent = 0;
2136  0519 5f            	clrw	x
2137  051a 1f05          	ldw	(OFST-1,sp),x
2139                     ; 631   uint16_t flag1 = 0;
2141                     ; 632   uint16_t flag2 = 0;
2143                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2145  051c c65218        	ld	a,21016
2146  051f a504          	bcp	a,#4
2147  0521 2707          	jreq	L176
2148                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2150  0523 ae0004        	ldw	x,#4
2151  0526 1f05          	ldw	(OFST-1,sp),x
2154  0528 201b          	jra	L376
2155  052a               L176:
2156                     ; 641     flag1 = I2C->SR1;
2158  052a c65217        	ld	a,21015
2159  052d 5f            	clrw	x
2160  052e 97            	ld	xl,a
2161  052f 1f01          	ldw	(OFST-5,sp),x
2163                     ; 642     flag2 = I2C->SR3;
2165  0531 c65219        	ld	a,21017
2166  0534 5f            	clrw	x
2167  0535 97            	ld	xl,a
2168  0536 1f03          	ldw	(OFST-3,sp),x
2170                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2172  0538 1e03          	ldw	x,(OFST-3,sp)
2173  053a 4f            	clr	a
2174  053b 02            	rlwa	x,a
2175  053c 01            	rrwa	x,a
2176  053d 1a02          	or	a,(OFST-4,sp)
2177  053f 01            	rrwa	x,a
2178  0540 1a01          	or	a,(OFST-5,sp)
2179  0542 01            	rrwa	x,a
2180  0543 1f05          	ldw	(OFST-1,sp),x
2182  0545               L376:
2183                     ; 648   return (I2C_Event_TypeDef)lastevent;
2185  0545 1e05          	ldw	x,(OFST-1,sp)
2188  0547 5b06          	addw	sp,#6
2189  0549 81            	ret
2405                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2405                     ; 680 {
2406                     	switch	.text
2407  054a               _I2C_GetFlagStatus:
2409  054a 89            	pushw	x
2410  054b 89            	pushw	x
2411       00000002      OFST:	set	2
2414                     ; 681   uint8_t tempreg = 0;
2416  054c 0f02          	clr	(OFST+0,sp)
2418                     ; 682   uint8_t regindex = 0;
2420                     ; 683   FlagStatus bitstatus = RESET;
2422                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2424  054e a30180        	cpw	x,#384
2425  0551 274b          	jreq	L232
2426  0553 a30140        	cpw	x,#320
2427  0556 2746          	jreq	L232
2428  0558 a30110        	cpw	x,#272
2429  055b 2741          	jreq	L232
2430  055d a30108        	cpw	x,#264
2431  0560 273c          	jreq	L232
2432  0562 a30104        	cpw	x,#260
2433  0565 2737          	jreq	L232
2434  0567 a30102        	cpw	x,#258
2435  056a 2732          	jreq	L232
2436  056c a30101        	cpw	x,#257
2437  056f 272d          	jreq	L232
2438  0571 a30220        	cpw	x,#544
2439  0574 2728          	jreq	L232
2440  0576 a30208        	cpw	x,#520
2441  0579 2723          	jreq	L232
2442  057b a30204        	cpw	x,#516
2443  057e 271e          	jreq	L232
2444  0580 a30202        	cpw	x,#514
2445  0583 2719          	jreq	L232
2446  0585 a30201        	cpw	x,#513
2447  0588 2714          	jreq	L232
2448  058a a30310        	cpw	x,#784
2449  058d 270f          	jreq	L232
2450  058f a30304        	cpw	x,#772
2451  0592 270a          	jreq	L232
2452  0594 a30302        	cpw	x,#770
2453  0597 2705          	jreq	L232
2454  0599 a30301        	cpw	x,#769
2455  059c 2603          	jrne	L032
2456  059e               L232:
2457  059e 4f            	clr	a
2458  059f 2010          	jra	L432
2459  05a1               L032:
2460  05a1 ae02ae        	ldw	x,#686
2461  05a4 89            	pushw	x
2462  05a5 ae0000        	ldw	x,#0
2463  05a8 89            	pushw	x
2464  05a9 ae000c        	ldw	x,#L131
2465  05ac cd0000        	call	_assert_failed
2467  05af 5b04          	addw	sp,#4
2468  05b1               L432:
2469                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2471  05b1 7b03          	ld	a,(OFST+1,sp)
2472  05b3 6b01          	ld	(OFST-1,sp),a
2474                     ; 691   switch (regindex)
2476  05b5 7b01          	ld	a,(OFST-1,sp)
2478                     ; 708     default:
2478                     ; 709       break;
2479  05b7 4a            	dec	a
2480  05b8 2708          	jreq	L576
2481  05ba 4a            	dec	a
2482  05bb 270c          	jreq	L776
2483  05bd 4a            	dec	a
2484  05be 2710          	jreq	L107
2485  05c0 2013          	jra	L5101
2486  05c2               L576:
2487                     ; 694     case 0x01:
2487                     ; 695       tempreg = (uint8_t)I2C->SR1;
2489  05c2 c65217        	ld	a,21015
2490  05c5 6b02          	ld	(OFST+0,sp),a
2492                     ; 696       break;
2494  05c7 200c          	jra	L5101
2495  05c9               L776:
2496                     ; 699     case 0x02:
2496                     ; 700       tempreg = (uint8_t)I2C->SR2;
2498  05c9 c65218        	ld	a,21016
2499  05cc 6b02          	ld	(OFST+0,sp),a
2501                     ; 701       break;
2503  05ce 2005          	jra	L5101
2504  05d0               L107:
2505                     ; 704     case 0x03:
2505                     ; 705       tempreg = (uint8_t)I2C->SR3;
2507  05d0 c65219        	ld	a,21017
2508  05d3 6b02          	ld	(OFST+0,sp),a
2510                     ; 706       break;
2512  05d5               L307:
2513                     ; 708     default:
2513                     ; 709       break;
2515  05d5               L5101:
2516                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2518  05d5 7b04          	ld	a,(OFST+2,sp)
2519  05d7 1502          	bcp	a,(OFST+0,sp)
2520  05d9 2706          	jreq	L7101
2521                     ; 716     bitstatus = SET;
2523  05db a601          	ld	a,#1
2524  05dd 6b02          	ld	(OFST+0,sp),a
2527  05df 2002          	jra	L1201
2528  05e1               L7101:
2529                     ; 721     bitstatus = RESET;
2531  05e1 0f02          	clr	(OFST+0,sp)
2533  05e3               L1201:
2534                     ; 724   return bitstatus;
2536  05e3 7b02          	ld	a,(OFST+0,sp)
2539  05e5 5b04          	addw	sp,#4
2540  05e7 81            	ret
2585                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2585                     ; 760 {
2586                     	switch	.text
2587  05e8               _I2C_ClearFlag:
2589  05e8 89            	pushw	x
2590  05e9 89            	pushw	x
2591       00000002      OFST:	set	2
2594                     ; 761   uint16_t flagpos = 0;
2596                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2598  05ea 01            	rrwa	x,a
2599  05eb 9f            	ld	a,xl
2600  05ec a4fd          	and	a,#253
2601  05ee 97            	ld	xl,a
2602  05ef 4f            	clr	a
2603  05f0 02            	rlwa	x,a
2604  05f1 5d            	tnzw	x
2605  05f2 2607          	jrne	L042
2606  05f4 1e03          	ldw	x,(OFST+1,sp)
2607  05f6 2703          	jreq	L042
2608  05f8 4f            	clr	a
2609  05f9 2010          	jra	L242
2610  05fb               L042:
2611  05fb ae02fb        	ldw	x,#763
2612  05fe 89            	pushw	x
2613  05ff ae0000        	ldw	x,#0
2614  0602 89            	pushw	x
2615  0603 ae000c        	ldw	x,#L131
2616  0606 cd0000        	call	_assert_failed
2618  0609 5b04          	addw	sp,#4
2619  060b               L242:
2620                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2622  060b 7b03          	ld	a,(OFST+1,sp)
2623  060d 97            	ld	xl,a
2624  060e 7b04          	ld	a,(OFST+2,sp)
2625  0610 a4ff          	and	a,#255
2626  0612 5f            	clrw	x
2627  0613 02            	rlwa	x,a
2628  0614 1f01          	ldw	(OFST-1,sp),x
2629  0616 01            	rrwa	x,a
2631                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2633  0617 7b02          	ld	a,(OFST+0,sp)
2634  0619 43            	cpl	a
2635  061a c75218        	ld	21016,a
2636                     ; 769 }
2639  061d 5b04          	addw	sp,#4
2640  061f 81            	ret
2807                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2807                     ; 792 {
2808                     	switch	.text
2809  0620               _I2C_GetITStatus:
2811  0620 89            	pushw	x
2812  0621 5204          	subw	sp,#4
2813       00000004      OFST:	set	4
2816                     ; 793   ITStatus bitstatus = RESET;
2818                     ; 794   __IO uint8_t enablestatus = 0;
2820  0623 0f03          	clr	(OFST-1,sp)
2822                     ; 795   uint16_t tempregister = 0;
2824                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2826  0625 a31680        	cpw	x,#5760
2827  0628 2737          	jreq	L052
2828  062a a31640        	cpw	x,#5696
2829  062d 2732          	jreq	L052
2830  062f a31210        	cpw	x,#4624
2831  0632 272d          	jreq	L052
2832  0634 a31208        	cpw	x,#4616
2833  0637 2728          	jreq	L052
2834  0639 a31204        	cpw	x,#4612
2835  063c 2723          	jreq	L052
2836  063e a31202        	cpw	x,#4610
2837  0641 271e          	jreq	L052
2838  0643 a31201        	cpw	x,#4609
2839  0646 2719          	jreq	L052
2840  0648 a32220        	cpw	x,#8736
2841  064b 2714          	jreq	L052
2842  064d a32108        	cpw	x,#8456
2843  0650 270f          	jreq	L052
2844  0652 a32104        	cpw	x,#8452
2845  0655 270a          	jreq	L052
2846  0657 a32102        	cpw	x,#8450
2847  065a 2705          	jreq	L052
2848  065c a32101        	cpw	x,#8449
2849  065f 2603          	jrne	L642
2850  0661               L052:
2851  0661 4f            	clr	a
2852  0662 2010          	jra	L252
2853  0664               L642:
2854  0664 ae031e        	ldw	x,#798
2855  0667 89            	pushw	x
2856  0668 ae0000        	ldw	x,#0
2857  066b 89            	pushw	x
2858  066c ae000c        	ldw	x,#L131
2859  066f cd0000        	call	_assert_failed
2861  0672 5b04          	addw	sp,#4
2862  0674               L252:
2863                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2865  0674 7b05          	ld	a,(OFST+1,sp)
2866  0676 a407          	and	a,#7
2867  0678 5f            	clrw	x
2868  0679 97            	ld	xl,a
2869  067a 1f01          	ldw	(OFST-3,sp),x
2871                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2873  067c c6521a        	ld	a,21018
2874  067f 1402          	and	a,(OFST-2,sp)
2875  0681 6b03          	ld	(OFST-1,sp),a
2877                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2879  0683 7b05          	ld	a,(OFST+1,sp)
2880  0685 97            	ld	xl,a
2881  0686 7b06          	ld	a,(OFST+2,sp)
2882  0688 9f            	ld	a,xl
2883  0689 a430          	and	a,#48
2884  068b 97            	ld	xl,a
2885  068c 4f            	clr	a
2886  068d 02            	rlwa	x,a
2887  068e a30100        	cpw	x,#256
2888  0691 2615          	jrne	L3311
2889                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2891  0693 c65217        	ld	a,21015
2892  0696 1506          	bcp	a,(OFST+2,sp)
2893  0698 270a          	jreq	L5311
2895  069a 0d03          	tnz	(OFST-1,sp)
2896  069c 2706          	jreq	L5311
2897                     ; 811       bitstatus = SET;
2899  069e a601          	ld	a,#1
2900  06a0 6b04          	ld	(OFST+0,sp),a
2903  06a2 2017          	jra	L1411
2904  06a4               L5311:
2905                     ; 816       bitstatus = RESET;
2907  06a4 0f04          	clr	(OFST+0,sp)
2909  06a6 2013          	jra	L1411
2910  06a8               L3311:
2911                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2913  06a8 c65218        	ld	a,21016
2914  06ab 1506          	bcp	a,(OFST+2,sp)
2915  06ad 270a          	jreq	L3411
2917  06af 0d03          	tnz	(OFST-1,sp)
2918  06b1 2706          	jreq	L3411
2919                     ; 825       bitstatus = SET;
2921  06b3 a601          	ld	a,#1
2922  06b5 6b04          	ld	(OFST+0,sp),a
2925  06b7 2002          	jra	L1411
2926  06b9               L3411:
2927                     ; 830       bitstatus = RESET;
2929  06b9 0f04          	clr	(OFST+0,sp)
2931  06bb               L1411:
2932                     ; 834   return  bitstatus;
2934  06bb 7b04          	ld	a,(OFST+0,sp)
2937  06bd 5b06          	addw	sp,#6
2938  06bf 81            	ret
2984                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2984                     ; 872 {
2985                     	switch	.text
2986  06c0               _I2C_ClearITPendingBit:
2988  06c0 89            	pushw	x
2989  06c1 89            	pushw	x
2990       00000002      OFST:	set	2
2993                     ; 873   uint16_t flagpos = 0;
2995                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2997  06c2 a32220        	cpw	x,#8736
2998  06c5 2714          	jreq	L062
2999  06c7 a32108        	cpw	x,#8456
3000  06ca 270f          	jreq	L062
3001  06cc a32104        	cpw	x,#8452
3002  06cf 270a          	jreq	L062
3003  06d1 a32102        	cpw	x,#8450
3004  06d4 2705          	jreq	L062
3005  06d6 a32101        	cpw	x,#8449
3006  06d9 2603          	jrne	L652
3007  06db               L062:
3008  06db 4f            	clr	a
3009  06dc 2010          	jra	L262
3010  06de               L652:
3011  06de ae036c        	ldw	x,#876
3012  06e1 89            	pushw	x
3013  06e2 ae0000        	ldw	x,#0
3014  06e5 89            	pushw	x
3015  06e6 ae000c        	ldw	x,#L131
3016  06e9 cd0000        	call	_assert_failed
3018  06ec 5b04          	addw	sp,#4
3019  06ee               L262:
3020                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
3022  06ee 7b03          	ld	a,(OFST+1,sp)
3023  06f0 97            	ld	xl,a
3024  06f1 7b04          	ld	a,(OFST+2,sp)
3025  06f3 a4ff          	and	a,#255
3026  06f5 5f            	clrw	x
3027  06f6 02            	rlwa	x,a
3028  06f7 1f01          	ldw	(OFST-1,sp),x
3029  06f9 01            	rrwa	x,a
3031                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3033  06fa 7b02          	ld	a,(OFST+0,sp)
3034  06fc 43            	cpl	a
3035  06fd c75218        	ld	21016,a
3036                     ; 883 }
3039  0700 5b04          	addw	sp,#4
3040  0702 81            	ret
3053                     	xdef	_I2C_ClearITPendingBit
3054                     	xdef	_I2C_GetITStatus
3055                     	xdef	_I2C_ClearFlag
3056                     	xdef	_I2C_GetFlagStatus
3057                     	xdef	_I2C_GetLastEvent
3058                     	xdef	_I2C_CheckEvent
3059                     	xdef	_I2C_SendData
3060                     	xdef	_I2C_Send7bitAddress
3061                     	xdef	_I2C_ReceiveData
3062                     	xdef	_I2C_ITConfig
3063                     	xdef	_I2C_FastModeDutyCycleConfig
3064                     	xdef	_I2C_AcknowledgeConfig
3065                     	xdef	_I2C_StretchClockCmd
3066                     	xdef	_I2C_SoftwareResetCmd
3067                     	xdef	_I2C_GenerateSTOP
3068                     	xdef	_I2C_GenerateSTART
3069                     	xdef	_I2C_GeneralCallCmd
3070                     	xdef	_I2C_Cmd
3071                     	xdef	_I2C_Init
3072                     	xdef	_I2C_DeInit
3073                     	xref	_assert_failed
3074                     	switch	.const
3075  000c               L131:
3076  000c 7372635c7374  	dc.b	"src\stm8s_i2c.c",0
3077                     	xref.b	c_lreg
3078                     	xref.b	c_x
3098                     	xref	c_sdivx
3099                     	xref	c_ludv
3100                     	xref	c_rtol
3101                     	xref	c_smul
3102                     	xref	c_lmul
3103                     	xref	c_lcmp
3104                     	xref	c_ltor
3105                     	xref	c_lzmp
3106                     	end
