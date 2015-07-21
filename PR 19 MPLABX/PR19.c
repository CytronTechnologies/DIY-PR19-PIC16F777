//==========================================================================
//	Author				: 	Cytron Technologies
//	Project				: 	PR19- Flexibot-Using Transwheel
//	Project description	: 	Cytron Flexibot which can move in any 
//			           		direction without having to turn relative to the robot base
//==========================================================================

//	include
//==========================================================================
#include <pic.h> 						//include the PIC microchip header file

//	configuration
//==========================================================================
__CONFIG(0x3FA2);						//configuration word register 1 for the  microcontroller
__CONFIG(0x3FBC);						//configuration word register 2 for the  microcontroller

//	assign global variable
//==========================================================================v
unsigned char i=0,shift=0;				//assign global variable and set the initial alue to it
									
//	define
//========================================================================== 
#define	rs			RB7					//RS pin of the LCD display
#define e			RB6					//E pin of the LCD display
#define button1		RA0					//button (active low)
#define button2		RA1					//button (active low)
#define	lcd_light	RA2					//Background light of LCD display
#define	buzzer		RA3					//Buzzer control pin
#define	lcd_data	PORTD				//LCD 8-bit data PORT
#define lmspeed		CCPR1L				//left motor driver speed control pin(L298N enable pin)
#define lmotor1		RC0					//left motor driver input1
#define lmotor2		RC3					//left motor driver input2
#define	rmspeed		CCPR2L				//right motor driver speed control pin(L298N enable pin)
#define rmotor1		RC4					//right motor driver input1
#define rmotor2		RC5					//right motor driver input2
#define	bmspeed		CCPR3L				//back motor driver speed control pin(L298N enable pin)
#define bmotor1		RB3					//back motor driver input1
#define bmotor2		RB4					//back motor driver input2
#define	exspeed		RB2					//extra motor driver speed control pin(L298N enable pin)
#define emotor1		RB1					//extra motor driver input1
#define emotor2		RB0					//extra motor driver input2

//	function prototype					(every function must have a function prototype)
//==========================================================================
void alphamode(void);
void betamode(void);
void m_stop(void);
void lm_run(unsigned char dir);
void rm_run(unsigned char dir);
void bm_run(unsigned char dir);
void deg_0(void);
void deg_30(void);
void deg_60(void);
void deg_90(void);
void deg_150(void);
void deg_180(void);
void deg_210(void);
void deg_240(void);
void deg_270(void);
void deg_300(void);
void deg_330(void);
void clockwise(void);
void anticlockwise(void);
void delay(unsigned long data);		
void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);
void shift_display(void);
void mode_display(const char *x,const char *y);


//	main function						(main fucntion of the program)
//==========================================================================
void main(void)
{
//setup ADC
ADCON1 = 0b00001111;					//set ADx pin digital I/O

//set I/O input output
TRISA = 0b00000011;						//configure PORTA I/O direction
TRISB = 0b00000000;						//configure PORTB I/O direction
TRISC = 0b00000000;						//configure PORTC I/O direction
TRISD = 0b00000000;						//configure PORTD I/O direction
PORTB = 0x00;							//Clear port B all output pin
PORTC = 0x00;							//Clear port C all output pin	
PORTD = 0x00;							//Clear port D all output pin
	
//configure lcd
send_config(0b00000001);				//clear display at lcd
send_config(0b00000010);				//lcd return to home 
send_config(0b00000110);				//entry mode-cursor increase 1
send_config(0b00001100);				//display on, cursor off and cursor blink off
send_config(0b00111000);				//function set
lcd_light=1;							//switch off background light

//Setup up PWM operation
PR2=255;								//Set PWM period
CCP1CON = 0b00001100;					//Configure CCP1CON to on the PWM1 operation
CCP2CON = 0b00001100;					//Configure CCP2CON to on the PWM2 operation
CCP3CON = 0b00001100;					//Configure CCP3CON to on the PWM3 operation
T2CON   = 0b00000100;					//On timer 2 for PWM & set prescale 1
lmspeed = 0;							//Clear left motor speed
rmspeed = 0;							//Clear right motor speed
bmspeed = 0;							//Clear back motor speed

//program start
	while(1)							//Infinity Loop
	{
		if(button1 == 0)				//select mode
		{					
			i+=1;						//local variable i plus one
			if(i==3)i=0;				//when local variable i reach three,set it back to zero
			while(button1 == 0)			//loop to filter the switch
			{
				buzzer=1;
				delay(10000);
			}
		}
		if(button2 == 0)				//execute to the selected mode
		{
    		while(button2 == 0)			//loop to filter the switch
    		{
    			buzzer=1;
    			delay(10000);
    		}
    		switch(i)
    			{
    				case 1:alphamode();			
    				case 2:betamode();
    				break;						
    			}
		}		
		buzzer=0;						//clear buzzer
		shift_display();				//display current shifting mode
	}
}

//Flexibot action mode
//==========================================================================
//Alpha mode
void alphamode(void)						//function of alpha mode
{
	while(i==1)								//continue looping if mode variable is 1
	{
		deg_270();							//run FLexibot 270 degree
		delay(200000);
		deg_0();							//run FLexibot 0 degree
		delay(200000);
		deg_90();							//run FLexibot 90 degree
		delay(400000);
		deg_180();							//run FLexibot 180 degree
		delay(200000);
		deg_270();							//run FLexibot 270 degree
		delay(200000);
		clockwise();						//run FLexibot clockwise
		delay(100000);
		m_stop();							//stop FLexibot
		delay(500000);
	}
}

//Beta mode
void betamode(void)							//function of alpha mode
{
	while(i==2)								//continue looping if mode variable is 2
	{
		deg_330();							//run FLexibot 330 degree
		delay(200000);
		deg_0();							//run FLexibot 0 degree
		delay(200000);
		deg_30();							//run FLexibot 30 degree
		delay(200000);
		deg_150();							//run FLexibot 150 degree
		delay(200000);
		deg_180();							//run FLexibot 180 degree
		delay(200000);
		deg_210();							//run FLexibot 210 degree
		delay(200000);
		m_stop();							//stop FLexibot
		delay(500000);
	}	
}

// Motor Control function
//==========================================================================
void m_stop(void)											//Function to stop the motor
{
	lmotor1=0;
	lmotor2=0;
	rmotor1=0;
	rmotor2=0;
	bmotor1=0;
	bmotor2=0;		
    mode_display("Flexibot","Stop");						//display the current situation
}

void lm_run(unsigned char dir)								//Function to run the left motor
{
	lmotor1=dir;											//assign variable "dir" to left motor pin 1
	lmotor2=!dir;											//assign the oppesite value of "dir" variable to left motor pin 2
} 

void rm_run(unsigned char dir)								//Function to run the right motor
{
	rmotor1=dir;											//assign variable "dir" to right motor pin 1
	rmotor2=!dir;											//assign the oppesite value of "dir" variable to right motor pin 2
} 

void bm_run(unsigned char dir)								//Function to run the back motor
{
	bmotor1=!dir;											//assign variable "dir" to back motor pin 1
	bmotor2=dir;											//assign the oppesite value of "dir" variable to back motor pin 2	
} 


void deg_0(void)											//Function to run Flexibot 0 degree
{
	lmspeed=rmspeed=255;									//assign speed to respective motor pwm pin
	bmspeed=0;
	lm_run(1);												//assign the direction to respective motor
	rm_run(0);
	mode_display("0","Degree");					    		//display the current situation
}

void deg_30(void)											//Function to run Flexibot 30 degree
{
	lmspeed=255;											//assign speed to respective motor pwm pin
	rmspeed=0;
	bmspeed=255;
	lm_run(1);												//assign the direction to respective motor
	bm_run(0);
	mode_display("30","Degree");							//display the current situation
}

void deg_60(void)											//Function to run Flexibot 60 degree
{
	lmspeed=200;
	rmspeed=180;
	bmspeed=230;
	lm_run(1);
	rm_run(1);
	bm_run(0);
	mode_display("60","Degree");
}

void deg_90(void)											//Function to run Flexibot 90 degree
{
	lmspeed=190;
	rmspeed=190;
	bmspeed=255;
	lm_run(1);
	rm_run(1);
	bm_run(0);
	mode_display("90","Degree");
}	

void deg_120(void)											//Function to run Flexibot 120 degree
{
	lmspeed=160;
	rmspeed=180;
	bmspeed=200;			
	lm_run(1);
	rm_run(1);
	bm_run(0);
	mode_display("120","Degree");
}

void deg_150(void)											//Function to run Flexibot 150 degree
{
	lmspeed=0;
	rmspeed=255;
	bmspeed=255;
	rm_run(1);
	bm_run(0);
	mode_display("150","Degree");
}

void deg_180(void)											//Function to run Flexibot 180 degree
{
	lmspeed=rmspeed=255;
	bmspeed=0;
	lm_run(0);
	rm_run(1);
	mode_display("180","Degree");	
}

void deg_210(void)											//Function to run Flexibot 210 degree
{
	lmspeed=255;
	rmspeed=0;
	bmspeed=255;
	lm_run(0);
	bm_run(1);
	mode_display("210","Degree");
}

void deg_240(void)											//Function to run Flexibot 240 degree
{
	lmspeed=180;
	rmspeed=200;
	bmspeed=230;
	lm_run(0);
	rm_run(0);
	bm_run(1);
	mode_display("240","Degree");
}

void deg_270(void)											//Function to run Flexibot 270 degree
{
	lmspeed=190;
	rmspeed=190;
	bmspeed=255;
	lm_run(0);
	rm_run(0);
	bm_run(1);
	mode_display("270","Degree");
}

void deg_300(void)											//Function to run Flexibot 300 degree
{
	lmspeed=180;
	rmspeed=200;
	bmspeed=230;
	lm_run(0);
	rm_run(0);
	bm_run(1);
	mode_display("300","Degree");
}

void deg_330(void)											//Function to run Flexibot 330 degree
{			
	lmspeed=0;
	rmspeed=255;
	bmspeed=255;
	rm_run(0);
	bm_run(1);
	mode_display("330","Degree");
}

void clockwise(void)										//Function to run Flexibot clockwise
{
	lmspeed=rmspeed=bmspeed=255;
	lm_run(1);
	rm_run(1);
	bm_run(1);
	mode_display("Clockwise","");
}

void anticlockwise(void)									//Function to run Flexibot anticlockwise
{
	lmspeed=rmspeed=bmspeed=255;
	lm_run(0);
	rm_run(0);
	bm_run(0);
	mode_display("Anticlockwise","");
}

//	delay functions
//==========================================================================
void delay(unsigned long data)								//delay function, the delay time
{															//depend on the given value
	for( ;data>0;data-=1);
}

//	lcd functions
//==========================================================================
void send_config(unsigned char data)						//send lcd configuration 
{
	rs=0;													//set lcd to configuration mode
	lcd_data=data;											//lcd data port = data
	e=1;													//pulse e to confirm the data
	delay(50);
	e=0;
	delay(50);
}

void send_char(unsigned char data)							//send lcd character
{
	rs=1;													//set lcd to display mode
	lcd_data=data;											//lcd data port = data
	e=1;													//pulse e to confirm the data
	delay(10);
	e=0;
	delay(10);
}


void lcd_goto(unsigned char data)								//set the location of the lcd cursor
{																//if the given value is (0-15) the 
 	if(data<16)													//cursor will be at the upper line
	{															//if the given value is (20-35) the 
	 	send_config(0x80+data);									//cursor will be at the lower line
	}															//location of the lcd cursor(2X16):
	else														// -----------------------------------------------------
	{															// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;											// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);									// -----------------------------------------------------	
	}
}

void lcd_clr(void)												//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void send_string(const char *s)									//send a string to display in the lcd
{          
  	while (s && *s)send_char (*s++);
}

// Shift display function
//==========================================================================
void shift_display(void)										//function to display the shifting current mode
{
	switch(i)
	{       
		case 0:
			shift=0;											//character back to original position
			lcd_clr();											//clear lcd
			lcd_goto(1);										//set the lcd cursor to location 1	
			send_string("Cytron");								//display CYTRON company name
			lcd_goto(20);										//set the lcd cursor to location 20			
			send_string("Flexibot");							//display robot's name	
			for( ;shift<8;shift+=1)								//loop to shift character
			{
				if(button1 == 0)return;							//condition to exit loop when button is pushed			
				send_config(0b00011100);						//lcd configuration to shift the character to right
				delay(50000);									//delay for display the shift welcome note
			}	
			for( ;shift>0;shift-=1)								//loop to shift character
			{
				if(button1 == 0)return;							//condition to exit loop when button is pushed			
				send_config(0b00011000);						//lcd configuration to shift the character to left
				delay(50000);									//delay for display the shift welcome note
			}	
			break;
		case 1:
			shift=0;											//character back to original position
			lcd_clr();											//clear lcd
			lcd_goto(0);										//set the lcd cursor to location 0	
			send_string("Cytron Flexibot");						//display robot's name
			lcd_goto(22);										//set the lcd cursor to location 21			
			send_string("Alpha Mode?");							//display current mode	
			if(button1 == 0 || button2 ==0)return;				//condition to exit loop when button is pushed			
			send_config(0b00011100);							//lcd configuration to shift the character to right
			delay(80000);										//delay for display the shift current mode	
			if(button1 == 0 || button2 ==0)return;				//condition to exit loop when button is pushed			
			send_config(0b00011000);							//lcd configuration to shift the character to left
			delay(80000);										//delay for display the shift current mode
			break;
		case 2:
			shift=0;											//character back to original position
			lcd_clr();											//clear lcd
			lcd_goto(0);										//set the lcd cursor to location 0	
			send_string("Cytron Flexibot");						//display robot's name
			lcd_goto(22);										//set the lcd cursor to location 21			
			send_string("Beta Mode?");				    		//display current mode	
			if(button1 == 0 || button2 ==0)return;				//condition to exit loop when button is pushed			
			send_config(0b00011100);							//lcd configuration to shift the character to right
			delay(80000);										//delay for display the shift current mode	
			if(button1 == 0 || button2 ==0)return;				//condition to exit loop when button is pushed			
			send_config(0b00011000);							//lcd configuration to shift the character to left
			delay(80000);										//delay for display the shift current mode
			break;
	}
}

//	Mode display function
//==========================================================================
void mode_display(const char *x,const char *y)
{
    buzzer=0;		                       						//clear buzzor
	if(button1 == 0)return;										//condition to exit loop when button is pushed
	lcd_clr();													//clear lcd
	lcd_goto(0);												//set the lcd cursor to first line and first cursor 	
	send_string(x);												//display character in line 1
	lcd_goto(20);												//seet the lcd cursor to second line and first cursor 	
	send_string(y);												//display character in line 2
	delay(10000);                     							  //delay for character display
}		
