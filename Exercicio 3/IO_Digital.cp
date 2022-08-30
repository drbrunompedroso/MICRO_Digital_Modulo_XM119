#line 1 "C:/Users/Bruno Medina Pedroso/Documents/Projetos/Programação Aplicada 2/IO Digital_EXSTO_XM119/Exercicio 3/IO_Digital.c"





void main()
{
 TRISB=0x01;
 TRISD=0X00;
 PORTD=0X00;
 ADCON0=0X0E;

 while(1)
 {
 if( PORTB.RB0 ==1)
 {
  PORTD.RD0 =~ PORTD.RD0 ;
 Delay_ms(1000);
  PORTD.RD0 =~ PORTD.RD0 ;
 Delay_ms(1000);
 }
 else
 {
  PORTD.RD0 =1;
 }
 }
}
