   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  75                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  75                     ; 88 {
  77                     	switch	.text
  78  0000               _FLASH_Unlock:
  80  0000 88            	push	a
  81       00000000      OFST:	set	0
  84                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  86  0001 a1fd          	cp	a,#253
  87  0003 2704          	jreq	L01
  88  0005 a1f7          	cp	a,#247
  89  0007 2603          	jrne	L6
  90  0009               L01:
  91  0009 4f            	clr	a
  92  000a 2010          	jra	L21
  93  000c               L6:
  94  000c ae005a        	ldw	x,#90
  95  000f 89            	pushw	x
  96  0010 ae0000        	ldw	x,#0
  97  0013 89            	pushw	x
  98  0014 ae0010        	ldw	x,#L73
  99  0017 cd0000        	call	_assert_failed
 101  001a 5b04          	addw	sp,#4
 102  001c               L21:
 103                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 105  001c 7b01          	ld	a,(OFST+1,sp)
 106  001e a1fd          	cp	a,#253
 107  0020 260a          	jrne	L14
 108                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 110  0022 35565062      	mov	20578,#86
 111                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 113  0026 35ae5062      	mov	20578,#174
 115  002a 2008          	jra	L34
 116  002c               L14:
 117                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 119  002c 35ae5064      	mov	20580,#174
 120                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 122  0030 35565064      	mov	20580,#86
 123  0034               L34:
 124                     ; 104 }
 127  0034 84            	pop	a
 128  0035 81            	ret
 164                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 164                     ; 113 {
 165                     	switch	.text
 166  0036               _FLASH_Lock:
 168  0036 88            	push	a
 169       00000000      OFST:	set	0
 172                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 174  0037 a1fd          	cp	a,#253
 175  0039 2704          	jreq	L02
 176  003b a1f7          	cp	a,#247
 177  003d 2603          	jrne	L61
 178  003f               L02:
 179  003f 4f            	clr	a
 180  0040 2010          	jra	L22
 181  0042               L61:
 182  0042 ae0073        	ldw	x,#115
 183  0045 89            	pushw	x
 184  0046 ae0000        	ldw	x,#0
 185  0049 89            	pushw	x
 186  004a ae0010        	ldw	x,#L73
 187  004d cd0000        	call	_assert_failed
 189  0050 5b04          	addw	sp,#4
 190  0052               L22:
 191                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0052 c6505f        	ld	a,20575
 194  0055 1401          	and	a,(OFST+1,sp)
 195  0057 c7505f        	ld	20575,a
 196                     ; 119 }
 199  005a 84            	pop	a
 200  005b 81            	ret
 223                     ; 126 void FLASH_DeInit(void)
 223                     ; 127 {
 224                     	switch	.text
 225  005c               _FLASH_DeInit:
 229                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  005c 725f505a      	clr	20570
 232                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0060 725f505b      	clr	20571
 235                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0064 35ff505c      	mov	20572,#255
 238                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  0068 7217505f      	bres	20575,#3
 241                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  006c 7213505f      	bres	20575,#1
 244                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0070 c6505f        	ld	a,20575
 247                     ; 134 }
 250  0073 81            	ret
 306                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 143 {
 307                     	switch	.text
 308  0074               _FLASH_ITConfig:
 310  0074 88            	push	a
 311       00000000      OFST:	set	0
 314                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0075 4d            	tnz	a
 317  0076 2704          	jreq	L23
 318  0078 a101          	cp	a,#1
 319  007a 2603          	jrne	L03
 320  007c               L23:
 321  007c 4f            	clr	a
 322  007d 2010          	jra	L43
 323  007f               L03:
 324  007f ae0091        	ldw	x,#145
 325  0082 89            	pushw	x
 326  0083 ae0000        	ldw	x,#0
 327  0086 89            	pushw	x
 328  0087 ae0010        	ldw	x,#L73
 329  008a cd0000        	call	_assert_failed
 331  008d 5b04          	addw	sp,#4
 332  008f               L43:
 333                     ; 147   if(NewState != DISABLE)
 335  008f 0d01          	tnz	(OFST+1,sp)
 336  0091 2706          	jreq	L121
 337                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 339  0093 7212505a      	bset	20570,#1
 341  0097 2004          	jra	L321
 342  0099               L121:
 343                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 345  0099 7213505a      	bres	20570,#1
 346  009d               L321:
 347                     ; 155 }
 350  009d 84            	pop	a
 351  009e 81            	ret
 386                     .const:	section	.text
 387  0000               L64:
 388  0000 00008000      	dc.l	32768
 389  0004               L05:
 390  0004 0000a000      	dc.l	40960
 391  0008               L25:
 392  0008 00004000      	dc.l	16384
 393  000c               L45:
 394  000c 00004280      	dc.l	17024
 395                     ; 164 void FLASH_EraseByte(uint32_t Address)
 395                     ; 165 {
 396                     	switch	.text
 397  009f               _FLASH_EraseByte:
 399       00000000      OFST:	set	0
 402                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 404  009f 96            	ldw	x,sp
 405  00a0 1c0003        	addw	x,#OFST+3
 406  00a3 cd0000        	call	c_ltor
 408  00a6 ae0000        	ldw	x,#L64
 409  00a9 cd0000        	call	c_lcmp
 411  00ac 250f          	jrult	L44
 412  00ae 96            	ldw	x,sp
 413  00af 1c0003        	addw	x,#OFST+3
 414  00b2 cd0000        	call	c_ltor
 416  00b5 ae0004        	ldw	x,#L05
 417  00b8 cd0000        	call	c_lcmp
 419  00bb 251e          	jrult	L24
 420  00bd               L44:
 421  00bd 96            	ldw	x,sp
 422  00be 1c0003        	addw	x,#OFST+3
 423  00c1 cd0000        	call	c_ltor
 425  00c4 ae0008        	ldw	x,#L25
 426  00c7 cd0000        	call	c_lcmp
 428  00ca 2512          	jrult	L04
 429  00cc 96            	ldw	x,sp
 430  00cd 1c0003        	addw	x,#OFST+3
 431  00d0 cd0000        	call	c_ltor
 433  00d3 ae000c        	ldw	x,#L45
 434  00d6 cd0000        	call	c_lcmp
 436  00d9 2403          	jruge	L04
 437  00db               L24:
 438  00db 4f            	clr	a
 439  00dc 2010          	jra	L65
 440  00de               L04:
 441  00de ae00a7        	ldw	x,#167
 442  00e1 89            	pushw	x
 443  00e2 ae0000        	ldw	x,#0
 444  00e5 89            	pushw	x
 445  00e6 ae0010        	ldw	x,#L73
 446  00e9 cd0000        	call	_assert_failed
 448  00ec 5b04          	addw	sp,#4
 449  00ee               L65:
 450                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 452  00ee 1e05          	ldw	x,(OFST+5,sp)
 453  00f0 7f            	clr	(x)
 454                     ; 171 }
 457  00f1 81            	ret
 501                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 501                     ; 182 {
 502                     	switch	.text
 503  00f2               _FLASH_ProgramByte:
 505       00000000      OFST:	set	0
 508                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 510  00f2 96            	ldw	x,sp
 511  00f3 1c0003        	addw	x,#OFST+3
 512  00f6 cd0000        	call	c_ltor
 514  00f9 ae0000        	ldw	x,#L64
 515  00fc cd0000        	call	c_lcmp
 517  00ff 250f          	jrult	L66
 518  0101 96            	ldw	x,sp
 519  0102 1c0003        	addw	x,#OFST+3
 520  0105 cd0000        	call	c_ltor
 522  0108 ae0004        	ldw	x,#L05
 523  010b cd0000        	call	c_lcmp
 525  010e 251e          	jrult	L46
 526  0110               L66:
 527  0110 96            	ldw	x,sp
 528  0111 1c0003        	addw	x,#OFST+3
 529  0114 cd0000        	call	c_ltor
 531  0117 ae0008        	ldw	x,#L25
 532  011a cd0000        	call	c_lcmp
 534  011d 2512          	jrult	L26
 535  011f 96            	ldw	x,sp
 536  0120 1c0003        	addw	x,#OFST+3
 537  0123 cd0000        	call	c_ltor
 539  0126 ae000c        	ldw	x,#L45
 540  0129 cd0000        	call	c_lcmp
 542  012c 2403          	jruge	L26
 543  012e               L46:
 544  012e 4f            	clr	a
 545  012f 2010          	jra	L07
 546  0131               L26:
 547  0131 ae00b8        	ldw	x,#184
 548  0134 89            	pushw	x
 549  0135 ae0000        	ldw	x,#0
 550  0138 89            	pushw	x
 551  0139 ae0010        	ldw	x,#L73
 552  013c cd0000        	call	_assert_failed
 554  013f 5b04          	addw	sp,#4
 555  0141               L07:
 556                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 558  0141 7b07          	ld	a,(OFST+7,sp)
 559  0143 1e05          	ldw	x,(OFST+5,sp)
 560  0145 f7            	ld	(x),a
 561                     ; 186 }
 564  0146 81            	ret
 599                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 599                     ; 196 {
 600                     	switch	.text
 601  0147               _FLASH_ReadByte:
 603       00000000      OFST:	set	0
 606                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 608  0147 96            	ldw	x,sp
 609  0148 1c0003        	addw	x,#OFST+3
 610  014b cd0000        	call	c_ltor
 612  014e ae0000        	ldw	x,#L64
 613  0151 cd0000        	call	c_lcmp
 615  0154 250f          	jrult	L001
 616  0156 96            	ldw	x,sp
 617  0157 1c0003        	addw	x,#OFST+3
 618  015a cd0000        	call	c_ltor
 620  015d ae0004        	ldw	x,#L05
 621  0160 cd0000        	call	c_lcmp
 623  0163 251e          	jrult	L67
 624  0165               L001:
 625  0165 96            	ldw	x,sp
 626  0166 1c0003        	addw	x,#OFST+3
 627  0169 cd0000        	call	c_ltor
 629  016c ae0008        	ldw	x,#L25
 630  016f cd0000        	call	c_lcmp
 632  0172 2512          	jrult	L47
 633  0174 96            	ldw	x,sp
 634  0175 1c0003        	addw	x,#OFST+3
 635  0178 cd0000        	call	c_ltor
 637  017b ae000c        	ldw	x,#L45
 638  017e cd0000        	call	c_lcmp
 640  0181 2403          	jruge	L47
 641  0183               L67:
 642  0183 4f            	clr	a
 643  0184 2010          	jra	L201
 644  0186               L47:
 645  0186 ae00c6        	ldw	x,#198
 646  0189 89            	pushw	x
 647  018a ae0000        	ldw	x,#0
 648  018d 89            	pushw	x
 649  018e ae0010        	ldw	x,#L73
 650  0191 cd0000        	call	_assert_failed
 652  0194 5b04          	addw	sp,#4
 653  0196               L201:
 654                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 656  0196 1e05          	ldw	x,(OFST+5,sp)
 657  0198 f6            	ld	a,(x)
 660  0199 81            	ret
 704                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 704                     ; 213 {
 705                     	switch	.text
 706  019a               _FLASH_ProgramWord:
 708       00000000      OFST:	set	0
 711                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 713  019a 96            	ldw	x,sp
 714  019b 1c0003        	addw	x,#OFST+3
 715  019e cd0000        	call	c_ltor
 717  01a1 ae0000        	ldw	x,#L64
 718  01a4 cd0000        	call	c_lcmp
 720  01a7 250f          	jrult	L211
 721  01a9 96            	ldw	x,sp
 722  01aa 1c0003        	addw	x,#OFST+3
 723  01ad cd0000        	call	c_ltor
 725  01b0 ae0004        	ldw	x,#L05
 726  01b3 cd0000        	call	c_lcmp
 728  01b6 251e          	jrult	L011
 729  01b8               L211:
 730  01b8 96            	ldw	x,sp
 731  01b9 1c0003        	addw	x,#OFST+3
 732  01bc cd0000        	call	c_ltor
 734  01bf ae0008        	ldw	x,#L25
 735  01c2 cd0000        	call	c_lcmp
 737  01c5 2512          	jrult	L601
 738  01c7 96            	ldw	x,sp
 739  01c8 1c0003        	addw	x,#OFST+3
 740  01cb cd0000        	call	c_ltor
 742  01ce ae000c        	ldw	x,#L45
 743  01d1 cd0000        	call	c_lcmp
 745  01d4 2403          	jruge	L601
 746  01d6               L011:
 747  01d6 4f            	clr	a
 748  01d7 2010          	jra	L411
 749  01d9               L601:
 750  01d9 ae00d7        	ldw	x,#215
 751  01dc 89            	pushw	x
 752  01dd ae0000        	ldw	x,#0
 753  01e0 89            	pushw	x
 754  01e1 ae0010        	ldw	x,#L73
 755  01e4 cd0000        	call	_assert_failed
 757  01e7 5b04          	addw	sp,#4
 758  01e9               L411:
 759                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 761  01e9 721c505b      	bset	20571,#6
 762                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 764  01ed 721d505c      	bres	20572,#6
 765                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 767  01f1 7b07          	ld	a,(OFST+7,sp)
 768  01f3 1e05          	ldw	x,(OFST+5,sp)
 769  01f5 f7            	ld	(x),a
 770                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 772  01f6 7b08          	ld	a,(OFST+8,sp)
 773  01f8 1e05          	ldw	x,(OFST+5,sp)
 774  01fa e701          	ld	(1,x),a
 775                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 777  01fc 7b09          	ld	a,(OFST+9,sp)
 778  01fe 1e05          	ldw	x,(OFST+5,sp)
 779  0200 e702          	ld	(2,x),a
 780                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 782  0202 7b0a          	ld	a,(OFST+10,sp)
 783  0204 1e05          	ldw	x,(OFST+5,sp)
 784  0206 e703          	ld	(3,x),a
 785                     ; 229 }
 788  0208 81            	ret
 834                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 834                     ; 238 {
 835                     	switch	.text
 836  0209               _FLASH_ProgramOptionByte:
 838  0209 89            	pushw	x
 839       00000000      OFST:	set	0
 842                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 844  020a a34800        	cpw	x,#18432
 845  020d 2508          	jrult	L021
 846  020f a34880        	cpw	x,#18560
 847  0212 2403          	jruge	L021
 848  0214 4f            	clr	a
 849  0215 2010          	jra	L221
 850  0217               L021:
 851  0217 ae00f0        	ldw	x,#240
 852  021a 89            	pushw	x
 853  021b ae0000        	ldw	x,#0
 854  021e 89            	pushw	x
 855  021f ae0010        	ldw	x,#L73
 856  0222 cd0000        	call	_assert_failed
 858  0225 5b04          	addw	sp,#4
 859  0227               L221:
 860                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 862  0227 721e505b      	bset	20571,#7
 863                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 865  022b 721f505c      	bres	20572,#7
 866                     ; 247   if(Address == 0x4800)
 868  022f 1e01          	ldw	x,(OFST+1,sp)
 869  0231 a34800        	cpw	x,#18432
 870  0234 2607          	jrne	L742
 871                     ; 250     *((NEAR uint8_t*)Address) = Data;
 873  0236 7b05          	ld	a,(OFST+5,sp)
 874  0238 1e01          	ldw	x,(OFST+1,sp)
 875  023a f7            	ld	(x),a
 877  023b 200c          	jra	L152
 878  023d               L742:
 879                     ; 255     *((NEAR uint8_t*)Address) = Data;
 881  023d 7b05          	ld	a,(OFST+5,sp)
 882  023f 1e01          	ldw	x,(OFST+1,sp)
 883  0241 f7            	ld	(x),a
 884                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 886  0242 7b05          	ld	a,(OFST+5,sp)
 887  0244 43            	cpl	a
 888  0245 1e01          	ldw	x,(OFST+1,sp)
 889  0247 e701          	ld	(1,x),a
 890  0249               L152:
 891                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 893  0249 a6fd          	ld	a,#253
 894  024b cd03dd        	call	_FLASH_WaitForLastOperation
 896                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 898  024e 721f505b      	bres	20571,#7
 899                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 901  0252 721e505c      	bset	20572,#7
 902                     ; 263 }
 905  0256 85            	popw	x
 906  0257 81            	ret
 943                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 943                     ; 271 {
 944                     	switch	.text
 945  0258               _FLASH_EraseOptionByte:
 947  0258 89            	pushw	x
 948       00000000      OFST:	set	0
 951                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 953  0259 a34800        	cpw	x,#18432
 954  025c 2508          	jrult	L621
 955  025e a34880        	cpw	x,#18560
 956  0261 2403          	jruge	L621
 957  0263 4f            	clr	a
 958  0264 2010          	jra	L031
 959  0266               L621:
 960  0266 ae0111        	ldw	x,#273
 961  0269 89            	pushw	x
 962  026a ae0000        	ldw	x,#0
 963  026d 89            	pushw	x
 964  026e ae0010        	ldw	x,#L73
 965  0271 cd0000        	call	_assert_failed
 967  0274 5b04          	addw	sp,#4
 968  0276               L031:
 969                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 971  0276 721e505b      	bset	20571,#7
 972                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 974  027a 721f505c      	bres	20572,#7
 975                     ; 280   if(Address == 0x4800)
 977  027e 1e01          	ldw	x,(OFST+1,sp)
 978  0280 a34800        	cpw	x,#18432
 979  0283 2605          	jrne	L172
 980                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 982  0285 1e01          	ldw	x,(OFST+1,sp)
 983  0287 7f            	clr	(x)
 985  0288 2009          	jra	L372
 986  028a               L172:
 987                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 989  028a 1e01          	ldw	x,(OFST+1,sp)
 990  028c 7f            	clr	(x)
 991                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 993  028d 1e01          	ldw	x,(OFST+1,sp)
 994  028f a6ff          	ld	a,#255
 995  0291 e701          	ld	(1,x),a
 996  0293               L372:
 997                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 999  0293 a6fd          	ld	a,#253
1000  0295 cd03dd        	call	_FLASH_WaitForLastOperation
1002                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
1004  0298 721f505b      	bres	20571,#7
1005                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
1007  029c 721e505c      	bset	20572,#7
1008                     ; 296 }
1011  02a0 85            	popw	x
1012  02a1 81            	ret
1076                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1076                     ; 304 {
1077                     	switch	.text
1078  02a2               _FLASH_ReadOptionByte:
1080  02a2 89            	pushw	x
1081  02a3 5204          	subw	sp,#4
1082       00000004      OFST:	set	4
1085                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1087                     ; 306   uint16_t res_value = 0;
1089                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1091  02a5 a34800        	cpw	x,#18432
1092  02a8 2508          	jrult	L431
1093  02aa a34880        	cpw	x,#18560
1094  02ad 2403          	jruge	L431
1095  02af 4f            	clr	a
1096  02b0 2010          	jra	L631
1097  02b2               L431:
1098  02b2 ae0135        	ldw	x,#309
1099  02b5 89            	pushw	x
1100  02b6 ae0000        	ldw	x,#0
1101  02b9 89            	pushw	x
1102  02ba ae0010        	ldw	x,#L73
1103  02bd cd0000        	call	_assert_failed
1105  02c0 5b04          	addw	sp,#4
1106  02c2               L631:
1107                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1109  02c2 1e05          	ldw	x,(OFST+1,sp)
1110  02c4 f6            	ld	a,(x)
1111  02c5 6b01          	ld	(OFST-3,sp),a
1113                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1115  02c7 1e05          	ldw	x,(OFST+1,sp)
1116  02c9 e601          	ld	a,(1,x)
1117  02cb 6b02          	ld	(OFST-2,sp),a
1119                     ; 315   if(Address == 0x4800)	 
1121  02cd 1e05          	ldw	x,(OFST+1,sp)
1122  02cf a34800        	cpw	x,#18432
1123  02d2 2608          	jrne	L723
1124                     ; 317     res_value =	 value_optbyte;
1126  02d4 7b01          	ld	a,(OFST-3,sp)
1127  02d6 5f            	clrw	x
1128  02d7 97            	ld	xl,a
1129  02d8 1f03          	ldw	(OFST-1,sp),x
1132  02da 2023          	jra	L133
1133  02dc               L723:
1134                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1136  02dc 7b02          	ld	a,(OFST-2,sp)
1137  02de 43            	cpl	a
1138  02df 1101          	cp	a,(OFST-3,sp)
1139  02e1 2617          	jrne	L333
1140                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1142  02e3 7b01          	ld	a,(OFST-3,sp)
1143  02e5 5f            	clrw	x
1144  02e6 97            	ld	xl,a
1145  02e7 4f            	clr	a
1146  02e8 02            	rlwa	x,a
1147  02e9 1f03          	ldw	(OFST-1,sp),x
1149                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1151  02eb 7b02          	ld	a,(OFST-2,sp)
1152  02ed 5f            	clrw	x
1153  02ee 97            	ld	xl,a
1154  02ef 01            	rrwa	x,a
1155  02f0 1a04          	or	a,(OFST+0,sp)
1156  02f2 01            	rrwa	x,a
1157  02f3 1a03          	or	a,(OFST-1,sp)
1158  02f5 01            	rrwa	x,a
1159  02f6 1f03          	ldw	(OFST-1,sp),x
1162  02f8 2005          	jra	L133
1163  02fa               L333:
1164                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1166  02fa ae5555        	ldw	x,#21845
1167  02fd 1f03          	ldw	(OFST-1,sp),x
1169  02ff               L133:
1170                     ; 331   return(res_value);
1172  02ff 1e03          	ldw	x,(OFST-1,sp)
1175  0301 5b06          	addw	sp,#6
1176  0303 81            	ret
1251                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1251                     ; 341 {
1252                     	switch	.text
1253  0304               _FLASH_SetLowPowerMode:
1255  0304 88            	push	a
1256       00000000      OFST:	set	0
1259                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1261  0305 a104          	cp	a,#4
1262  0307 270b          	jreq	L441
1263  0309 a108          	cp	a,#8
1264  030b 2707          	jreq	L441
1265  030d 4d            	tnz	a
1266  030e 2704          	jreq	L441
1267  0310 a10c          	cp	a,#12
1268  0312 2603          	jrne	L241
1269  0314               L441:
1270  0314 4f            	clr	a
1271  0315 2010          	jra	L641
1272  0317               L241:
1273  0317 ae0157        	ldw	x,#343
1274  031a 89            	pushw	x
1275  031b ae0000        	ldw	x,#0
1276  031e 89            	pushw	x
1277  031f ae0010        	ldw	x,#L73
1278  0322 cd0000        	call	_assert_failed
1280  0325 5b04          	addw	sp,#4
1281  0327               L641:
1282                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1284  0327 c6505a        	ld	a,20570
1285  032a a4f3          	and	a,#243
1286  032c c7505a        	ld	20570,a
1287                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1289  032f c6505a        	ld	a,20570
1290  0332 1a01          	or	a,(OFST+1,sp)
1291  0334 c7505a        	ld	20570,a
1292                     ; 350 }
1295  0337 84            	pop	a
1296  0338 81            	ret
1355                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1355                     ; 359 {
1356                     	switch	.text
1357  0339               _FLASH_SetProgrammingTime:
1359  0339 88            	push	a
1360       00000000      OFST:	set	0
1363                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1365  033a 4d            	tnz	a
1366  033b 2704          	jreq	L451
1367  033d a101          	cp	a,#1
1368  033f 2603          	jrne	L251
1369  0341               L451:
1370  0341 4f            	clr	a
1371  0342 2010          	jra	L651
1372  0344               L251:
1373  0344 ae0169        	ldw	x,#361
1374  0347 89            	pushw	x
1375  0348 ae0000        	ldw	x,#0
1376  034b 89            	pushw	x
1377  034c ae0010        	ldw	x,#L73
1378  034f cd0000        	call	_assert_failed
1380  0352 5b04          	addw	sp,#4
1381  0354               L651:
1382                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1384  0354 7211505a      	bres	20570,#0
1385                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1387  0358 c6505a        	ld	a,20570
1388  035b 1a01          	or	a,(OFST+1,sp)
1389  035d c7505a        	ld	20570,a
1390                     ; 365 }
1393  0360 84            	pop	a
1394  0361 81            	ret
1419                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1419                     ; 373 {
1420                     	switch	.text
1421  0362               _FLASH_GetLowPowerMode:
1425                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1427  0362 c6505a        	ld	a,20570
1428  0365 a40c          	and	a,#12
1431  0367 81            	ret
1456                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1456                     ; 383 {
1457                     	switch	.text
1458  0368               _FLASH_GetProgrammingTime:
1462                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1464  0368 c6505a        	ld	a,20570
1465  036b a401          	and	a,#1
1468  036d 81            	ret
1502                     ; 392 uint32_t FLASH_GetBootSize(void)
1502                     ; 393 {
1503                     	switch	.text
1504  036e               _FLASH_GetBootSize:
1506  036e 5204          	subw	sp,#4
1507       00000004      OFST:	set	4
1510                     ; 394   uint32_t temp = 0;
1512                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1514  0370 c6505d        	ld	a,20573
1515  0373 5f            	clrw	x
1516  0374 97            	ld	xl,a
1517  0375 90ae0200      	ldw	y,#512
1518  0379 cd0000        	call	c_umul
1520  037c 96            	ldw	x,sp
1521  037d 1c0001        	addw	x,#OFST-3
1522  0380 cd0000        	call	c_rtol
1525                     ; 400   if(FLASH->FPR == 0xFF)
1527  0383 c6505d        	ld	a,20573
1528  0386 a1ff          	cp	a,#255
1529  0388 2611          	jrne	L554
1530                     ; 402     temp += 512;
1532  038a ae0200        	ldw	x,#512
1533  038d bf02          	ldw	c_lreg+2,x
1534  038f ae0000        	ldw	x,#0
1535  0392 bf00          	ldw	c_lreg,x
1536  0394 96            	ldw	x,sp
1537  0395 1c0001        	addw	x,#OFST-3
1538  0398 cd0000        	call	c_lgadd
1541  039b               L554:
1542                     ; 406   return(temp);
1544  039b 96            	ldw	x,sp
1545  039c 1c0001        	addw	x,#OFST-3
1546  039f cd0000        	call	c_ltor
1550  03a2 5b04          	addw	sp,#4
1551  03a4 81            	ret
1654                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1654                     ; 418 {
1655                     	switch	.text
1656  03a5               _FLASH_GetFlagStatus:
1658  03a5 88            	push	a
1659  03a6 88            	push	a
1660       00000001      OFST:	set	1
1663                     ; 419   FlagStatus status = RESET;
1665                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1667  03a7 a108          	cp	a,#8
1668  03a9 270c          	jreq	L271
1669  03ab a104          	cp	a,#4
1670  03ad 2708          	jreq	L271
1671  03af a102          	cp	a,#2
1672  03b1 2704          	jreq	L271
1673  03b3 a101          	cp	a,#1
1674  03b5 2603          	jrne	L071
1675  03b7               L271:
1676  03b7 4f            	clr	a
1677  03b8 2010          	jra	L471
1678  03ba               L071:
1679  03ba ae01a5        	ldw	x,#421
1680  03bd 89            	pushw	x
1681  03be ae0000        	ldw	x,#0
1682  03c1 89            	pushw	x
1683  03c2 ae0010        	ldw	x,#L73
1684  03c5 cd0000        	call	_assert_failed
1686  03c8 5b04          	addw	sp,#4
1687  03ca               L471:
1688                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1690  03ca c6505f        	ld	a,20575
1691  03cd 1502          	bcp	a,(OFST+1,sp)
1692  03cf 2706          	jreq	L525
1693                     ; 426     status = SET; /* FLASH_FLAG is set */
1695  03d1 a601          	ld	a,#1
1696  03d3 6b01          	ld	(OFST+0,sp),a
1699  03d5 2002          	jra	L725
1700  03d7               L525:
1701                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1703  03d7 0f01          	clr	(OFST+0,sp)
1705  03d9               L725:
1706                     ; 434   return status;
1708  03d9 7b01          	ld	a,(OFST+0,sp)
1711  03db 85            	popw	x
1712  03dc 81            	ret
1797                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1797                     ; 550 {
1798                     	switch	.text
1799  03dd               _FLASH_WaitForLastOperation:
1801  03dd 5203          	subw	sp,#3
1802       00000003      OFST:	set	3
1805                     ; 551   uint8_t flagstatus = 0x00;
1807  03df 0f03          	clr	(OFST+0,sp)
1809                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1811  03e1 aeffff        	ldw	x,#65535
1812  03e4 1f01          	ldw	(OFST-2,sp),x
1814                     ; 576   UNUSED(FLASH_MemType);
1817  03e6 200e          	jra	L375
1818  03e8               L175:
1819                     ; 579     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1821  03e8 c6505f        	ld	a,20575
1822  03eb a405          	and	a,#5
1823  03ed 6b03          	ld	(OFST+0,sp),a
1825                     ; 580     timeout--;
1827  03ef 1e01          	ldw	x,(OFST-2,sp)
1828  03f1 1d0001        	subw	x,#1
1829  03f4 1f01          	ldw	(OFST-2,sp),x
1831  03f6               L375:
1832                     ; 577   while((flagstatus == 0x00) && (timeout != 0x00))
1834  03f6 0d03          	tnz	(OFST+0,sp)
1835  03f8 2604          	jrne	L775
1837  03fa 1e01          	ldw	x,(OFST-2,sp)
1838  03fc 26ea          	jrne	L175
1839  03fe               L775:
1840                     ; 584   if(timeout == 0x00 )
1842  03fe 1e01          	ldw	x,(OFST-2,sp)
1843  0400 2604          	jrne	L106
1844                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1846  0402 a602          	ld	a,#2
1847  0404 6b03          	ld	(OFST+0,sp),a
1849  0406               L106:
1850                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1852  0406 7b03          	ld	a,(OFST+0,sp)
1855  0408 5b03          	addw	sp,#3
1856  040a 81            	ret
1920                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1920                     ; 600 {
1921                     	switch	.text
1922  040b               _FLASH_EraseBlock:
1924  040b 89            	pushw	x
1925  040c 5206          	subw	sp,#6
1926       00000006      OFST:	set	6
1929                     ; 601   uint32_t startaddress = 0;
1931                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1933  040e 7b0b          	ld	a,(OFST+5,sp)
1934  0410 a1fd          	cp	a,#253
1935  0412 2706          	jreq	L402
1936  0414 7b0b          	ld	a,(OFST+5,sp)
1937  0416 a1f7          	cp	a,#247
1938  0418 2603          	jrne	L202
1939  041a               L402:
1940  041a 4f            	clr	a
1941  041b 2010          	jra	L602
1942  041d               L202:
1943  041d ae0263        	ldw	x,#611
1944  0420 89            	pushw	x
1945  0421 ae0000        	ldw	x,#0
1946  0424 89            	pushw	x
1947  0425 ae0010        	ldw	x,#L73
1948  0428 cd0000        	call	_assert_failed
1950  042b 5b04          	addw	sp,#4
1951  042d               L602:
1952                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1954  042d 7b0b          	ld	a,(OFST+5,sp)
1955  042f a1fd          	cp	a,#253
1956  0431 2626          	jrne	L536
1957                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1959  0433 1e07          	ldw	x,(OFST+1,sp)
1960  0435 a30080        	cpw	x,#128
1961  0438 2403          	jruge	L012
1962  043a 4f            	clr	a
1963  043b 2010          	jra	L212
1964  043d               L012:
1965  043d ae0266        	ldw	x,#614
1966  0440 89            	pushw	x
1967  0441 ae0000        	ldw	x,#0
1968  0444 89            	pushw	x
1969  0445 ae0010        	ldw	x,#L73
1970  0448 cd0000        	call	_assert_failed
1972  044b 5b04          	addw	sp,#4
1973  044d               L212:
1974                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1976  044d ae8000        	ldw	x,#32768
1977  0450 1f05          	ldw	(OFST-1,sp),x
1978  0452 ae0000        	ldw	x,#0
1979  0455 1f03          	ldw	(OFST-3,sp),x
1982  0457 2024          	jra	L736
1983  0459               L536:
1984                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1986  0459 1e07          	ldw	x,(OFST+1,sp)
1987  045b a3000a        	cpw	x,#10
1988  045e 2403          	jruge	L412
1989  0460 4f            	clr	a
1990  0461 2010          	jra	L612
1991  0463               L412:
1992  0463 ae026b        	ldw	x,#619
1993  0466 89            	pushw	x
1994  0467 ae0000        	ldw	x,#0
1995  046a 89            	pushw	x
1996  046b ae0010        	ldw	x,#L73
1997  046e cd0000        	call	_assert_failed
1999  0471 5b04          	addw	sp,#4
2000  0473               L612:
2001                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2003  0473 ae4000        	ldw	x,#16384
2004  0476 1f05          	ldw	(OFST-1,sp),x
2005  0478 ae0000        	ldw	x,#0
2006  047b 1f03          	ldw	(OFST-3,sp),x
2008  047d               L736:
2009                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2011  047d 1e07          	ldw	x,(OFST+1,sp)
2012  047f a640          	ld	a,#64
2013  0481 cd0000        	call	c_cmulx
2015  0484 96            	ldw	x,sp
2016  0485 1c0003        	addw	x,#OFST-3
2017  0488 cd0000        	call	c_ladd
2019  048b be02          	ldw	x,c_lreg+2
2020  048d 1f01          	ldw	(OFST-5,sp),x
2022                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
2024  048f 721a505b      	bset	20571,#5
2025                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2027  0493 721b505c      	bres	20572,#5
2028                     ; 637     *pwFlash = (uint32_t)0;
2030  0497 1e01          	ldw	x,(OFST-5,sp)
2031  0499 a600          	ld	a,#0
2032  049b e703          	ld	(3,x),a
2033  049d a600          	ld	a,#0
2034  049f e702          	ld	(2,x),a
2035  04a1 a600          	ld	a,#0
2036  04a3 e701          	ld	(1,x),a
2037  04a5 a600          	ld	a,#0
2038  04a7 f7            	ld	(x),a
2039                     ; 645 }
2042  04a8 5b08          	addw	sp,#8
2043  04aa 81            	ret
2148                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2148                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2148                     ; 658 {
2149                     	switch	.text
2150  04ab               _FLASH_ProgramBlock:
2152  04ab 89            	pushw	x
2153  04ac 5206          	subw	sp,#6
2154       00000006      OFST:	set	6
2157                     ; 659   uint16_t Count = 0;
2159                     ; 660   uint32_t startaddress = 0;
2161                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2163  04ae 7b0b          	ld	a,(OFST+5,sp)
2164  04b0 a1fd          	cp	a,#253
2165  04b2 2706          	jreq	L422
2166  04b4 7b0b          	ld	a,(OFST+5,sp)
2167  04b6 a1f7          	cp	a,#247
2168  04b8 2603          	jrne	L222
2169  04ba               L422:
2170  04ba 4f            	clr	a
2171  04bb 2010          	jra	L622
2172  04bd               L222:
2173  04bd ae0297        	ldw	x,#663
2174  04c0 89            	pushw	x
2175  04c1 ae0000        	ldw	x,#0
2176  04c4 89            	pushw	x
2177  04c5 ae0010        	ldw	x,#L73
2178  04c8 cd0000        	call	_assert_failed
2180  04cb 5b04          	addw	sp,#4
2181  04cd               L622:
2182                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2184  04cd 0d0c          	tnz	(OFST+6,sp)
2185  04cf 2706          	jreq	L232
2186  04d1 7b0c          	ld	a,(OFST+6,sp)
2187  04d3 a110          	cp	a,#16
2188  04d5 2603          	jrne	L032
2189  04d7               L232:
2190  04d7 4f            	clr	a
2191  04d8 2010          	jra	L432
2192  04da               L032:
2193  04da ae0298        	ldw	x,#664
2194  04dd 89            	pushw	x
2195  04de ae0000        	ldw	x,#0
2196  04e1 89            	pushw	x
2197  04e2 ae0010        	ldw	x,#L73
2198  04e5 cd0000        	call	_assert_failed
2200  04e8 5b04          	addw	sp,#4
2201  04ea               L432:
2202                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2204  04ea 7b0b          	ld	a,(OFST+5,sp)
2205  04ec a1fd          	cp	a,#253
2206  04ee 2626          	jrne	L317
2207                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2209  04f0 1e07          	ldw	x,(OFST+1,sp)
2210  04f2 a30080        	cpw	x,#128
2211  04f5 2403          	jruge	L632
2212  04f7 4f            	clr	a
2213  04f8 2010          	jra	L042
2214  04fa               L632:
2215  04fa ae029b        	ldw	x,#667
2216  04fd 89            	pushw	x
2217  04fe ae0000        	ldw	x,#0
2218  0501 89            	pushw	x
2219  0502 ae0010        	ldw	x,#L73
2220  0505 cd0000        	call	_assert_failed
2222  0508 5b04          	addw	sp,#4
2223  050a               L042:
2224                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2226  050a ae8000        	ldw	x,#32768
2227  050d 1f03          	ldw	(OFST-3,sp),x
2228  050f ae0000        	ldw	x,#0
2229  0512 1f01          	ldw	(OFST-5,sp),x
2232  0514 2024          	jra	L517
2233  0516               L317:
2234                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2236  0516 1e07          	ldw	x,(OFST+1,sp)
2237  0518 a3000a        	cpw	x,#10
2238  051b 2403          	jruge	L242
2239  051d 4f            	clr	a
2240  051e 2010          	jra	L442
2241  0520               L242:
2242  0520 ae02a0        	ldw	x,#672
2243  0523 89            	pushw	x
2244  0524 ae0000        	ldw	x,#0
2245  0527 89            	pushw	x
2246  0528 ae0010        	ldw	x,#L73
2247  052b cd0000        	call	_assert_failed
2249  052e 5b04          	addw	sp,#4
2250  0530               L442:
2251                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2253  0530 ae4000        	ldw	x,#16384
2254  0533 1f03          	ldw	(OFST-3,sp),x
2255  0535 ae0000        	ldw	x,#0
2256  0538 1f01          	ldw	(OFST-5,sp),x
2258  053a               L517:
2259                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2261  053a 1e07          	ldw	x,(OFST+1,sp)
2262  053c a640          	ld	a,#64
2263  053e cd0000        	call	c_cmulx
2265  0541 96            	ldw	x,sp
2266  0542 1c0001        	addw	x,#OFST-5
2267  0545 cd0000        	call	c_lgadd
2270                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2272  0548 0d0c          	tnz	(OFST+6,sp)
2273  054a 260a          	jrne	L717
2274                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2276  054c 7210505b      	bset	20571,#0
2277                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2279  0550 7211505c      	bres	20572,#0
2281  0554 2008          	jra	L127
2282  0556               L717:
2283                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2285  0556 7218505b      	bset	20571,#4
2286                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2288  055a 7219505c      	bres	20572,#4
2289  055e               L127:
2290                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2292  055e 5f            	clrw	x
2293  055f 1f05          	ldw	(OFST-1,sp),x
2295  0561               L327:
2296                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2298  0561 1e0d          	ldw	x,(OFST+7,sp)
2299  0563 72fb05        	addw	x,(OFST-1,sp)
2300  0566 f6            	ld	a,(x)
2301  0567 1e03          	ldw	x,(OFST-3,sp)
2302  0569 72fb05        	addw	x,(OFST-1,sp)
2303  056c f7            	ld	(x),a
2304                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2306  056d 1e05          	ldw	x,(OFST-1,sp)
2307  056f 1c0001        	addw	x,#1
2308  0572 1f05          	ldw	(OFST-1,sp),x
2312  0574 1e05          	ldw	x,(OFST-1,sp)
2313  0576 a30040        	cpw	x,#64
2314  0579 25e6          	jrult	L327
2315                     ; 698 }
2318  057b 5b08          	addw	sp,#8
2319  057d 81            	ret
2332                     	xdef	_FLASH_WaitForLastOperation
2333                     	xdef	_FLASH_ProgramBlock
2334                     	xdef	_FLASH_EraseBlock
2335                     	xdef	_FLASH_GetFlagStatus
2336                     	xdef	_FLASH_GetBootSize
2337                     	xdef	_FLASH_GetProgrammingTime
2338                     	xdef	_FLASH_GetLowPowerMode
2339                     	xdef	_FLASH_SetProgrammingTime
2340                     	xdef	_FLASH_SetLowPowerMode
2341                     	xdef	_FLASH_EraseOptionByte
2342                     	xdef	_FLASH_ProgramOptionByte
2343                     	xdef	_FLASH_ReadOptionByte
2344                     	xdef	_FLASH_ProgramWord
2345                     	xdef	_FLASH_ReadByte
2346                     	xdef	_FLASH_ProgramByte
2347                     	xdef	_FLASH_EraseByte
2348                     	xdef	_FLASH_ITConfig
2349                     	xdef	_FLASH_DeInit
2350                     	xdef	_FLASH_Lock
2351                     	xdef	_FLASH_Unlock
2352                     	xref	_assert_failed
2353                     	switch	.const
2354  0010               L73:
2355  0010 7372635c7374  	dc.b	"src\stm8s_flash.c",0
2356                     	xref.b	c_lreg
2357                     	xref.b	c_x
2358                     	xref.b	c_y
2378                     	xref	c_ladd
2379                     	xref	c_cmulx
2380                     	xref	c_lgadd
2381                     	xref	c_rtol
2382                     	xref	c_umul
2383                     	xref	c_lcmp
2384                     	xref	c_ltor
2385                     	end
