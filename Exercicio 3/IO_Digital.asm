
_main:

;IO_Digital.c,6 :: 		void main()
;IO_Digital.c,8 :: 		TRISB=0x01; // PORTB.RB0 definido como entrada de dados digitais
	MOVLW       1
	MOVWF       TRISB+0 
;IO_Digital.c,9 :: 		TRISD=0X00; // PORTD.RD0 definido como saida de dados digitais
	CLRF        TRISD+0 
;IO_Digital.c,10 :: 		PORTD=0X00;
	CLRF        PORTD+0 
;IO_Digital.c,11 :: 		ADCON0=0X0E;
	MOVLW       14
	MOVWF       ADCON0+0 
;IO_Digital.c,13 :: 		while(1)
L_main0:
;IO_Digital.c,15 :: 		if(B1==1)
	BTFSS       PORTB+0, 0 
	GOTO        L_main2
;IO_Digital.c,17 :: 		OUT1=~OUT1; // Altera o Estado atual do bit PORTD.RD0 ou OUT1
	BTG         PORTD+0, 0 
;IO_Digital.c,18 :: 		Delay_ms(1000); // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;IO_Digital.c,19 :: 		OUT1=~OUT1; // Altera o Estado atual do bit PORTD.RD0 ou OUT1
	BTG         PORTD+0, 0 
;IO_Digital.c,20 :: 		Delay_ms(1000); // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;IO_Digital.c,21 :: 		}// fim if
	GOTO        L_main5
L_main2:
;IO_Digital.c,24 :: 		OUT1=1; // Altera o Estado atual do bit PORTD.RD0 para 0
	BSF         PORTD+0, 0 
;IO_Digital.c,25 :: 		}// fim else
L_main5:
;IO_Digital.c,26 :: 		}// fim while
	GOTO        L_main0
;IO_Digital.c,27 :: 		}// fim main
L_end_main:
	GOTO        $+0
; end of _main
