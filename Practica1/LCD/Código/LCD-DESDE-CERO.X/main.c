#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */
#include "xlcd.h"/* Libreria para LCD */
#include <stdio.h>
#include <stdint.h>
#include <math.h>

     //Variable de 16 bits para almacenar el resultado de la conversion
char strResultado[5];       //String para almacenar el resultado de la conversion

void initADC(void);
void inicializacionLCD(void);
uint16_t conversionADC(void);  /* Función que lee el ADC */

void main (void)
{
    double Dis, Vadc;
    uint16_t Radc;
    uint32_t DisI;
    inicializacionLCD();
    putrsXLCD("    Distancia:");
    initADC();
    
    while(1){
        Radc = (conversionADC());
        Vadc = (float)(Radc);
        Vadc = (Vadc*2.5)/1024;
        //Dis = (-39.66*Vadc) + 78.25;//primer grado
        //Dis = (34.62*Vadc*Vadc) - (121.2*Vadc) + 115.06;//Segundo grado
        //Dis = (-29.88*Vadc*Vadc*Vadc) + (147.9*Vadc*Vadc) - (245.4*Vadc) + 153.4;//tercer grado
        //Dis = (25.67*Vadc*Vadc*Vadc*Vadc) - (163.5*Vadc*Vadc*Vadc) + (385.2*Vadc*Vadc) - (413.0*Vadc) + 192.8;//cuarto grado
        Dis = (-22.14*Vadc*Vadc*Vadc*Vadc*Vadc) + (171.6*Vadc*Vadc*Vadc*Vadc) - (523.0*Vadc*Vadc*Vadc) + (793.5*Vadc*Vadc) - (625.0*Vadc) + 232.9;//Quinto grado
        sprintf(strResultado,"%.3f cm",Dis);
        WriteCmdXLCD(NEXT_LINE + 3);
        putsXLCD(strResultado);
        delay_ms(200);
    }
    while(1);
}

void inicializacionLCD(void)
{
    OpenXLCD(FOUR_BIT & LINES_5X7); // Iniciamos LCD.-
    WriteCmdXLCD(SHIFT_DISP_LEFT);  // Nos aseguramos incremento de direccion, display fijo
    WriteCmdXLCD(DON);              // Encendemos LCD
    WriteCmdXLCD(BLINK_OFF);        // Apagamos parpadeo de cursor
}
void initADC(void){         /* Funcion que inicializa el módulo ADC del PIC */
    ADCON0 = 0b00000001;    /* Habilitar ADC (bit 0) Empezar la condección (bit 1) */
                            /* Elegir AN0 (bits 5-2) */
    ADCON1 = 0b00011110;    /* Declarar RA0 como pin analógico (bits 0-3) */       
    ADCON2 = 0b10111100;
}

uint16_t conversionADC(void){           /* Función que realiza la conversión Analógica - Digital */
    unsigned int resultado;
    ADCON0bits.GO_DONE = 1;             /* Inicia la conversión*/
    while (ADCON0bits.GO_DONE == 1); 	/* Espero a que se complete */
    resultado = (ADRESH<<8) + ADRESL;   /* Formatea el resultado a 16 bits */
    return resultado;                   /* Devuelve resultado */
}


void DelayFor18TCY(void){
	 _delay(240);
}
void DelayPORXLCD(void){
    delay_ms(15);
}
void DelayXLCD(void){
    delay_ms(5);
}
