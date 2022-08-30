#line 1 "C:/Users/Bruno Medina Pedroso/Documents/Projetos/Programação Aplicada 2/IO Digital_EXSTO_XM119/Exemplo/Aciona_LED.c"






void config_io()
{
 TRISB=0x01;
 TRISD=0X00;
 PORTD=0XFF;
}
void logica()
{
 while(1)
 {
 if( PORTB.RB0 ==1)
 {
  PORTD.RD0  = 0;
 }
 else
 {
  PORTD.RD0  = 1;
 }
 }
}
void main()
{
 config_io();
 logica();
}
