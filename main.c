/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 * 
 * This code will have a basic altimeter that will work as a on board computer.
 * 
 */

#include "stm8s.h"
#include "stm8s_gpio.h"
 #include "stm8s_serial.h" //https://github.com/CircuitDigest/STM8S103F3_SPL/blob/master/stm8s103%20Libraries/stm8s103_Serial.h
 
void delay (int ms) //Function Definition 
{
	int i =0 ;
	int j=0;
	for (i=0; i<=ms; i++)
	{
		for (j=0; j<120; j++) // Nop = Fosc/4
		_asm("nop"); //Perform no operation //assembly code  
	}
}


main()
{
	Serial_begin(9600); //Initialize Serial communication at 9600 baud rate
	GPIO_DeInit(GPIOC); //prepare Port C for working 
	GPIO_DeInit(GPIOD); //prepare Port C for working 
	//Declare PC4  as output pull up pin
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW); 
	//GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW); 

	while (1){
		GPIO_WriteHigh(GPIOC, GPIO_PIN_4); //LED OFF
		GPIO_WriteHigh(GPIOD, GPIO_PIN_4); //LED OFF
		delay(100);
		GPIO_WriteLow(GPIOC, GPIO_PIN_4); //LED OFF
		Serial_print_string("You have pressed: ");
		//GPIO_WriteLow(GPIOD, GPIO_PIN_4); //LED OFF
		delay(1000);
	}
	
}