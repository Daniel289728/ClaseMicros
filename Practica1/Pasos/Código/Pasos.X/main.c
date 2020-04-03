#include <xc.h>
#include <stdint.h>
#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */
#define period 100

void StepDelay(uint32_t val);/* Pseudo delay para tiempo entre señales a motor*/
void InterruptInit(void); /* Inicializacion de interrupción */
uint8_t value = 0;
void main(void)
{
    OSCCON = 0x72;/* Reloj interno a 8MHz*/
    InterruptInit();
    TRISD = 0;
    TRISA = 0;
    while(1)
    {
        if(value){/*Rotar el motor a pasos en el sentido del reloj a medio paso*/
                LATD = 0x09;
                StepDelay(period);
                LATD = 0x08;
                StepDelay(period);
                LATD = 0x0C;
                StepDelay(period);
                LATD = 0x04;
                StepDelay(period);
                LATD = 0x06;
                StepDelay(period);
                LATD = 0x02;
                StepDelay(period);
                LATD = 0x03;
                StepDelay(period);
                LATD = 0x01;
                StepDelay(period);
        }
		/* Rotar el motor en contra del sentido del reloj a paso completo */
        else{
            LATD = 0x09;
            StepDelay(period);
            LATD = 0x03;
            StepDelay(period);
            LATD = 0x06;
            StepDelay(period);
            LATD = 0x0C;
            StepDelay(period);
        }
    }
    return;
}

void InterruptInit(void){
    INTCONbits.INT0E = 1;    //Habilita interrupcion por RB0
    INTCON2bits.INTEDG0 = 1; //int por flanco de subida
    INTCONbits.INT0F = 0;    //reset a bandera de int
    INTCONbits.GIE = 1;       //switch para habilitar interrupciones 
}
void StepDelay(uint32_t val)
{
     uint32_t i,j;
        for(i=0;i<val;i++)
        {
            for(j=0;j<165;j++);
        }
}

__interrupt() void ISR(void)
{
  if(INTCONbits.INT0IF==1)
  {
    if(value == 0){
        value = 1;
    }
    else if(value == 1){
        value = 0;
    }
    LATAbits.LA3 = value;  
    INTCONbits.INT0IF=0;  //vaciar bandera de interrupción
  }
}