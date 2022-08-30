#define S1 PORTB.RB0
#define S2 PORTB.RB1
#define D1 PORTD.RD0
#define D2 PORTD.RD1

void config_io()
{
 TRISB=0X03;
 TRISD=0X00;
 PORTD=0XFF;
 ADCON1=0X0F;
}

void main()
{
     config_io();
     while(1)
     {
             if (S1==0 && S2==0)
             {
                D1=1;
                D2=1;
             }
             else if (S1==0 && S2==1)
             {
                D1=0;
                D2=0;
             }
             else if (S1==1 && S2==0)
             {
                D1=1;
                D2=0;
             }
             else if (S1==1 && S2==1)
             {
                D1=0;
                D2=1;
             }
     }
}