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
#include "stm8s_i2c.h" 
#include "stm8s_clk.h"

/* Check this documentation/implementation
https://github.com/iNavFlight/inav/pull/5028
https://datasheet.lcsc.com/lcsc/2101201914_Goertek-SPL06-001_C2684428.pdf

*/

#define I2C_SPL06_001_ADDRESS 0x77			


 
void delay (int ms); 
void I2CSetup(void);


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

 void delay (int ms)//Function Definition 
{
	int i =0 ;
	int j=0;
	for (i=0; i<=ms; i++)
	{
		for (j=0; j<120; j++) // Nop = Fosc/4
		_asm("nop"); //Perform no operation //assembly code  
	}
}


void I2CSetup(void){
	u8 Input_Clock = 0;
  	Input_Clock = CLK_GetClockFreq()/1000000;
 	I2C_Init(I2C_Speed, I2C_SPL06_001_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, Input_Clock);
}

void I2C_Write(){
	/*  sending the slave address in write mode (RW=’0’) 
	111011X0 (‘X’ is determined by state of SDO pin. our case will be 0x77  or  for complete i2c message 11101110 */

	/*Then the master sends pairs of register addresses
	and register data. The transaction is ended by a stop condition.*/


}