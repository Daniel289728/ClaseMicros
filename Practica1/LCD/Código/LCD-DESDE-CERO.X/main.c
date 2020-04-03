#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */
#include "xlcd.h"/* Libreria para LCD */

void inicializacionLCD(void);/*Función para inicializar LCD */


void main (void)
{
    inicializacionLCD();
    putrsXLCD("   HOLA MUNDO");
    WriteCmdXLCD(NEXT_LINE);
    putrsXLCD("  ADIOS MUNDO");

    while(1);
}

void inicializacionLCD(void)
{
    OpenXLCD(FOUR_BIT & LINES_5X7); // Iniciamos LCD.-
    WriteCmdXLCD(SHIFT_DISP_LEFT);  // Nos aseguramos incremento de direccion, display fijo
    WriteCmdXLCD(DON);              // Encendemos LCD
    WriteCmdXLCD(BLINK_OFF);        // Apagamos parpadeo de cursor
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
