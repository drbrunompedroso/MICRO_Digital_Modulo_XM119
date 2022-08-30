
_config_io:

;Aciona_LED.c,7 :: 		void config_io()
;Aciona_LED.c,9 :: 		TRISB=0x01; // PORTB.RB0 definido como entrada de dados digitais
	MOVLW       1
	MOVWF       TRISB+0 
;Aciona_LED.c,10 :: 		TRISD=0X00; // PORTD.RD0 definido como saida de dados digitais
	CLRF        TRISD+0 
;Aciona_LED.c,11 :: 		PORTD=0XFF; // Limpa o PORTD
	MOVLW       255
	MOVWF       PORTD+0 
;Aciona_LED.c,12 :: 		}
L_end_config_io:
	RETURN      0
; end of _config_io

_logica:

;Aciona_LED.c,13 :: 		void logica()
;Aciona_LED.c,15 :: 		while(1)
L_logica0:
;Aciona_LED.c,17 :: 		if(B1==1)
	BTFSS       PORTB+0, 0 
	GOTO        L_logica2
;Aciona_LED.c,19 :: 		OUT1 = 0; //ACIONA LED
	BCF         PORTD+0, 0 
;Aciona_LED.c,20 :: 		}// fim if
	GOTO        L_logica3
L_logica2:
;Aciona_LED.c,23 :: 		OUT1 = 1; // DESLIGA LED
	BSF         PORTD+0, 0 
;Aciona_LED.c,24 :: 		}// fim else
L_logica3:
;Aciona_LED.c,25 :: 		}// fim while
	GOTO        L_logica0
;Aciona_LED.c,26 :: 		}
L_end_logica:
	RETURN      0
; end of _logica

_main:

;Aciona_LED.c,27 :: 		void main()
;Aciona_LED.c,29 :: 		config_io();
	CALL        _config_io+0, 0
;Aciona_LED.c,30 :: 		logica();
	CALL        _logica+0, 0
;Aciona_LED.c,31 :: 		}// fim main
L_end_main:
	GOTO        $+0
; end of _main
