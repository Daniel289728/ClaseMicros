#include "Alteri.h"/* Libreria espcífica de tarjeta de desarrollo usada */
#include "xlcd.h"/* Libreria para LCD */
#include <stdio.h>
#include <stdint.h>

char strResultado[5]; /* C-Like String para almacenar el resultado de la conversion */

/* Prototipo de funciones */
void initADC(void);                /* Función para inicializar el ADC */
void initLCD(void);                /* Función para inicializar la LCD */
void initLED(void);                /* Función para inicializar LED */
uint16_t conversionADC(void);  /* Función que lee el ADC */
void ChecarLEDs(uint16_t res); /* Función para cambiar LEDs */

void main(void){
    initLCD();
    initADC();
    initLED();
    while(1){
        uint16_t resultado = conversionADC(); /* Leer el ADC */
        sprintf(strResultado,"%04u",resultado);/* Poner la lectura de ADC en el string */
        WriteCmdXLCD(NEXT_LINE + 5);
        putsXLCD(strResultado); /* Poner el string en la LCD */
        ChecarLEDs(resultado); /* Actualizar los LEDs */
        delay_ms(200);
    }
}

void initLED(void){
    TRISA = 0;
    TRISB = 0;
    LATA = 0;
    LATB = 0;
}
void initADC(void){         /* Funcion que inicializa el módulo ADC del PIC */
    ADCON0 = 0b00000001;    /* Habilitar ADC (bit 0) Empezar la condección (bit 1) */
                            /* Elegir AN0 (bits 5-2) */
    ADCON1 = 0b00001110;    /* Declarar RA0 como pin analógico (bits 0-3) */       
    ADCON2 = 0b10111100;
}
void initLCD(void){                 /*Funcion que inicializa la pantalla LCD */
    OpenXLCD(FOUR_BIT & LINES_5X7); /* Iniciamos LCD.- */
    WriteCmdXLCD(SHIFT_DISP_LEFT);  /* Nos aseguramos incremento de direccion, display fijo */
    WriteCmdXLCD(DON);              /* Encendemos LCD */
    WriteCmdXLCD(BLINK_OFF);        /* Apagamos parpadeo de cursor */
    putrsXLCD("Convertidor AD:");
}
uint16_t conversionADC(void){           /* Función que realiza la conversión Analógica - Digital */
    unsigned int resultado;
    ADCON0bits.GO_DONE = 1;             /* Inicia la conversión*/
    while (ADCON0bits.GO_DONE == 1); 	/* Espero a que se complete */
    resultado = (ADRESH<<8) + ADRESL;   /* Formatea el resultado a 16 bits */
    return resultado;                   /* Devuelve resultado */
}

void ChecarLEDs(uint16_t res){
    /* La función esmascara los bits del resulado y prende los LEDs */
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