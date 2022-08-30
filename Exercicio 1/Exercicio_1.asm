
_config_io:

;Exercicio_1.c,6 :: 		void config_io()
;Exercicio_1.c,8 :: 		TRISB=0X03;
	MOVLW       3
	MOVWF       TRISB+0 
;Exercicio_1.c,9 :: 		TRISD=0X00;
	CLRF        TRISD+0 
;Exercicio_1.c,10 :: 		PORTD=0XFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Exercicio_1.c,11 :: 		ADCON1=0X0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Exercicio_1.c,12 :: 		}
L_end_config_io:
	RETURN      0
; end of _config_io

_main:

;Exercicio_1.c,14 :: 		void main()
;Exercicio_1.c,16 :: 		config_io();
	CALL        _config_io+0, 0
;Exercicio_1.c,17 :: 		while(1)
L_main0:
;Exercicio_1.c,19 :: 		if (S1==0 && S2==0)
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	BTFSC       PORTB+0, 1 
	GOTO        L_main4
L__main20:
;Exercicio_1.c,21 :: 		D1=1;
	BSF         PORTD+0, 0 
;Exercicio_1.c,22 :: 		D2=1;
	BSF         PORTD+0, 1 
;Exercicio_1.c,23 :: 		}
	GOTO        L_main5
L_main4:
;Exercicio_1.c,24 :: 		else if (S1==0 && S2==1)
	BTFSC       PORTB+0, 0 
	GOTO        L_main8
	BTFSS       PORTB+0, 1 
	GOTO        L_main8
L__main19:
;Exercicio_1.c,26 :: 		D1=0;
	BCF         PORTD+0, 0 
;Exercicio_1.c,27 :: 		D2=0;
	BCF         PORTD+0, 1 
;Exercicio_1.c,28 :: 		}
	GOTO        L_main9
L_main8:
;Exercicio_1.c,29 :: 		else if (S1==1 && S2==0)
	BTFSS       PORTB+0, 0 
	GOTO        L_main12
	BTFSC       PORTB+0, 1 
	GOTO        L_main12
L__main18:
;Exercicio_1.c,31 :: 		D1=1;
	BSF         PORTD+0, 0 
;Exercicio_1.c,32 :: 		D2=0;
	BCF         PORTD+0, 1 
;Exercicio_1.c,33 :: 		}
	GOTO        L_main13
L_main12:
;Exercicio_1.c,34 :: 		else if (S1==1 && S2==1)
	BTFSS       PORTB+0, 0 
	GOTO        L_main16
	BTFSS       PORTB+0, 1 
	GOTO        L_main16
L__main17:
;Exercicio_1.c,36 :: 		D1=0;
	BCF         PORTD+0, 0 
;Exercicio_1.c,37 :: 		D2=1;
	BSF         PORTD+0, 1 
;Exercicio_1.c,38 :: 		}
L_main16:
L_main13:
L_main9:
L_main5:
;Exercicio_1.c,39 :: 		}
	GOTO        L_main0
;Exercicio_1.c,40 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
