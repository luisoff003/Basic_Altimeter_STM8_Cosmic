   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  72                     ; 9 void delay (int ms) //Function Definition 
  72                     ; 10 {
  74                     	switch	.text
  75  0000               _delay:
  77  0000 89            	pushw	x
  78  0001 5204          	subw	sp,#4
  79       00000004      OFST:	set	4
  82                     ; 11 	int i =0 ;
  84                     ; 12 	int j=0;
  86                     ; 13 	for (i=0; i<=ms; i++)
  88  0003 5f            	clrw	x
  89  0004 1f01          	ldw	(OFST-3,sp),x
  92  0006 201a          	jra	L34
  93  0008               L73:
  94                     ; 15 		for (j=0; j<120; j++) // Nop = Fosc/4
  96  0008 5f            	clrw	x
  97  0009 1f03          	ldw	(OFST-1,sp),x
  99  000b               L74:
 100                     ; 16 		_asm("nop"); //Perform no operation //assembly code  
 103  000b 9d            nop
 105                     ; 15 		for (j=0; j<120; j++) // Nop = Fosc/4
 107  000c 1e03          	ldw	x,(OFST-1,sp)
 108  000e 1c0001        	addw	x,#1
 109  0011 1f03          	ldw	(OFST-1,sp),x
 113  0013 9c            	rvf
 114  0014 1e03          	ldw	x,(OFST-1,sp)
 115  0016 a30078        	cpw	x,#120
 116  0019 2ff0          	jrslt	L74
 117                     ; 13 	for (i=0; i<=ms; i++)
 119  001b 1e01          	ldw	x,(OFST-3,sp)
 120  001d 1c0001        	addw	x,#1
 121  0020 1f01          	ldw	(OFST-3,sp),x
 123  0022               L34:
 126  0022 9c            	rvf
 127  0023 1e01          	ldw	x,(OFST-3,sp)
 128  0025 1305          	cpw	x,(OFST+1,sp)
 129  0027 2ddf          	jrsle	L73
 130                     ; 18 }
 133  0029 5b06          	addw	sp,#6
 134  002b 81            	ret
 157                     ; 21 main()
 157                     ; 22 {
 158                     	switch	.text
 159  002c               _main:
 163                     ; 34 }
 166  002c 81            	ret
 179                     	xdef	_main
 180                     	xdef	_delay
 199                     	end
