#include <xc.h>
#include <stdint.h>
#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */


void InterruptInit(void);/* Función para inicializar la interrupcion en RB0 */

uint8_t value = 0;

void main(void)
{
    OSCCON = 0x72;/* Reloj interno como 8MHz*/
    InterruptInit();
    TRISBbits.RB1 = 0;
    TRISBbits.RB2 = 0;
    while(1)
    {
        if(value){
            LATBbits.LB1 = 1;
            LATBbits.LB2 = 0;
        }
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


__interrupt() void ISR(void)
{
  if(INTCONbits.INT0IF==1)
  {
    if(value == 0){/*Cambiar el valor de value*/
        value = 1;
    }
    else if(value == 1){
        value = 0;
    }
    INTCONbits.INT0IF=0; /* Vaciar la bandera de interrupción */
  }
}