/*****************************************************************************************************************************************************/
//ACIONAMENTO DE LED
// Define as entradas e sa�das para o LED (sa�da - OUT1) e Bot�o (B1 - entrada)
#define B1 PORTB.RB0
#define OUT1 PORTD.RD0

void config_io()
{
    TRISB=0x01; // PORTB.RB0 definido como entrada de dados digitais
    TRISD=0X00; // PORTD.RD0 definido como saida de dados digitais
    PORTD=0XFF; // Limpa o PORTD
}
void logica()
{
     while(1)
    {
        if(B1==1)
          {
              OUT1 = 0; //ACIONA LED
          }// fim if
        else
          {
              OUT1 = 1; // DESLIGA LED
          }// fim else
    }// fim while
}
void main()
{
    config_io();
    logica();
}// fim main
