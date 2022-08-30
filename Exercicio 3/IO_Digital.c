/*****************************************************************************************************************************************************/

// Define as entradas e sa�das para o LED (sa�da - OUT1) e Bot�o (B1 - entrada)
#define B1 PORTB.RB0
#define OUT1 PORTD.RD0
void main()
{
    TRISB=0x01; // PORTB.RB0 definido como entrada de dados digitais
    TRISD=0X00; // PORTD.RD0 definido como saida de dados digitais
    PORTD=0X00;
    ADCON0=0X0E;

    while(1)
    {
        if(B1==1)
          {
              OUT1=~OUT1; // Altera o Estado atual do bit PORTD.RD0 ou OUT1
              Delay_ms(1000); // Espera 1 segundo
              OUT1=~OUT1; // Altera o Estado atual do bit PORTD.RD0 ou OUT1
              Delay_ms(1000); // Espera 1 segundo
          }// fim if
        else
          {
              OUT1=1; // Altera o Estado atual do bit PORTD.RD0 para 0
          }// fim else
    }// fim while
}// fim main