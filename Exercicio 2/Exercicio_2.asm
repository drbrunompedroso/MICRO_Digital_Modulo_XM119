
_config_io:

;Exercicio_2.c,7 :: 		void config_io()
;Exercicio_2.c,9 :: 		TRISB=0X03;
	MOVLW       3
	MOVWF       TRISB+0 
;Exercicio_2.c,10 :: 		TRISD=0X00;
	CLRF        TRISD+0 
;Exercicio_2.c,11 :: 		}
L_end_config_io:
	RETURN      0
; end of _config_io

_main:

;Exercicio_2.c,13 :: 		void main()
;Exercicio_2.c,15 :: 		config_io();
	CALL        _config_io+0, 0
;Exercicio_2.c,16 :: 		PORTD=0XFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Exercicio_2.c,17 :: 		while(1)
L_main0:
;Exercicio_2.c,19 :: 		if (S1==0 && S2==0)
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	BTFSC       PORTB+0, 1 
	GOTO        L_main4
L__main20:
;Exercicio_2.c,21 :: 		D1=0;
	BCF         PORTD+0, 0 
;Exercicio_2.c,22 :: 		D2=0;
	BCF         PORTD+0, 1 
;Exercicio_2.c,23 :: 		D3=0;
	BCF         PORTD+0, 2 
;Exercicio_2.c,24 :: 		}
	GOTO        L_main5
L_main4:
;Exercicio_2.c,25 :: 		else if (S1==0 && S2==1)
	BTFSC       PORTB+0, 0 
	GOTO        L_main8
	BTFSS       PORTB+0, 1 
	GOTO        L_main8
L__main19:
;Exercicio_2.c,27 :: 		D1=1;
	BSF         PORTD+0, 0 
;Exercicio_2.c,28 :: 		D2=0;
	BCF         PORTD+0, 1 
;Exercicio_2.c,29 :: 		D3=1;
	BSF         PORTD+0, 2 
;Exercicio_2.c,30 :: 		}
	GOTO        L_main9
L_main8:
;Exercicio_2.c,31 :: 		else if (S1==1 && S2==0)
	BTFSS       PORTB+0, 0 
	GOTO        L_main12
	BTFSC       PORTB+0, 1 
	GOTO        L_main12
L__main18:
;Exercicio_2.c,33 :: 		D1=0;
	BCF         PORTD+0, 0 
;Exercicio_2.c,34 :: 		D2=1;
	BSF         PORTD+0, 1 
;Exercicio_2.c,35 :: 		D3=0;
	BCF         PORTD+0, 2 
;Exercicio_2.c,36 :: 		}
	GOTO        L_main13
L_main12:
;Exercicio_2.c,37 :: 		else if (S1==1 && S2==1)
	BTFSS       PORTB+0, 0 
	GOTO        L_main16
	BTFSS       PORTB+0, 1 
	GOTO        L_main16
L__main17:
;Exercicio_2.c,39 :: 		D1=1;
	BSF         PORTD+0, 0 
;Exercicio_2.c,40 :: 		D2=1;
	BSF         PORTD+0, 1 
;Exercicio_2.c,41 :: 		D3=1;
	BSF         PORTD+0, 2 
;Exercicio_2.c,42 :: 		}
L_main16:
L_main13:
L_main9:
L_main5:
;Exercicio_2.c,43 :: 		}
	GOTO        L_main0
;Exercicio_2.c,44 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
