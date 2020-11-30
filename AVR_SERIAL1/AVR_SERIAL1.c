#include<avr/io.h>
#include<util/delay.h>
#include"lcd.h"

void main()
{
	USARTInit(51);
	InitLCD(0);
	char data;
	DDRB=0xFF;
	LCDWriteStringXY(0,0,"MATLAB GUI");
	LCDWriteStringXY(0,1,"With PROTEUS");
	_delay_ms(1000);
	LCDClear();
	while(1)
	{
	data= USARTReadChar();
	if(data=='a')
	   {
	    
	 	PORTB=0b00000001;
		LCDWriteStringXY(0,0,"LED BLUE ON");
		//_delay_ms(10);
    	}
	else if(data=='b')
	   {
	 	PORTB=0b00000010;
		LCDWriteStringXY(0,0,"LED GREEN ON");
		//_delay_ms(10);
    	}
	else 
	   {
	    PORTB=0b00000000;
		LCDWriteStringXY(0,0,"noting received");
    	_delay_ms(10);
    	}
	}
	}
