   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 52 void ADC1_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _ADC1_DeInit:
  49                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  51  0000 725f5400      	clr	21504
  52                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  54  0004 725f5401      	clr	21505
  55                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  57  0008 725f5402      	clr	21506
  58                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  60  000c 725f5403      	clr	21507
  61                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  63  0010 725f5406      	clr	21510
  64                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  66  0014 725f5407      	clr	21511
  67                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  69  0018 35ff5408      	mov	21512,#255
  70                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  72  001c 35035409      	mov	21513,#3
  73                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  75  0020 725f540a      	clr	21514
  76                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  78  0024 725f540b      	clr	21515
  79                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  81  0028 725f540e      	clr	21518
  82                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  84  002c 725f540f      	clr	21519
  85                     ; 66 }
  88  0030 81            	ret
 540                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 540                     ; 89 {
 541                     	switch	.text
 542  0031               _ADC1_Init:
 544  0031 89            	pushw	x
 545       00000000      OFST:	set	0
 548                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 550  0032 9e            	ld	a,xh
 551  0033 4d            	tnz	a
 552  0034 2705          	jreq	L21
 553  0036 9e            	ld	a,xh
 554  0037 a101          	cp	a,#1
 555  0039 2603          	jrne	L01
 556  003b               L21:
 557  003b 4f            	clr	a
 558  003c 2010          	jra	L41
 559  003e               L01:
 560  003e ae005b        	ldw	x,#91
 561  0041 89            	pushw	x
 562  0042 ae0000        	ldw	x,#0
 563  0045 89            	pushw	x
 564  0046 ae0000        	ldw	x,#L542
 565  0049 cd0000        	call	_assert_failed
 567  004c 5b04          	addw	sp,#4
 568  004e               L41:
 569                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 571  004e 0d02          	tnz	(OFST+2,sp)
 572  0050 273c          	jreq	L02
 573  0052 7b02          	ld	a,(OFST+2,sp)
 574  0054 a101          	cp	a,#1
 575  0056 2736          	jreq	L02
 576  0058 7b02          	ld	a,(OFST+2,sp)
 577  005a a102          	cp	a,#2
 578  005c 2730          	jreq	L02
 579  005e 7b02          	ld	a,(OFST+2,sp)
 580  0060 a103          	cp	a,#3
 581  0062 272a          	jreq	L02
 582  0064 7b02          	ld	a,(OFST+2,sp)
 583  0066 a104          	cp	a,#4
 584  0068 2724          	jreq	L02
 585  006a 7b02          	ld	a,(OFST+2,sp)
 586  006c a105          	cp	a,#5
 587  006e 271e          	jreq	L02
 588  0070 7b02          	ld	a,(OFST+2,sp)
 589  0072 a106          	cp	a,#6
 590  0074 2718          	jreq	L02
 591  0076 7b02          	ld	a,(OFST+2,sp)
 592  0078 a107          	cp	a,#7
 593  007a 2712          	jreq	L02
 594  007c 7b02          	ld	a,(OFST+2,sp)
 595  007e a108          	cp	a,#8
 596  0080 270c          	jreq	L02
 597  0082 7b02          	ld	a,(OFST+2,sp)
 598  0084 a10c          	cp	a,#12
 599  0086 2706          	jreq	L02
 600  0088 7b02          	ld	a,(OFST+2,sp)
 601  008a a109          	cp	a,#9
 602  008c 2603          	jrne	L61
 603  008e               L02:
 604  008e 4f            	clr	a
 605  008f 2010          	jra	L22
 606  0091               L61:
 607  0091 ae005c        	ldw	x,#92
 608  0094 89            	pushw	x
 609  0095 ae0000        	ldw	x,#0
 610  0098 89            	pushw	x
 611  0099 ae0000        	ldw	x,#L542
 612  009c cd0000        	call	_assert_failed
 614  009f 5b04          	addw	sp,#4
 615  00a1               L22:
 616                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 618  00a1 0d05          	tnz	(OFST+5,sp)
 619  00a3 272a          	jreq	L62
 620  00a5 7b05          	ld	a,(OFST+5,sp)
 621  00a7 a110          	cp	a,#16
 622  00a9 2724          	jreq	L62
 623  00ab 7b05          	ld	a,(OFST+5,sp)
 624  00ad a120          	cp	a,#32
 625  00af 271e          	jreq	L62
 626  00b1 7b05          	ld	a,(OFST+5,sp)
 627  00b3 a130          	cp	a,#48
 628  00b5 2718          	jreq	L62
 629  00b7 7b05          	ld	a,(OFST+5,sp)
 630  00b9 a140          	cp	a,#64
 631  00bb 2712          	jreq	L62
 632  00bd 7b05          	ld	a,(OFST+5,sp)
 633  00bf a150          	cp	a,#80
 634  00c1 270c          	jreq	L62
 635  00c3 7b05          	ld	a,(OFST+5,sp)
 636  00c5 a160          	cp	a,#96
 637  00c7 2706          	jreq	L62
 638  00c9 7b05          	ld	a,(OFST+5,sp)
 639  00cb a170          	cp	a,#112
 640  00cd 2603          	jrne	L42
 641  00cf               L62:
 642  00cf 4f            	clr	a
 643  00d0 2010          	jra	L03
 644  00d2               L42:
 645  00d2 ae005d        	ldw	x,#93
 646  00d5 89            	pushw	x
 647  00d6 ae0000        	ldw	x,#0
 648  00d9 89            	pushw	x
 649  00da ae0000        	ldw	x,#L542
 650  00dd cd0000        	call	_assert_failed
 652  00e0 5b04          	addw	sp,#4
 653  00e2               L03:
 654                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 656  00e2 0d06          	tnz	(OFST+6,sp)
 657  00e4 2706          	jreq	L43
 658  00e6 7b06          	ld	a,(OFST+6,sp)
 659  00e8 a110          	cp	a,#16
 660  00ea 2603          	jrne	L23
 661  00ec               L43:
 662  00ec 4f            	clr	a
 663  00ed 2010          	jra	L63
 664  00ef               L23:
 665  00ef ae005e        	ldw	x,#94
 666  00f2 89            	pushw	x
 667  00f3 ae0000        	ldw	x,#0
 668  00f6 89            	pushw	x
 669  00f7 ae0000        	ldw	x,#L542
 670  00fa cd0000        	call	_assert_failed
 672  00fd 5b04          	addw	sp,#4
 673  00ff               L63:
 674                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 676  00ff 0d07          	tnz	(OFST+7,sp)
 677  0101 2706          	jreq	L24
 678  0103 7b07          	ld	a,(OFST+7,sp)
 679  0105 a101          	cp	a,#1
 680  0107 2603          	jrne	L04
 681  0109               L24:
 682  0109 4f            	clr	a
 683  010a 2010          	jra	L44
 684  010c               L04:
 685  010c ae005f        	ldw	x,#95
 686  010f 89            	pushw	x
 687  0110 ae0000        	ldw	x,#0
 688  0113 89            	pushw	x
 689  0114 ae0000        	ldw	x,#L542
 690  0117 cd0000        	call	_assert_failed
 692  011a 5b04          	addw	sp,#4
 693  011c               L44:
 694                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 696  011c 0d08          	tnz	(OFST+8,sp)
 697  011e 2706          	jreq	L05
 698  0120 7b08          	ld	a,(OFST+8,sp)
 699  0122 a108          	cp	a,#8
 700  0124 2603          	jrne	L64
 701  0126               L05:
 702  0126 4f            	clr	a
 703  0127 2010          	jra	L25
 704  0129               L64:
 705  0129 ae0060        	ldw	x,#96
 706  012c 89            	pushw	x
 707  012d ae0000        	ldw	x,#0
 708  0130 89            	pushw	x
 709  0131 ae0000        	ldw	x,#L542
 710  0134 cd0000        	call	_assert_failed
 712  0137 5b04          	addw	sp,#4
 713  0139               L25:
 714                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 716  0139 0d09          	tnz	(OFST+9,sp)
 717  013b 2742          	jreq	L65
 718  013d 7b09          	ld	a,(OFST+9,sp)
 719  013f a101          	cp	a,#1
 720  0141 273c          	jreq	L65
 721  0143 7b09          	ld	a,(OFST+9,sp)
 722  0145 a102          	cp	a,#2
 723  0147 2736          	jreq	L65
 724  0149 7b09          	ld	a,(OFST+9,sp)
 725  014b a103          	cp	a,#3
 726  014d 2730          	jreq	L65
 727  014f 7b09          	ld	a,(OFST+9,sp)
 728  0151 a104          	cp	a,#4
 729  0153 272a          	jreq	L65
 730  0155 7b09          	ld	a,(OFST+9,sp)
 731  0157 a105          	cp	a,#5
 732  0159 2724          	jreq	L65
 733  015b 7b09          	ld	a,(OFST+9,sp)
 734  015d a106          	cp	a,#6
 735  015f 271e          	jreq	L65
 736  0161 7b09          	ld	a,(OFST+9,sp)
 737  0163 a107          	cp	a,#7
 738  0165 2718          	jreq	L65
 739  0167 7b09          	ld	a,(OFST+9,sp)
 740  0169 a108          	cp	a,#8
 741  016b 2712          	jreq	L65
 742  016d 7b09          	ld	a,(OFST+9,sp)
 743  016f a10c          	cp	a,#12
 744  0171 270c          	jreq	L65
 745  0173 7b09          	ld	a,(OFST+9,sp)
 746  0175 a1ff          	cp	a,#255
 747  0177 2706          	jreq	L65
 748  0179 7b09          	ld	a,(OFST+9,sp)
 749  017b a109          	cp	a,#9
 750  017d 2603          	jrne	L45
 751  017f               L65:
 752  017f 4f            	clr	a
 753  0180 2010          	jra	L06
 754  0182               L45:
 755  0182 ae0061        	ldw	x,#97
 756  0185 89            	pushw	x
 757  0186 ae0000        	ldw	x,#0
 758  0189 89            	pushw	x
 759  018a ae0000        	ldw	x,#L542
 760  018d cd0000        	call	_assert_failed
 762  0190 5b04          	addw	sp,#4
 763  0192               L06:
 764                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 766  0192 0d0a          	tnz	(OFST+10,sp)
 767  0194 2706          	jreq	L46
 768  0196 7b0a          	ld	a,(OFST+10,sp)
 769  0198 a101          	cp	a,#1
 770  019a 2603          	jrne	L26
 771  019c               L46:
 772  019c 4f            	clr	a
 773  019d 2010          	jra	L66
 774  019f               L26:
 775  019f ae0062        	ldw	x,#98
 776  01a2 89            	pushw	x
 777  01a3 ae0000        	ldw	x,#0
 778  01a6 89            	pushw	x
 779  01a7 ae0000        	ldw	x,#L542
 780  01aa cd0000        	call	_assert_failed
 782  01ad 5b04          	addw	sp,#4
 783  01af               L66:
 784                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 786  01af 7b08          	ld	a,(OFST+8,sp)
 787  01b1 88            	push	a
 788  01b2 7b03          	ld	a,(OFST+3,sp)
 789  01b4 97            	ld	xl,a
 790  01b5 7b02          	ld	a,(OFST+2,sp)
 791  01b7 95            	ld	xh,a
 792  01b8 cd03ed        	call	_ADC1_ConversionConfig
 794  01bb 84            	pop	a
 795                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 797  01bc 7b05          	ld	a,(OFST+5,sp)
 798  01be cd02ae        	call	_ADC1_PrescalerConfig
 800                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 802  01c1 7b07          	ld	a,(OFST+7,sp)
 803  01c3 97            	ld	xl,a
 804  01c4 7b06          	ld	a,(OFST+6,sp)
 805  01c6 95            	ld	xh,a
 806  01c7 cd04a8        	call	_ADC1_ExternalTriggerConfig
 808                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 810  01ca 7b0a          	ld	a,(OFST+10,sp)
 811  01cc 97            	ld	xl,a
 812  01cd 7b09          	ld	a,(OFST+9,sp)
 813  01cf 95            	ld	xh,a
 814  01d0 cd02f3        	call	_ADC1_SchmittTriggerConfig
 816                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 818  01d3 72105401      	bset	21505,#0
 819                     ; 119 }
 822  01d7 85            	popw	x
 823  01d8 81            	ret
 859                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 859                     ; 127 {
 860                     	switch	.text
 861  01d9               _ADC1_Cmd:
 863  01d9 88            	push	a
 864       00000000      OFST:	set	0
 867                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869  01da 4d            	tnz	a
 870  01db 2704          	jreq	L47
 871  01dd a101          	cp	a,#1
 872  01df 2603          	jrne	L27
 873  01e1               L47:
 874  01e1 4f            	clr	a
 875  01e2 2010          	jra	L67
 876  01e4               L27:
 877  01e4 ae0081        	ldw	x,#129
 878  01e7 89            	pushw	x
 879  01e8 ae0000        	ldw	x,#0
 880  01eb 89            	pushw	x
 881  01ec ae0000        	ldw	x,#L542
 882  01ef cd0000        	call	_assert_failed
 884  01f2 5b04          	addw	sp,#4
 885  01f4               L67:
 886                     ; 131   if (NewState != DISABLE)
 888  01f4 0d01          	tnz	(OFST+1,sp)
 889  01f6 2706          	jreq	L562
 890                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 892  01f8 72105401      	bset	21505,#0
 894  01fc 2004          	jra	L762
 895  01fe               L562:
 896                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 898  01fe 72115401      	bres	21505,#0
 899  0202               L762:
 900                     ; 139 }
 903  0202 84            	pop	a
 904  0203 81            	ret
 940                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 940                     ; 147 {
 941                     	switch	.text
 942  0204               _ADC1_ScanModeCmd:
 944  0204 88            	push	a
 945       00000000      OFST:	set	0
 948                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 950  0205 4d            	tnz	a
 951  0206 2704          	jreq	L401
 952  0208 a101          	cp	a,#1
 953  020a 2603          	jrne	L201
 954  020c               L401:
 955  020c 4f            	clr	a
 956  020d 2010          	jra	L601
 957  020f               L201:
 958  020f ae0095        	ldw	x,#149
 959  0212 89            	pushw	x
 960  0213 ae0000        	ldw	x,#0
 961  0216 89            	pushw	x
 962  0217 ae0000        	ldw	x,#L542
 963  021a cd0000        	call	_assert_failed
 965  021d 5b04          	addw	sp,#4
 966  021f               L601:
 967                     ; 151   if (NewState != DISABLE)
 969  021f 0d01          	tnz	(OFST+1,sp)
 970  0221 2706          	jreq	L703
 971                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 973  0223 72125402      	bset	21506,#1
 975  0227 2004          	jra	L113
 976  0229               L703:
 977                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 979  0229 72135402      	bres	21506,#1
 980  022d               L113:
 981                     ; 159 }
 984  022d 84            	pop	a
 985  022e 81            	ret
1021                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1021                     ; 167 {
1022                     	switch	.text
1023  022f               _ADC1_DataBufferCmd:
1025  022f 88            	push	a
1026       00000000      OFST:	set	0
1029                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1031  0230 4d            	tnz	a
1032  0231 2704          	jreq	L411
1033  0233 a101          	cp	a,#1
1034  0235 2603          	jrne	L211
1035  0237               L411:
1036  0237 4f            	clr	a
1037  0238 2010          	jra	L611
1038  023a               L211:
1039  023a ae00a9        	ldw	x,#169
1040  023d 89            	pushw	x
1041  023e ae0000        	ldw	x,#0
1042  0241 89            	pushw	x
1043  0242 ae0000        	ldw	x,#L542
1044  0245 cd0000        	call	_assert_failed
1046  0248 5b04          	addw	sp,#4
1047  024a               L611:
1048                     ; 171   if (NewState != DISABLE)
1050  024a 0d01          	tnz	(OFST+1,sp)
1051  024c 2706          	jreq	L133
1052                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1054  024e 721e5403      	bset	21507,#7
1056  0252 2004          	jra	L333
1057  0254               L133:
1058                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1060  0254 721f5403      	bres	21507,#7
1061  0258               L333:
1062                     ; 179 }
1065  0258 84            	pop	a
1066  0259 81            	ret
1223                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1223                     ; 191 {
1224                     	switch	.text
1225  025a               _ADC1_ITConfig:
1227  025a 89            	pushw	x
1228       00000000      OFST:	set	0
1231                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1233  025b a30020        	cpw	x,#32
1234  025e 2705          	jreq	L421
1235  0260 a30010        	cpw	x,#16
1236  0263 2603          	jrne	L221
1237  0265               L421:
1238  0265 4f            	clr	a
1239  0266 2010          	jra	L621
1240  0268               L221:
1241  0268 ae00c1        	ldw	x,#193
1242  026b 89            	pushw	x
1243  026c ae0000        	ldw	x,#0
1244  026f 89            	pushw	x
1245  0270 ae0000        	ldw	x,#L542
1246  0273 cd0000        	call	_assert_failed
1248  0276 5b04          	addw	sp,#4
1249  0278               L621:
1250                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1252  0278 0d05          	tnz	(OFST+5,sp)
1253  027a 2706          	jreq	L231
1254  027c 7b05          	ld	a,(OFST+5,sp)
1255  027e a101          	cp	a,#1
1256  0280 2603          	jrne	L031
1257  0282               L231:
1258  0282 4f            	clr	a
1259  0283 2010          	jra	L431
1260  0285               L031:
1261  0285 ae00c2        	ldw	x,#194
1262  0288 89            	pushw	x
1263  0289 ae0000        	ldw	x,#0
1264  028c 89            	pushw	x
1265  028d ae0000        	ldw	x,#L542
1266  0290 cd0000        	call	_assert_failed
1268  0293 5b04          	addw	sp,#4
1269  0295               L431:
1270                     ; 196   if (NewState != DISABLE)
1272  0295 0d05          	tnz	(OFST+5,sp)
1273  0297 270a          	jreq	L124
1274                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1276  0299 c65400        	ld	a,21504
1277  029c 1a02          	or	a,(OFST+2,sp)
1278  029e c75400        	ld	21504,a
1280  02a1 2009          	jra	L324
1281  02a3               L124:
1282                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1284  02a3 7b02          	ld	a,(OFST+2,sp)
1285  02a5 43            	cpl	a
1286  02a6 c45400        	and	a,21504
1287  02a9 c75400        	ld	21504,a
1288  02ac               L324:
1289                     ; 206 }
1292  02ac 85            	popw	x
1293  02ad 81            	ret
1330                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1330                     ; 215 {
1331                     	switch	.text
1332  02ae               _ADC1_PrescalerConfig:
1334  02ae 88            	push	a
1335       00000000      OFST:	set	0
1338                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1340  02af 4d            	tnz	a
1341  02b0 271c          	jreq	L241
1342  02b2 a110          	cp	a,#16
1343  02b4 2718          	jreq	L241
1344  02b6 a120          	cp	a,#32
1345  02b8 2714          	jreq	L241
1346  02ba a130          	cp	a,#48
1347  02bc 2710          	jreq	L241
1348  02be a140          	cp	a,#64
1349  02c0 270c          	jreq	L241
1350  02c2 a150          	cp	a,#80
1351  02c4 2708          	jreq	L241
1352  02c6 a160          	cp	a,#96
1353  02c8 2704          	jreq	L241
1354  02ca a170          	cp	a,#112
1355  02cc 2603          	jrne	L041
1356  02ce               L241:
1357  02ce 4f            	clr	a
1358  02cf 2010          	jra	L441
1359  02d1               L041:
1360  02d1 ae00d9        	ldw	x,#217
1361  02d4 89            	pushw	x
1362  02d5 ae0000        	ldw	x,#0
1363  02d8 89            	pushw	x
1364  02d9 ae0000        	ldw	x,#L542
1365  02dc cd0000        	call	_assert_failed
1367  02df 5b04          	addw	sp,#4
1368  02e1               L441:
1369                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1371  02e1 c65401        	ld	a,21505
1372  02e4 a48f          	and	a,#143
1373  02e6 c75401        	ld	21505,a
1374                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1376  02e9 c65401        	ld	a,21505
1377  02ec 1a01          	or	a,(OFST+1,sp)
1378  02ee c75401        	ld	21505,a
1379                     ; 223 }
1382  02f1 84            	pop	a
1383  02f2 81            	ret
1431                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1431                     ; 234 {
1432                     	switch	.text
1433  02f3               _ADC1_SchmittTriggerConfig:
1435  02f3 89            	pushw	x
1436       00000000      OFST:	set	0
1439                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1441  02f4 9e            	ld	a,xh
1442  02f5 4d            	tnz	a
1443  02f6 2737          	jreq	L251
1444  02f8 9e            	ld	a,xh
1445  02f9 a101          	cp	a,#1
1446  02fb 2732          	jreq	L251
1447  02fd 9e            	ld	a,xh
1448  02fe a102          	cp	a,#2
1449  0300 272d          	jreq	L251
1450  0302 9e            	ld	a,xh
1451  0303 a103          	cp	a,#3
1452  0305 2728          	jreq	L251
1453  0307 9e            	ld	a,xh
1454  0308 a104          	cp	a,#4
1455  030a 2723          	jreq	L251
1456  030c 9e            	ld	a,xh
1457  030d a105          	cp	a,#5
1458  030f 271e          	jreq	L251
1459  0311 9e            	ld	a,xh
1460  0312 a106          	cp	a,#6
1461  0314 2719          	jreq	L251
1462  0316 9e            	ld	a,xh
1463  0317 a107          	cp	a,#7
1464  0319 2714          	jreq	L251
1465  031b 9e            	ld	a,xh
1466  031c a108          	cp	a,#8
1467  031e 270f          	jreq	L251
1468  0320 9e            	ld	a,xh
1469  0321 a10c          	cp	a,#12
1470  0323 270a          	jreq	L251
1471  0325 9e            	ld	a,xh
1472  0326 a1ff          	cp	a,#255
1473  0328 2705          	jreq	L251
1474  032a 9e            	ld	a,xh
1475  032b a109          	cp	a,#9
1476  032d 2603          	jrne	L051
1477  032f               L251:
1478  032f 4f            	clr	a
1479  0330 2010          	jra	L451
1480  0332               L051:
1481  0332 ae00ec        	ldw	x,#236
1482  0335 89            	pushw	x
1483  0336 ae0000        	ldw	x,#0
1484  0339 89            	pushw	x
1485  033a ae0000        	ldw	x,#L542
1486  033d cd0000        	call	_assert_failed
1488  0340 5b04          	addw	sp,#4
1489  0342               L451:
1490                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1492  0342 0d02          	tnz	(OFST+2,sp)
1493  0344 2706          	jreq	L061
1494  0346 7b02          	ld	a,(OFST+2,sp)
1495  0348 a101          	cp	a,#1
1496  034a 2603          	jrne	L651
1497  034c               L061:
1498  034c 4f            	clr	a
1499  034d 2010          	jra	L261
1500  034f               L651:
1501  034f ae00ed        	ldw	x,#237
1502  0352 89            	pushw	x
1503  0353 ae0000        	ldw	x,#0
1504  0356 89            	pushw	x
1505  0357 ae0000        	ldw	x,#L542
1506  035a cd0000        	call	_assert_failed
1508  035d 5b04          	addw	sp,#4
1509  035f               L261:
1510                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1512  035f 7b01          	ld	a,(OFST+1,sp)
1513  0361 a1ff          	cp	a,#255
1514  0363 2620          	jrne	L564
1515                     ; 241     if (NewState != DISABLE)
1517  0365 0d02          	tnz	(OFST+2,sp)
1518  0367 270a          	jreq	L764
1519                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1521  0369 725f5407      	clr	21511
1522                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1524  036d 725f5406      	clr	21510
1526  0371 2078          	jra	L374
1527  0373               L764:
1528                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1530  0373 c65407        	ld	a,21511
1531  0376 aaff          	or	a,#255
1532  0378 c75407        	ld	21511,a
1533                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1535  037b c65406        	ld	a,21510
1536  037e aaff          	or	a,#255
1537  0380 c75406        	ld	21510,a
1538  0383 2066          	jra	L374
1539  0385               L564:
1540                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1542  0385 7b01          	ld	a,(OFST+1,sp)
1543  0387 a108          	cp	a,#8
1544  0389 242f          	jruge	L574
1545                     ; 254     if (NewState != DISABLE)
1547  038b 0d02          	tnz	(OFST+2,sp)
1548  038d 2716          	jreq	L774
1549                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1551  038f 7b01          	ld	a,(OFST+1,sp)
1552  0391 5f            	clrw	x
1553  0392 97            	ld	xl,a
1554  0393 a601          	ld	a,#1
1555  0395 5d            	tnzw	x
1556  0396 2704          	jreq	L461
1557  0398               L661:
1558  0398 48            	sll	a
1559  0399 5a            	decw	x
1560  039a 26fc          	jrne	L661
1561  039c               L461:
1562  039c 43            	cpl	a
1563  039d c45407        	and	a,21511
1564  03a0 c75407        	ld	21511,a
1566  03a3 2046          	jra	L374
1567  03a5               L774:
1568                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1570  03a5 7b01          	ld	a,(OFST+1,sp)
1571  03a7 5f            	clrw	x
1572  03a8 97            	ld	xl,a
1573  03a9 a601          	ld	a,#1
1574  03ab 5d            	tnzw	x
1575  03ac 2704          	jreq	L071
1576  03ae               L271:
1577  03ae 48            	sll	a
1578  03af 5a            	decw	x
1579  03b0 26fc          	jrne	L271
1580  03b2               L071:
1581  03b2 ca5407        	or	a,21511
1582  03b5 c75407        	ld	21511,a
1583  03b8 2031          	jra	L374
1584  03ba               L574:
1585                     ; 265     if (NewState != DISABLE)
1587  03ba 0d02          	tnz	(OFST+2,sp)
1588  03bc 2718          	jreq	L505
1589                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1591  03be 7b01          	ld	a,(OFST+1,sp)
1592  03c0 a008          	sub	a,#8
1593  03c2 5f            	clrw	x
1594  03c3 97            	ld	xl,a
1595  03c4 a601          	ld	a,#1
1596  03c6 5d            	tnzw	x
1597  03c7 2704          	jreq	L471
1598  03c9               L671:
1599  03c9 48            	sll	a
1600  03ca 5a            	decw	x
1601  03cb 26fc          	jrne	L671
1602  03cd               L471:
1603  03cd 43            	cpl	a
1604  03ce c45406        	and	a,21510
1605  03d1 c75406        	ld	21510,a
1607  03d4 2015          	jra	L374
1608  03d6               L505:
1609                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1611  03d6 7b01          	ld	a,(OFST+1,sp)
1612  03d8 a008          	sub	a,#8
1613  03da 5f            	clrw	x
1614  03db 97            	ld	xl,a
1615  03dc a601          	ld	a,#1
1616  03de 5d            	tnzw	x
1617  03df 2704          	jreq	L002
1618  03e1               L202:
1619  03e1 48            	sll	a
1620  03e2 5a            	decw	x
1621  03e3 26fc          	jrne	L202
1622  03e5               L002:
1623  03e5 ca5406        	or	a,21510
1624  03e8 c75406        	ld	21510,a
1625  03eb               L374:
1626                     ; 274 }
1629  03eb 85            	popw	x
1630  03ec 81            	ret
1688                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1688                     ; 287 {
1689                     	switch	.text
1690  03ed               _ADC1_ConversionConfig:
1692  03ed 89            	pushw	x
1693       00000000      OFST:	set	0
1696                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1698  03ee 9e            	ld	a,xh
1699  03ef 4d            	tnz	a
1700  03f0 2705          	jreq	L012
1701  03f2 9e            	ld	a,xh
1702  03f3 a101          	cp	a,#1
1703  03f5 2603          	jrne	L602
1704  03f7               L012:
1705  03f7 4f            	clr	a
1706  03f8 2010          	jra	L212
1707  03fa               L602:
1708  03fa ae0121        	ldw	x,#289
1709  03fd 89            	pushw	x
1710  03fe ae0000        	ldw	x,#0
1711  0401 89            	pushw	x
1712  0402 ae0000        	ldw	x,#L542
1713  0405 cd0000        	call	_assert_failed
1715  0408 5b04          	addw	sp,#4
1716  040a               L212:
1717                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1719  040a 0d02          	tnz	(OFST+2,sp)
1720  040c 273c          	jreq	L612
1721  040e 7b02          	ld	a,(OFST+2,sp)
1722  0410 a101          	cp	a,#1
1723  0412 2736          	jreq	L612
1724  0414 7b02          	ld	a,(OFST+2,sp)
1725  0416 a102          	cp	a,#2
1726  0418 2730          	jreq	L612
1727  041a 7b02          	ld	a,(OFST+2,sp)
1728  041c a103          	cp	a,#3
1729  041e 272a          	jreq	L612
1730  0420 7b02          	ld	a,(OFST+2,sp)
1731  0422 a104          	cp	a,#4
1732  0424 2724          	jreq	L612
1733  0426 7b02          	ld	a,(OFST+2,sp)
1734  0428 a105          	cp	a,#5
1735  042a 271e          	jreq	L612
1736  042c 7b02          	ld	a,(OFST+2,sp)
1737  042e a106          	cp	a,#6
1738  0430 2718          	jreq	L612
1739  0432 7b02          	ld	a,(OFST+2,sp)
1740  0434 a107          	cp	a,#7
1741  0436 2712          	jreq	L612
1742  0438 7b02          	ld	a,(OFST+2,sp)
1743  043a a108          	cp	a,#8
1744  043c 270c          	jreq	L612
1745  043e 7b02          	ld	a,(OFST+2,sp)
1746  0440 a10c          	cp	a,#12
1747  0442 2706          	jreq	L612
1748  0444 7b02          	ld	a,(OFST+2,sp)
1749  0446 a109          	cp	a,#9
1750  0448 2603          	jrne	L412
1751  044a               L612:
1752  044a 4f            	clr	a
1753  044b 2010          	jra	L022
1754  044d               L412:
1755  044d ae0122        	ldw	x,#290
1756  0450 89            	pushw	x
1757  0451 ae0000        	ldw	x,#0
1758  0454 89            	pushw	x
1759  0455 ae0000        	ldw	x,#L542
1760  0458 cd0000        	call	_assert_failed
1762  045b 5b04          	addw	sp,#4
1763  045d               L022:
1764                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1766  045d 0d05          	tnz	(OFST+5,sp)
1767  045f 2706          	jreq	L422
1768  0461 7b05          	ld	a,(OFST+5,sp)
1769  0463 a108          	cp	a,#8
1770  0465 2603          	jrne	L222
1771  0467               L422:
1772  0467 4f            	clr	a
1773  0468 2010          	jra	L622
1774  046a               L222:
1775  046a ae0123        	ldw	x,#291
1776  046d 89            	pushw	x
1777  046e ae0000        	ldw	x,#0
1778  0471 89            	pushw	x
1779  0472 ae0000        	ldw	x,#L542
1780  0475 cd0000        	call	_assert_failed
1782  0478 5b04          	addw	sp,#4
1783  047a               L622:
1784                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1786  047a 72175402      	bres	21506,#3
1787                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1789  047e c65402        	ld	a,21506
1790  0481 1a05          	or	a,(OFST+5,sp)
1791  0483 c75402        	ld	21506,a
1792                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1794  0486 7b01          	ld	a,(OFST+1,sp)
1795  0488 a101          	cp	a,#1
1796  048a 2606          	jrne	L735
1797                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1799  048c 72125401      	bset	21505,#1
1801  0490 2004          	jra	L145
1802  0492               L735:
1803                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1805  0492 72135401      	bres	21505,#1
1806  0496               L145:
1807                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1809  0496 c65400        	ld	a,21504
1810  0499 a4f0          	and	a,#240
1811  049b c75400        	ld	21504,a
1812                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1814  049e c65400        	ld	a,21504
1815  04a1 1a02          	or	a,(OFST+2,sp)
1816  04a3 c75400        	ld	21504,a
1817                     ; 313 }
1820  04a6 85            	popw	x
1821  04a7 81            	ret
1868                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1868                     ; 326 {
1869                     	switch	.text
1870  04a8               _ADC1_ExternalTriggerConfig:
1872  04a8 89            	pushw	x
1873       00000000      OFST:	set	0
1876                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1878  04a9 9e            	ld	a,xh
1879  04aa 4d            	tnz	a
1880  04ab 2705          	jreq	L432
1881  04ad 9e            	ld	a,xh
1882  04ae a110          	cp	a,#16
1883  04b0 2603          	jrne	L232
1884  04b2               L432:
1885  04b2 4f            	clr	a
1886  04b3 2010          	jra	L632
1887  04b5               L232:
1888  04b5 ae0148        	ldw	x,#328
1889  04b8 89            	pushw	x
1890  04b9 ae0000        	ldw	x,#0
1891  04bc 89            	pushw	x
1892  04bd ae0000        	ldw	x,#L542
1893  04c0 cd0000        	call	_assert_failed
1895  04c3 5b04          	addw	sp,#4
1896  04c5               L632:
1897                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1899  04c5 0d02          	tnz	(OFST+2,sp)
1900  04c7 2706          	jreq	L242
1901  04c9 7b02          	ld	a,(OFST+2,sp)
1902  04cb a101          	cp	a,#1
1903  04cd 2603          	jrne	L042
1904  04cf               L242:
1905  04cf 4f            	clr	a
1906  04d0 2010          	jra	L442
1907  04d2               L042:
1908  04d2 ae0149        	ldw	x,#329
1909  04d5 89            	pushw	x
1910  04d6 ae0000        	ldw	x,#0
1911  04d9 89            	pushw	x
1912  04da ae0000        	ldw	x,#L542
1913  04dd cd0000        	call	_assert_failed
1915  04e0 5b04          	addw	sp,#4
1916  04e2               L442:
1917                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1919  04e2 c65402        	ld	a,21506
1920  04e5 a4cf          	and	a,#207
1921  04e7 c75402        	ld	21506,a
1922                     ; 334   if (NewState != DISABLE)
1924  04ea 0d02          	tnz	(OFST+2,sp)
1925  04ec 2706          	jreq	L565
1926                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1928  04ee 721c5402      	bset	21506,#6
1930  04f2 2004          	jra	L765
1931  04f4               L565:
1932                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1934  04f4 721d5402      	bres	21506,#6
1935  04f8               L765:
1936                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1938  04f8 c65402        	ld	a,21506
1939  04fb 1a01          	or	a,(OFST+1,sp)
1940  04fd c75402        	ld	21506,a
1941                     ; 347 }
1944  0500 85            	popw	x
1945  0501 81            	ret
1969                     ; 358 void ADC1_StartConversion(void)
1969                     ; 359 {
1970                     	switch	.text
1971  0502               _ADC1_StartConversion:
1975                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1977  0502 72105401      	bset	21505,#0
1978                     ; 361 }
1981  0506 81            	ret
2025                     ; 370 uint16_t ADC1_GetConversionValue(void)
2025                     ; 371 {
2026                     	switch	.text
2027  0507               _ADC1_GetConversionValue:
2029  0507 5205          	subw	sp,#5
2030       00000005      OFST:	set	5
2033                     ; 372   uint16_t temph = 0;
2035                     ; 373   uint8_t templ = 0;
2037                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2039  0509 c65402        	ld	a,21506
2040  050c a508          	bcp	a,#8
2041  050e 2715          	jreq	L326
2042                     ; 378     templ = ADC1->DRL;
2044  0510 c65405        	ld	a,21509
2045  0513 6b03          	ld	(OFST-2,sp),a
2047                     ; 380     temph = ADC1->DRH;
2049  0515 c65404        	ld	a,21508
2050  0518 5f            	clrw	x
2051  0519 97            	ld	xl,a
2052  051a 1f04          	ldw	(OFST-1,sp),x
2054                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2056  051c 1e04          	ldw	x,(OFST-1,sp)
2057  051e 7b03          	ld	a,(OFST-2,sp)
2058  0520 02            	rlwa	x,a
2059  0521 1f04          	ldw	(OFST-1,sp),x
2062  0523 2021          	jra	L526
2063  0525               L326:
2064                     ; 387     temph = ADC1->DRH;
2066  0525 c65404        	ld	a,21508
2067  0528 5f            	clrw	x
2068  0529 97            	ld	xl,a
2069  052a 1f04          	ldw	(OFST-1,sp),x
2071                     ; 389     templ = ADC1->DRL;
2073  052c c65405        	ld	a,21509
2074  052f 6b03          	ld	(OFST-2,sp),a
2076                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2078  0531 1e04          	ldw	x,(OFST-1,sp)
2079  0533 4f            	clr	a
2080  0534 02            	rlwa	x,a
2081  0535 1f01          	ldw	(OFST-4,sp),x
2083  0537 7b03          	ld	a,(OFST-2,sp)
2084  0539 97            	ld	xl,a
2085  053a a640          	ld	a,#64
2086  053c 42            	mul	x,a
2087  053d 01            	rrwa	x,a
2088  053e 1a02          	or	a,(OFST-3,sp)
2089  0540 01            	rrwa	x,a
2090  0541 1a01          	or	a,(OFST-4,sp)
2091  0543 01            	rrwa	x,a
2092  0544 1f04          	ldw	(OFST-1,sp),x
2094  0546               L526:
2095                     ; 394   return ((uint16_t)temph);
2097  0546 1e04          	ldw	x,(OFST-1,sp)
2100  0548 5b05          	addw	sp,#5
2101  054a 81            	ret
2148                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2148                     ; 406 {
2149                     	switch	.text
2150  054b               _ADC1_AWDChannelConfig:
2152  054b 89            	pushw	x
2153       00000000      OFST:	set	0
2156                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2158  054c 9f            	ld	a,xl
2159  054d 4d            	tnz	a
2160  054e 2705          	jreq	L652
2161  0550 9f            	ld	a,xl
2162  0551 a101          	cp	a,#1
2163  0553 2603          	jrne	L452
2164  0555               L652:
2165  0555 4f            	clr	a
2166  0556 2010          	jra	L062
2167  0558               L452:
2168  0558 ae0198        	ldw	x,#408
2169  055b 89            	pushw	x
2170  055c ae0000        	ldw	x,#0
2171  055f 89            	pushw	x
2172  0560 ae0000        	ldw	x,#L542
2173  0563 cd0000        	call	_assert_failed
2175  0566 5b04          	addw	sp,#4
2176  0568               L062:
2177                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2179  0568 0d01          	tnz	(OFST+1,sp)
2180  056a 273c          	jreq	L462
2181  056c 7b01          	ld	a,(OFST+1,sp)
2182  056e a101          	cp	a,#1
2183  0570 2736          	jreq	L462
2184  0572 7b01          	ld	a,(OFST+1,sp)
2185  0574 a102          	cp	a,#2
2186  0576 2730          	jreq	L462
2187  0578 7b01          	ld	a,(OFST+1,sp)
2188  057a a103          	cp	a,#3
2189  057c 272a          	jreq	L462
2190  057e 7b01          	ld	a,(OFST+1,sp)
2191  0580 a104          	cp	a,#4
2192  0582 2724          	jreq	L462
2193  0584 7b01          	ld	a,(OFST+1,sp)
2194  0586 a105          	cp	a,#5
2195  0588 271e          	jreq	L462
2196  058a 7b01          	ld	a,(OFST+1,sp)
2197  058c a106          	cp	a,#6
2198  058e 2718          	jreq	L462
2199  0590 7b01          	ld	a,(OFST+1,sp)
2200  0592 a107          	cp	a,#7
2201  0594 2712          	jreq	L462
2202  0596 7b01          	ld	a,(OFST+1,sp)
2203  0598 a108          	cp	a,#8
2204  059a 270c          	jreq	L462
2205  059c 7b01          	ld	a,(OFST+1,sp)
2206  059e a10c          	cp	a,#12
2207  05a0 2706          	jreq	L462
2208  05a2 7b01          	ld	a,(OFST+1,sp)
2209  05a4 a109          	cp	a,#9
2210  05a6 2603          	jrne	L262
2211  05a8               L462:
2212  05a8 4f            	clr	a
2213  05a9 2010          	jra	L662
2214  05ab               L262:
2215  05ab ae0199        	ldw	x,#409
2216  05ae 89            	pushw	x
2217  05af ae0000        	ldw	x,#0
2218  05b2 89            	pushw	x
2219  05b3 ae0000        	ldw	x,#L542
2220  05b6 cd0000        	call	_assert_failed
2222  05b9 5b04          	addw	sp,#4
2223  05bb               L662:
2224                     ; 411   if (Channel < (uint8_t)8)
2226  05bb 7b01          	ld	a,(OFST+1,sp)
2227  05bd a108          	cp	a,#8
2228  05bf 242f          	jruge	L156
2229                     ; 413     if (NewState != DISABLE)
2231  05c1 0d02          	tnz	(OFST+2,sp)
2232  05c3 2715          	jreq	L356
2233                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2235  05c5 7b01          	ld	a,(OFST+1,sp)
2236  05c7 5f            	clrw	x
2237  05c8 97            	ld	xl,a
2238  05c9 a601          	ld	a,#1
2239  05cb 5d            	tnzw	x
2240  05cc 2704          	jreq	L072
2241  05ce               L272:
2242  05ce 48            	sll	a
2243  05cf 5a            	decw	x
2244  05d0 26fc          	jrne	L272
2245  05d2               L072:
2246  05d2 ca540f        	or	a,21519
2247  05d5 c7540f        	ld	21519,a
2249  05d8 2047          	jra	L756
2250  05da               L356:
2251                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2253  05da 7b01          	ld	a,(OFST+1,sp)
2254  05dc 5f            	clrw	x
2255  05dd 97            	ld	xl,a
2256  05de a601          	ld	a,#1
2257  05e0 5d            	tnzw	x
2258  05e1 2704          	jreq	L472
2259  05e3               L672:
2260  05e3 48            	sll	a
2261  05e4 5a            	decw	x
2262  05e5 26fc          	jrne	L672
2263  05e7               L472:
2264  05e7 43            	cpl	a
2265  05e8 c4540f        	and	a,21519
2266  05eb c7540f        	ld	21519,a
2267  05ee 2031          	jra	L756
2268  05f0               L156:
2269                     ; 424     if (NewState != DISABLE)
2271  05f0 0d02          	tnz	(OFST+2,sp)
2272  05f2 2717          	jreq	L166
2273                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2275  05f4 7b01          	ld	a,(OFST+1,sp)
2276  05f6 a008          	sub	a,#8
2277  05f8 5f            	clrw	x
2278  05f9 97            	ld	xl,a
2279  05fa a601          	ld	a,#1
2280  05fc 5d            	tnzw	x
2281  05fd 2704          	jreq	L003
2282  05ff               L203:
2283  05ff 48            	sll	a
2284  0600 5a            	decw	x
2285  0601 26fc          	jrne	L203
2286  0603               L003:
2287  0603 ca540e        	or	a,21518
2288  0606 c7540e        	ld	21518,a
2290  0609 2016          	jra	L756
2291  060b               L166:
2292                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2294  060b 7b01          	ld	a,(OFST+1,sp)
2295  060d a008          	sub	a,#8
2296  060f 5f            	clrw	x
2297  0610 97            	ld	xl,a
2298  0611 a601          	ld	a,#1
2299  0613 5d            	tnzw	x
2300  0614 2704          	jreq	L403
2301  0616               L603:
2302  0616 48            	sll	a
2303  0617 5a            	decw	x
2304  0618 26fc          	jrne	L603
2305  061a               L403:
2306  061a 43            	cpl	a
2307  061b c4540e        	and	a,21518
2308  061e c7540e        	ld	21518,a
2309  0621               L756:
2310                     ; 433 }
2313  0621 85            	popw	x
2314  0622 81            	ret
2349                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2349                     ; 442 {
2350                     	switch	.text
2351  0623               _ADC1_SetHighThreshold:
2353  0623 89            	pushw	x
2354       00000000      OFST:	set	0
2357                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2359  0624 54            	srlw	x
2360  0625 54            	srlw	x
2361  0626 9f            	ld	a,xl
2362  0627 c75408        	ld	21512,a
2363                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2365  062a 7b02          	ld	a,(OFST+2,sp)
2366  062c c75409        	ld	21513,a
2367                     ; 445 }
2370  062f 85            	popw	x
2371  0630 81            	ret
2406                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2406                     ; 454 {
2407                     	switch	.text
2408  0631               _ADC1_SetLowThreshold:
2412                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2414  0631 9f            	ld	a,xl
2415  0632 c7540b        	ld	21515,a
2416                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2418  0635 54            	srlw	x
2419  0636 54            	srlw	x
2420  0637 9f            	ld	a,xl
2421  0638 c7540a        	ld	21514,a
2422                     ; 457 }
2425  063b 81            	ret
2479                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2479                     ; 467 {
2480                     	switch	.text
2481  063c               _ADC1_GetBufferValue:
2483  063c 88            	push	a
2484  063d 5205          	subw	sp,#5
2485       00000005      OFST:	set	5
2488                     ; 468   uint16_t temph = 0;
2490                     ; 469   uint8_t templ = 0;
2492                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2494  063f a10a          	cp	a,#10
2495  0641 2403          	jruge	L613
2496  0643 4f            	clr	a
2497  0644 2010          	jra	L023
2498  0646               L613:
2499  0646 ae01d8        	ldw	x,#472
2500  0649 89            	pushw	x
2501  064a ae0000        	ldw	x,#0
2502  064d 89            	pushw	x
2503  064e ae0000        	ldw	x,#L542
2504  0651 cd0000        	call	_assert_failed
2506  0654 5b04          	addw	sp,#4
2507  0656               L023:
2508                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2510  0656 c65402        	ld	a,21506
2511  0659 a508          	bcp	a,#8
2512  065b 271f          	jreq	L747
2513                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2515  065d 7b06          	ld	a,(OFST+1,sp)
2516  065f 48            	sll	a
2517  0660 5f            	clrw	x
2518  0661 97            	ld	xl,a
2519  0662 d653e1        	ld	a,(21473,x)
2520  0665 6b03          	ld	(OFST-2,sp),a
2522                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2524  0667 7b06          	ld	a,(OFST+1,sp)
2525  0669 48            	sll	a
2526  066a 5f            	clrw	x
2527  066b 97            	ld	xl,a
2528  066c d653e0        	ld	a,(21472,x)
2529  066f 5f            	clrw	x
2530  0670 97            	ld	xl,a
2531  0671 1f04          	ldw	(OFST-1,sp),x
2533                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2535  0673 1e04          	ldw	x,(OFST-1,sp)
2536  0675 7b03          	ld	a,(OFST-2,sp)
2537  0677 02            	rlwa	x,a
2538  0678 1f04          	ldw	(OFST-1,sp),x
2541  067a 202b          	jra	L157
2542  067c               L747:
2543                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2545  067c 7b06          	ld	a,(OFST+1,sp)
2546  067e 48            	sll	a
2547  067f 5f            	clrw	x
2548  0680 97            	ld	xl,a
2549  0681 d653e0        	ld	a,(21472,x)
2550  0684 5f            	clrw	x
2551  0685 97            	ld	xl,a
2552  0686 1f04          	ldw	(OFST-1,sp),x
2554                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2556  0688 7b06          	ld	a,(OFST+1,sp)
2557  068a 48            	sll	a
2558  068b 5f            	clrw	x
2559  068c 97            	ld	xl,a
2560  068d d653e1        	ld	a,(21473,x)
2561  0690 6b03          	ld	(OFST-2,sp),a
2563                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2565  0692 1e04          	ldw	x,(OFST-1,sp)
2566  0694 4f            	clr	a
2567  0695 02            	rlwa	x,a
2568  0696 1f01          	ldw	(OFST-4,sp),x
2570  0698 7b03          	ld	a,(OFST-2,sp)
2571  069a 97            	ld	xl,a
2572  069b a640          	ld	a,#64
2573  069d 42            	mul	x,a
2574  069e 01            	rrwa	x,a
2575  069f 1a02          	or	a,(OFST-3,sp)
2576  06a1 01            	rrwa	x,a
2577  06a2 1a01          	or	a,(OFST-4,sp)
2578  06a4 01            	rrwa	x,a
2579  06a5 1f04          	ldw	(OFST-1,sp),x
2581  06a7               L157:
2582                     ; 493   return ((uint16_t)temph);
2584  06a7 1e04          	ldw	x,(OFST-1,sp)
2587  06a9 5b06          	addw	sp,#6
2588  06ab 81            	ret
2655                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2655                     ; 503 {
2656                     	switch	.text
2657  06ac               _ADC1_GetAWDChannelStatus:
2659  06ac 88            	push	a
2660  06ad 88            	push	a
2661       00000001      OFST:	set	1
2664                     ; 504   uint8_t status = 0;
2666                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2668  06ae 4d            	tnz	a
2669  06af 2728          	jreq	L623
2670  06b1 a101          	cp	a,#1
2671  06b3 2724          	jreq	L623
2672  06b5 a102          	cp	a,#2
2673  06b7 2720          	jreq	L623
2674  06b9 a103          	cp	a,#3
2675  06bb 271c          	jreq	L623
2676  06bd a104          	cp	a,#4
2677  06bf 2718          	jreq	L623
2678  06c1 a105          	cp	a,#5
2679  06c3 2714          	jreq	L623
2680  06c5 a106          	cp	a,#6
2681  06c7 2710          	jreq	L623
2682  06c9 a107          	cp	a,#7
2683  06cb 270c          	jreq	L623
2684  06cd a108          	cp	a,#8
2685  06cf 2708          	jreq	L623
2686  06d1 a10c          	cp	a,#12
2687  06d3 2704          	jreq	L623
2688  06d5 a109          	cp	a,#9
2689  06d7 2603          	jrne	L423
2690  06d9               L623:
2691  06d9 4f            	clr	a
2692  06da 2010          	jra	L033
2693  06dc               L423:
2694  06dc ae01fb        	ldw	x,#507
2695  06df 89            	pushw	x
2696  06e0 ae0000        	ldw	x,#0
2697  06e3 89            	pushw	x
2698  06e4 ae0000        	ldw	x,#L542
2699  06e7 cd0000        	call	_assert_failed
2701  06ea 5b04          	addw	sp,#4
2702  06ec               L033:
2703                     ; 509   if (Channel < (uint8_t)8)
2705  06ec 7b02          	ld	a,(OFST+1,sp)
2706  06ee a108          	cp	a,#8
2707  06f0 2414          	jruge	L5001
2708                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2710  06f2 7b02          	ld	a,(OFST+1,sp)
2711  06f4 5f            	clrw	x
2712  06f5 97            	ld	xl,a
2713  06f6 a601          	ld	a,#1
2714  06f8 5d            	tnzw	x
2715  06f9 2704          	jreq	L233
2716  06fb               L433:
2717  06fb 48            	sll	a
2718  06fc 5a            	decw	x
2719  06fd 26fc          	jrne	L433
2720  06ff               L233:
2721  06ff c4540d        	and	a,21517
2722  0702 6b01          	ld	(OFST+0,sp),a
2725  0704 2014          	jra	L7001
2726  0706               L5001:
2727                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2729  0706 7b02          	ld	a,(OFST+1,sp)
2730  0708 a008          	sub	a,#8
2731  070a 5f            	clrw	x
2732  070b 97            	ld	xl,a
2733  070c a601          	ld	a,#1
2734  070e 5d            	tnzw	x
2735  070f 2704          	jreq	L633
2736  0711               L043:
2737  0711 48            	sll	a
2738  0712 5a            	decw	x
2739  0713 26fc          	jrne	L043
2740  0715               L633:
2741  0715 c4540c        	and	a,21516
2742  0718 6b01          	ld	(OFST+0,sp),a
2744  071a               L7001:
2745                     ; 518   return ((FlagStatus)status);
2747  071a 7b01          	ld	a,(OFST+0,sp)
2750  071c 85            	popw	x
2751  071d 81            	ret
2910                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2910                     ; 528 {
2911                     	switch	.text
2912  071e               _ADC1_GetFlagStatus:
2914  071e 88            	push	a
2915  071f 88            	push	a
2916       00000001      OFST:	set	1
2919                     ; 529   uint8_t flagstatus = 0;
2921                     ; 530   uint8_t temp = 0;
2923                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2925  0720 a180          	cp	a,#128
2926  0722 2730          	jreq	L643
2927  0724 a141          	cp	a,#65
2928  0726 272c          	jreq	L643
2929  0728 a140          	cp	a,#64
2930  072a 2728          	jreq	L643
2931  072c a110          	cp	a,#16
2932  072e 2724          	jreq	L643
2933  0730 a111          	cp	a,#17
2934  0732 2720          	jreq	L643
2935  0734 a112          	cp	a,#18
2936  0736 271c          	jreq	L643
2937  0738 a113          	cp	a,#19
2938  073a 2718          	jreq	L643
2939  073c a114          	cp	a,#20
2940  073e 2714          	jreq	L643
2941  0740 a115          	cp	a,#21
2942  0742 2710          	jreq	L643
2943  0744 a116          	cp	a,#22
2944  0746 270c          	jreq	L643
2945  0748 a117          	cp	a,#23
2946  074a 2708          	jreq	L643
2947  074c a118          	cp	a,#24
2948  074e 2704          	jreq	L643
2949  0750 a119          	cp	a,#25
2950  0752 2603          	jrne	L443
2951  0754               L643:
2952  0754 4f            	clr	a
2953  0755 2010          	jra	L053
2954  0757               L443:
2955  0757 ae0215        	ldw	x,#533
2956  075a 89            	pushw	x
2957  075b ae0000        	ldw	x,#0
2958  075e 89            	pushw	x
2959  075f ae0000        	ldw	x,#L542
2960  0762 cd0000        	call	_assert_failed
2962  0765 5b04          	addw	sp,#4
2963  0767               L053:
2964                     ; 535   if ((Flag & 0x0F) == 0x01)
2966  0767 7b02          	ld	a,(OFST+1,sp)
2967  0769 a40f          	and	a,#15
2968  076b a101          	cp	a,#1
2969  076d 2609          	jrne	L7701
2970                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2972  076f c65403        	ld	a,21507
2973  0772 a440          	and	a,#64
2974  0774 6b01          	ld	(OFST+0,sp),a
2977  0776 2045          	jra	L1011
2978  0778               L7701:
2979                     ; 540   else if ((Flag & 0xF0) == 0x10)
2981  0778 7b02          	ld	a,(OFST+1,sp)
2982  077a a4f0          	and	a,#240
2983  077c a110          	cp	a,#16
2984  077e 2636          	jrne	L3011
2985                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2987  0780 7b02          	ld	a,(OFST+1,sp)
2988  0782 a40f          	and	a,#15
2989  0784 6b01          	ld	(OFST+0,sp),a
2991                     ; 544     if (temp < 8)
2993  0786 7b01          	ld	a,(OFST+0,sp)
2994  0788 a108          	cp	a,#8
2995  078a 2414          	jruge	L5011
2996                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2998  078c 7b01          	ld	a,(OFST+0,sp)
2999  078e 5f            	clrw	x
3000  078f 97            	ld	xl,a
3001  0790 a601          	ld	a,#1
3002  0792 5d            	tnzw	x
3003  0793 2704          	jreq	L253
3004  0795               L453:
3005  0795 48            	sll	a
3006  0796 5a            	decw	x
3007  0797 26fc          	jrne	L453
3008  0799               L253:
3009  0799 c4540d        	and	a,21517
3010  079c 6b01          	ld	(OFST+0,sp),a
3013  079e 201d          	jra	L1011
3014  07a0               L5011:
3015                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3017  07a0 7b01          	ld	a,(OFST+0,sp)
3018  07a2 a008          	sub	a,#8
3019  07a4 5f            	clrw	x
3020  07a5 97            	ld	xl,a
3021  07a6 a601          	ld	a,#1
3022  07a8 5d            	tnzw	x
3023  07a9 2704          	jreq	L653
3024  07ab               L063:
3025  07ab 48            	sll	a
3026  07ac 5a            	decw	x
3027  07ad 26fc          	jrne	L063
3028  07af               L653:
3029  07af c4540c        	and	a,21516
3030  07b2 6b01          	ld	(OFST+0,sp),a
3032  07b4 2007          	jra	L1011
3033  07b6               L3011:
3034                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3036  07b6 c65400        	ld	a,21504
3037  07b9 1402          	and	a,(OFST+1,sp)
3038  07bb 6b01          	ld	(OFST+0,sp),a
3040  07bd               L1011:
3041                     ; 557   return ((FlagStatus)flagstatus);
3043  07bd 7b01          	ld	a,(OFST+0,sp)
3046  07bf 85            	popw	x
3047  07c0 81            	ret
3092                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3092                     ; 568 {
3093                     	switch	.text
3094  07c1               _ADC1_ClearFlag:
3096  07c1 88            	push	a
3097  07c2 88            	push	a
3098       00000001      OFST:	set	1
3101                     ; 569   uint8_t temp = 0;
3103                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3105  07c3 a180          	cp	a,#128
3106  07c5 2730          	jreq	L663
3107  07c7 a141          	cp	a,#65
3108  07c9 272c          	jreq	L663
3109  07cb a140          	cp	a,#64
3110  07cd 2728          	jreq	L663
3111  07cf a110          	cp	a,#16
3112  07d1 2724          	jreq	L663
3113  07d3 a111          	cp	a,#17
3114  07d5 2720          	jreq	L663
3115  07d7 a112          	cp	a,#18
3116  07d9 271c          	jreq	L663
3117  07db a113          	cp	a,#19
3118  07dd 2718          	jreq	L663
3119  07df a114          	cp	a,#20
3120  07e1 2714          	jreq	L663
3121  07e3 a115          	cp	a,#21
3122  07e5 2710          	jreq	L663
3123  07e7 a116          	cp	a,#22
3124  07e9 270c          	jreq	L663
3125  07eb a117          	cp	a,#23
3126  07ed 2708          	jreq	L663
3127  07ef a118          	cp	a,#24
3128  07f1 2704          	jreq	L663
3129  07f3 a119          	cp	a,#25
3130  07f5 2603          	jrne	L463
3131  07f7               L663:
3132  07f7 4f            	clr	a
3133  07f8 2010          	jra	L073
3134  07fa               L463:
3135  07fa ae023c        	ldw	x,#572
3136  07fd 89            	pushw	x
3137  07fe ae0000        	ldw	x,#0
3138  0801 89            	pushw	x
3139  0802 ae0000        	ldw	x,#L542
3140  0805 cd0000        	call	_assert_failed
3142  0808 5b04          	addw	sp,#4
3143  080a               L073:
3144                     ; 574   if ((Flag & 0x0F) == 0x01)
3146  080a 7b02          	ld	a,(OFST+1,sp)
3147  080c a40f          	and	a,#15
3148  080e a101          	cp	a,#1
3149  0810 2606          	jrne	L5311
3150                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3152  0812 721d5403      	bres	21507,#6
3154  0816 204b          	jra	L7311
3155  0818               L5311:
3156                     ; 579   else if ((Flag & 0xF0) == 0x10)
3158  0818 7b02          	ld	a,(OFST+1,sp)
3159  081a a4f0          	and	a,#240
3160  081c a110          	cp	a,#16
3161  081e 263a          	jrne	L1411
3162                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3164  0820 7b02          	ld	a,(OFST+1,sp)
3165  0822 a40f          	and	a,#15
3166  0824 6b01          	ld	(OFST+0,sp),a
3168                     ; 583     if (temp < 8)
3170  0826 7b01          	ld	a,(OFST+0,sp)
3171  0828 a108          	cp	a,#8
3172  082a 2416          	jruge	L3411
3173                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3175  082c 7b01          	ld	a,(OFST+0,sp)
3176  082e 5f            	clrw	x
3177  082f 97            	ld	xl,a
3178  0830 a601          	ld	a,#1
3179  0832 5d            	tnzw	x
3180  0833 2704          	jreq	L273
3181  0835               L473:
3182  0835 48            	sll	a
3183  0836 5a            	decw	x
3184  0837 26fc          	jrne	L473
3185  0839               L273:
3186  0839 43            	cpl	a
3187  083a c4540d        	and	a,21517
3188  083d c7540d        	ld	21517,a
3190  0840 2021          	jra	L7311
3191  0842               L3411:
3192                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3194  0842 7b01          	ld	a,(OFST+0,sp)
3195  0844 a008          	sub	a,#8
3196  0846 5f            	clrw	x
3197  0847 97            	ld	xl,a
3198  0848 a601          	ld	a,#1
3199  084a 5d            	tnzw	x
3200  084b 2704          	jreq	L673
3201  084d               L004:
3202  084d 48            	sll	a
3203  084e 5a            	decw	x
3204  084f 26fc          	jrne	L004
3205  0851               L673:
3206  0851 43            	cpl	a
3207  0852 c4540c        	and	a,21516
3208  0855 c7540c        	ld	21516,a
3209  0858 2009          	jra	L7311
3210  085a               L1411:
3211                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3213  085a 7b02          	ld	a,(OFST+1,sp)
3214  085c 43            	cpl	a
3215  085d c45400        	and	a,21504
3216  0860 c75400        	ld	21504,a
3217  0863               L7311:
3218                     ; 596 }
3221  0863 85            	popw	x
3222  0864 81            	ret
3278                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3278                     ; 617 {
3279                     	switch	.text
3280  0865               _ADC1_GetITStatus:
3282  0865 89            	pushw	x
3283  0866 88            	push	a
3284       00000001      OFST:	set	1
3287                     ; 618   ITStatus itstatus = RESET;
3289                     ; 619   uint8_t temp = 0;
3291                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3293  0867 a30080        	cpw	x,#128
3294  086a 273c          	jreq	L604
3295  086c a30140        	cpw	x,#320
3296  086f 2737          	jreq	L604
3297  0871 a30110        	cpw	x,#272
3298  0874 2732          	jreq	L604
3299  0876 a30111        	cpw	x,#273
3300  0879 272d          	jreq	L604
3301  087b a30112        	cpw	x,#274
3302  087e 2728          	jreq	L604
3303  0880 a30113        	cpw	x,#275
3304  0883 2723          	jreq	L604
3305  0885 a30114        	cpw	x,#276
3306  0888 271e          	jreq	L604
3307  088a a30115        	cpw	x,#277
3308  088d 2719          	jreq	L604
3309  088f a30116        	cpw	x,#278
3310  0892 2714          	jreq	L604
3311  0894 a30117        	cpw	x,#279
3312  0897 270f          	jreq	L604
3313  0899 a30118        	cpw	x,#280
3314  089c 270a          	jreq	L604
3315  089e a3011c        	cpw	x,#284
3316  08a1 2705          	jreq	L604
3317  08a3 a30119        	cpw	x,#281
3318  08a6 2603          	jrne	L404
3319  08a8               L604:
3320  08a8 4f            	clr	a
3321  08a9 2010          	jra	L014
3322  08ab               L404:
3323  08ab ae026e        	ldw	x,#622
3324  08ae 89            	pushw	x
3325  08af ae0000        	ldw	x,#0
3326  08b2 89            	pushw	x
3327  08b3 ae0000        	ldw	x,#L542
3328  08b6 cd0000        	call	_assert_failed
3330  08b9 5b04          	addw	sp,#4
3331  08bb               L014:
3332                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3334  08bb 7b02          	ld	a,(OFST+1,sp)
3335  08bd 97            	ld	xl,a
3336  08be 7b03          	ld	a,(OFST+2,sp)
3337  08c0 a4f0          	and	a,#240
3338  08c2 5f            	clrw	x
3339  08c3 02            	rlwa	x,a
3340  08c4 a30010        	cpw	x,#16
3341  08c7 2636          	jrne	L7711
3342                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3344  08c9 7b03          	ld	a,(OFST+2,sp)
3345  08cb a40f          	and	a,#15
3346  08cd 6b01          	ld	(OFST+0,sp),a
3348                     ; 628     if (temp < 8)
3350  08cf 7b01          	ld	a,(OFST+0,sp)
3351  08d1 a108          	cp	a,#8
3352  08d3 2414          	jruge	L1021
3353                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3355  08d5 7b01          	ld	a,(OFST+0,sp)
3356  08d7 5f            	clrw	x
3357  08d8 97            	ld	xl,a
3358  08d9 a601          	ld	a,#1
3359  08db 5d            	tnzw	x
3360  08dc 2704          	jreq	L214
3361  08de               L414:
3362  08de 48            	sll	a
3363  08df 5a            	decw	x
3364  08e0 26fc          	jrne	L414
3365  08e2               L214:
3366  08e2 c4540d        	and	a,21517
3367  08e5 6b01          	ld	(OFST+0,sp),a
3370  08e7 201d          	jra	L5021
3371  08e9               L1021:
3372                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3374  08e9 7b01          	ld	a,(OFST+0,sp)
3375  08eb a008          	sub	a,#8
3376  08ed 5f            	clrw	x
3377  08ee 97            	ld	xl,a
3378  08ef a601          	ld	a,#1
3379  08f1 5d            	tnzw	x
3380  08f2 2704          	jreq	L614
3381  08f4               L024:
3382  08f4 48            	sll	a
3383  08f5 5a            	decw	x
3384  08f6 26fc          	jrne	L024
3385  08f8               L614:
3386  08f8 c4540c        	and	a,21516
3387  08fb 6b01          	ld	(OFST+0,sp),a
3389  08fd 2007          	jra	L5021
3390  08ff               L7711:
3391                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3393  08ff c65400        	ld	a,21504
3394  0902 1403          	and	a,(OFST+2,sp)
3395  0904 6b01          	ld	(OFST+0,sp),a
3397  0906               L5021:
3398                     ; 641   return ((ITStatus)itstatus);
3400  0906 7b01          	ld	a,(OFST+0,sp)
3403  0908 5b03          	addw	sp,#3
3404  090a 81            	ret
3450                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3450                     ; 663 {
3451                     	switch	.text
3452  090b               _ADC1_ClearITPendingBit:
3454  090b 89            	pushw	x
3455  090c 88            	push	a
3456       00000001      OFST:	set	1
3459                     ; 664   uint8_t temp = 0;
3461                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3463  090d a30080        	cpw	x,#128
3464  0910 273c          	jreq	L624
3465  0912 a30140        	cpw	x,#320
3466  0915 2737          	jreq	L624
3467  0917 a30110        	cpw	x,#272
3468  091a 2732          	jreq	L624
3469  091c a30111        	cpw	x,#273
3470  091f 272d          	jreq	L624
3471  0921 a30112        	cpw	x,#274
3472  0924 2728          	jreq	L624
3473  0926 a30113        	cpw	x,#275
3474  0929 2723          	jreq	L624
3475  092b a30114        	cpw	x,#276
3476  092e 271e          	jreq	L624
3477  0930 a30115        	cpw	x,#277
3478  0933 2719          	jreq	L624
3479  0935 a30116        	cpw	x,#278
3480  0938 2714          	jreq	L624
3481  093a a30117        	cpw	x,#279
3482  093d 270f          	jreq	L624
3483  093f a30118        	cpw	x,#280
3484  0942 270a          	jreq	L624
3485  0944 a3011c        	cpw	x,#284
3486  0947 2705          	jreq	L624
3487  0949 a30119        	cpw	x,#281
3488  094c 2603          	jrne	L424
3489  094e               L624:
3490  094e 4f            	clr	a
3491  094f 2010          	jra	L034
3492  0951               L424:
3493  0951 ae029b        	ldw	x,#667
3494  0954 89            	pushw	x
3495  0955 ae0000        	ldw	x,#0
3496  0958 89            	pushw	x
3497  0959 ae0000        	ldw	x,#L542
3498  095c cd0000        	call	_assert_failed
3500  095f 5b04          	addw	sp,#4
3501  0961               L034:
3502                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3504  0961 7b02          	ld	a,(OFST+1,sp)
3505  0963 97            	ld	xl,a
3506  0964 7b03          	ld	a,(OFST+2,sp)
3507  0966 a4f0          	and	a,#240
3508  0968 5f            	clrw	x
3509  0969 02            	rlwa	x,a
3510  096a a30010        	cpw	x,#16
3511  096d 263a          	jrne	L1321
3512                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3514  096f 7b03          	ld	a,(OFST+2,sp)
3515  0971 a40f          	and	a,#15
3516  0973 6b01          	ld	(OFST+0,sp),a
3518                     ; 673     if (temp < 8)
3520  0975 7b01          	ld	a,(OFST+0,sp)
3521  0977 a108          	cp	a,#8
3522  0979 2416          	jruge	L3321
3523                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3525  097b 7b01          	ld	a,(OFST+0,sp)
3526  097d 5f            	clrw	x
3527  097e 97            	ld	xl,a
3528  097f a601          	ld	a,#1
3529  0981 5d            	tnzw	x
3530  0982 2704          	jreq	L234
3531  0984               L434:
3532  0984 48            	sll	a
3533  0985 5a            	decw	x
3534  0986 26fc          	jrne	L434
3535  0988               L234:
3536  0988 43            	cpl	a
3537  0989 c4540d        	and	a,21517
3538  098c c7540d        	ld	21517,a
3540  098f 2021          	jra	L7321
3541  0991               L3321:
3542                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3544  0991 7b01          	ld	a,(OFST+0,sp)
3545  0993 a008          	sub	a,#8
3546  0995 5f            	clrw	x
3547  0996 97            	ld	xl,a
3548  0997 a601          	ld	a,#1
3549  0999 5d            	tnzw	x
3550  099a 2704          	jreq	L634
3551  099c               L044:
3552  099c 48            	sll	a
3553  099d 5a            	decw	x
3554  099e 26fc          	jrne	L044
3555  09a0               L634:
3556  09a0 43            	cpl	a
3557  09a1 c4540c        	and	a,21516
3558  09a4 c7540c        	ld	21516,a
3559  09a7 2009          	jra	L7321
3560  09a9               L1321:
3561                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3563  09a9 7b03          	ld	a,(OFST+2,sp)
3564  09ab 43            	cpl	a
3565  09ac c45400        	and	a,21504
3566  09af c75400        	ld	21504,a
3567  09b2               L7321:
3568                     ; 686 }
3571  09b2 5b03          	addw	sp,#3
3572  09b4 81            	ret
3585                     	xdef	_ADC1_ClearITPendingBit
3586                     	xdef	_ADC1_GetITStatus
3587                     	xdef	_ADC1_ClearFlag
3588                     	xdef	_ADC1_GetFlagStatus
3589                     	xdef	_ADC1_GetAWDChannelStatus
3590                     	xdef	_ADC1_GetBufferValue
3591                     	xdef	_ADC1_SetLowThreshold
3592                     	xdef	_ADC1_SetHighThreshold
3593                     	xdef	_ADC1_GetConversionValue
3594                     	xdef	_ADC1_StartConversion
3595                     	xdef	_ADC1_AWDChannelConfig
3596                     	xdef	_ADC1_ExternalTriggerConfig
3597                     	xdef	_ADC1_ConversionConfig
3598                     	xdef	_ADC1_SchmittTriggerConfig
3599                     	xdef	_ADC1_PrescalerConfig
3600                     	xdef	_ADC1_ITConfig
3601                     	xdef	_ADC1_DataBufferCmd
3602                     	xdef	_ADC1_ScanModeCmd
3603                     	xdef	_ADC1_Cmd
3604                     	xdef	_ADC1_Init
3605                     	xdef	_ADC1_DeInit
3606                     	xref	_assert_failed
3607                     .const:	section	.text
3608  0000               L542:
3609  0000 7372635c7374  	dc.b	"src\stm8s_adc1.c",0
3629                     	end
