#include <xc.h>
#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */
#include<pic18.h>

#define servo LATBbits.LB2
#define boton1 PORTBbits.RB0
#define boton2 PORTBbits.RB1

#define _XTAL_FREQ 8000000
int count=0, value;

void main()
{
    TRISB |= 0x03;
    GIE = 1;        /* Habilitar interrupciones globales*/
    TMR0IE = 1;     /*Habilitar interrupción del timer 0*/
    T0CON   = 0XC3; /* Preescaler */    
    TMR0    = 0X64; /* interrupción cada .5ms */

    while(1)
    {
        if(boton1 && value != 5){/*180 grados*/
            value = 5;
        }
        else if(boton2 && value != 0){/*0 grados*/
            value = 0;
        }
    }
}

__interrupt() void ISR(void)
{
    if(T0IF)
    {
        TMR0IF = 0;      /* Vaciar timer */
        count++;         /* Contador  */

        if(count==40)    /* Suma para obtener 20ms */
        {
            count = 0;
            servo = 1;      /* Servo high */
        }
        if(count==value)
        {
            servo = 0; 
        }
    TMR0=0x64;       /* Volver a setear tiempo al timer */
    T0IF = 0;
  }
}