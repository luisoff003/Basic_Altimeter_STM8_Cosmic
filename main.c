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

#define I2C_SPEED       100000
#define SLAVE_ADDRESS    0x77
#define WHO_AM_I       0X0
#define INFO_ADDR       0X0D
#define ID_ADDR_SPL006     0X0D
 
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

void I2C_SPL_Init()
{
  uint8_t inputClock = 0x0;
  inputClock = CLK_GetClockFreq();

  I2C_Cmd(ENABLE);

  I2C_Init(I2C_SPEED, SLAVE_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, inputClock);
}

void I2C_SPL_ByteWrite(uint8_t I2C_SlaveAddress, uint8_t I2C_Data )
{
  I2C_GenerateSTART(ENABLE);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

  I2C_Send7bitAddress(I2C_SlaveAddress, I2C_DIRECTION_TX);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

  I2C_SendData(I2C_Data);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));

  I2C_GenerateSTOP(ENABLE);
}

void I2C_SPL_ByteRead(uint8_t I2C_SlaveAddress, uint8_t ReadAddr, uint8_t* pBuffer)
{
  while (I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));

  I2C_GenerateSTART(ENABLE);
  
  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

  I2C_Send7bitAddress(I2C_SlaveAddress, I2C_DIRECTION_TX);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

  I2C_SendData(ReadAddr);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));

  I2C_GenerateSTART(ENABLE);

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));

  while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));

  *pBuffer = I2C_ReceiveData();

  I2C_AcknowledgeConfig(I2C_ACK_NONE);

  I2C_GenerateSTOP(ENABLE);


}

main()
{
  uint8_t id_tmp = 0;
  uint8_t readAddr_ID = 0X0D;
  uint8_t inputClock = 0x0;
  
  //CLK_Config();
  I2C_DeInit();

  
  inputClock = CLK_GetClockFreq();

  I2C_Cmd(ENABLE);

  I2C_Init(I2C_SPEED, SLAVE_ADDRESS, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, inputClock);

  //I2C_SPL_ByteRead(SLAVE_ADDRESS, ID_ADDR_SPL006, id_tmp);

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
    Serial_print_string((char*)id_tmp);
    //GPIO_WriteLow(GPIOD, GPIO_PIN_4); //LED OFF
    delay(1000);
  }
  
}