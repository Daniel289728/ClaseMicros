/*
 * File:   main.c
 * Author: danie
 *
 * Created on 19 de marzo de 2020, 11:26 AM
 */


#include <xc.h>
#include <stdint.h>
#include "Alteri.h"
#define period 100

void Pasos(uint8_t val);
void StepDelay(uint32_t val);
void InterruptInit(void);
uint8_t value = 0;
void main(void)
{
    OSCCON = 0x72;
    InterruptInit();
    TRISDbits.RD0 = 0;
    TRISDbits.RD1 = 0;
    TRISDbits.RD2 = 0;
    TRISDbits.RD3 = 0;
    TRISAbits.RA3 = 0;
    //TRISBbits.RB4 = 1;
    while(1)
    {
        if(value){
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
		/* Rotate Stepper Motor Anticlockwise with Full step sequence */
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

__interrupt() void ISR(void)  //High priority interrupt ISR
//void interrupt ServicioInterrupcion(void)
{
  if(INTCONbits.INT0IF==1)  //polling for INT0 interrupt
  {
    if(value == 0){
        value = 1;
    }
    else if(value == 1){
        value = 0;
    }
    LATAbits.LA3 = value;  
    INTCONbits.INT0IF=0;  //clearing INT0 interrupt flag
  }
}