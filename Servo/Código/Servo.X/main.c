#include <xc.h>
#include "Alteri.h"
#include<pic18.h>
#define servo LATBbits.LB2
#define boton1 PORTBbits.RB0
#define boton2 PORTBbits.RB1

#define _XTAL_FREQ 8000000
int count=0, value;

void main()
{
    TRISBbits.RB0 = 1;
    TRISBbits.RB1 = 1;
    TRISBbits.RB2 = 0;
    GIE = 1;
    TMR0IE = 1;
    T0CON   = 0XC3; /* Preescaler */    
    TMR0    = 0X64; /* .5ms a timer */

    while(1)
    {
        if(boton1 && value != 5){/*90*/
            value = 5;
        }
        else if(boton2 && value != 0){/*180*/
            value = 0;
        }
    }
}

__interrupt() void ISR(void)
{
    if(T0IF)
    {
        TMR0IF = 0;      /* clear timer */
        count++;         /* contador  */

        if(count==40)    /* Suma para obtener 20ms*/
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