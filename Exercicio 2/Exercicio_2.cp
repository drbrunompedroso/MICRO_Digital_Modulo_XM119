#line 1 "C:/Users/Bruno Medina Pedroso/Documents/Projetos/Programação Aplicada 2/IO Digital_EXSTO_XM119/Exercicio 2/Exercicio_2.c"






void config_io()
{
 TRISB=0X03;
 TRISD=0X00;
}

void main()
{
 config_io();
 PORTD=0XFF;
 while(1)
 {
 if ( PORTB.RB0 ==0 &&  PORTB.RB1 ==0)
 {
  PORTD.RD0 =0;
  PORTD.RD1 =0;
  PORTD.RD2 =0;
 }
 else if ( PORTB.RB0 ==0 &&  PORTB.RB1 ==1)
 {
  PORTD.RD0 =1;
  PORTD.RD1 =0;
  PORTD.RD2 =1;
 }
 else if ( PORTB.RB0 ==1 &&  PORTB.RB1 ==0)
 {
  PORTD.RD0 =0;
  PORTD.RD1 =1;
  PORTD.RD2 =0;
 }
 else if ( PORTB.RB0 ==1 &&  PORTB.RB1 ==1)
 {
  PORTD.RD0 =1;
  PORTD.RD1 =1;
  PORTD.RD2 =1;
 }
 }
}
