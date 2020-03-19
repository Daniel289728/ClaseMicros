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
    TRISBbits.RB1 = 0;
    TRISBbits.RB2 = 0;
    //TRISBbits.RB4 = 1;
    while(1)
    {
        if(value){
            LATBbits.LB1 = 1;
            LATBbits.LB2 = 0;
        }
		/* Rotate Stepper Motor Anticlockwise with Full step sequence */
        else{
            LATBbits.LB1 = 0;
            LATBbits.LB2 = 1;            
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
    INTCONbits.INT0IF=0;  //clearing INT0 interrupt flag
  }
}