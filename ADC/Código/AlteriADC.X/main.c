
/* ********* Dignal | Tarjeta de desarrollo Alteri PIC18F4550  ***************
 * Muestra en LCD el valor analógico recibido de la conversión A/D
 * NOTA: Para correr el programa en la placa Alteri es necesario ir a Properties->
 * XC8 linker->Additional option->Codeoffset y agregar el valor 0x1000
 *****************************************************************************/

#include "Alteri.h"
#include "xlcd.h"
//#include <stdlib.h> //itoa
#include <stdio.h>

char strResultado[5];       //String para almacenar el resultado de la conversion

/*funciones prototipo*/
void initADC(void);
void initLCD(void);
unsigned int conversionADC(void);
void ChecarLEDs(unsigned int res);
void initLED(void);

void main(void){
    initLCD();
    initADC();
    initLED();
    while(1){
        //itoa(resultado,strResultado,10);      //Non ANSI function
        sprintf(strResultado,"%04u",conversionADC());
        ChecarLEDs(conversionADC());
        WriteCmdXLCD(NEXT_LINE + 5);
        putsXLCD(strResultado);
        delay_ms(200);
    }
}

void initLED(void){
    TRISAbits.RA1 = 0;
    TRISAbits.RA2 = 0;
    TRISAbits.RA3 = 0;
    TRISAbits.RA4 = 0;
    TRISAbits.RA5 = 0;
    TRISBbits.RB0 = 0;
    TRISBbits.RB1 = 0;
    TRISBbits.RB2 = 0;
    TRISBbits.RB3 = 0;
    TRISBbits.RB4 = 0;
    
    LATAbits.LA1 = 0;
    LATAbits.LA2 = 0;
    LATAbits.LA3 = 0;
    LATAbits.LA4 = 0;
    LATAbits.LA5 = 0;
    LATBbits.LB0 = 0;
    LATBbits.LB1 = 0;
    LATBbits.LB2 = 0;
    LATBbits.LB3 = 0;
    LATBbits.LB4 = 0;
}
void initADC(void){ //Funcion que inicializa el módulo ADC del PIC
    ADCON0 = 0b00000001;    //Habilitar ADC (bit 0) Empezar la condección (bit 1) 
                            //Elegir AN0 (bits 5-2)
    ADCON1 = 0b00001110;    //Declarar RA0 como pin analógico (bits 0-3)
                            //
    ADCON2 = 0b10111100;
}
void initLCD(void){ //Funcion que inicializa la pantalla LCD
    OpenXLCD(FOUR_BIT & LINES_5X7);// Iniciamos LCD.-
    WriteCmdXLCD(SHIFT_DISP_LEFT);  // Nos aseguramos incremento de direccion, display fijo
    WriteCmdXLCD(DON);              // Encendemos LCD
    WriteCmdXLCD(BLINK_OFF);        // Apagamos parpadeo de cursor
    putrsXLCD("Convertidor AD:");
}
unsigned int conversionADC(void){ //Función que realiza la conversión Analógica - Digital
    unsigned int resultado;
    ADCON0bits.GO_DONE = 1;             //inicia la conversión
    while (ADCON0bits.GO_DONE == 1); 	// Espero a que se complete
    resultado = (ADRESH<<8) + ADRESL;   //formatea el resultado a 16 bits
    return resultado;                   //devuelve resultado 
}

void ChecarLEDs(unsigned int res){
    LATAbits.LA1 = (res&(1<<9)) == 0 ? 0 : 1;
    LATAbits.LA2 = (res&(1<<8)) == 0 ? 0 : 1;
    LATAbits.LA3 = (res&(1<<7)) == 0 ? 0 : 1;
    LATAbits.LA4 = (res&(1<<6)) == 0 ? 0 : 1;
    LATAbits.LA5 = (res&(1<<5)) == 0 ? 0 : 1;
    LATBbits.LB0 = (res&(1<<4)) == 0 ? 0 : 1;
    LATBbits.LB1 = (res&(1<<3)) == 0 ? 0 : 1;
    LATBbits.LB2 = (res&(1<<2)) == 0 ? 0 : 1;
    LATBbits.LB3 = (res&(1<<1)) == 0 ? 0 : 1;
    LATBbits.LB4 = (res&(1<<0)) == 0 ? 0 : 1;
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