#define CLK 2
#define READ_WRITE 3

volatile int clk_speed = 1;

const char ADDR[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52};
const char DATA[] = {39, 41, 43, 45, 47, 49, 51, 53};

void setup() {
 
    pinMode(7, OUTPUT);

  for(int n = 0; n < 16; n++)
  {
    pinMode(ADDR[n], INPUT);
  }

  for(int n = 0; n < 8; n++)
  {
    pinMode(DATA[n], INPUT);
  }

  pinMode(CLK, INPUT);
  pinMode(READ_WRITE, INPUT);

  attachInterrupt(digitalPinToInterrupt(CLK), onClock, RISING);  

  Serial.begin(57600);
}

void onClock()
{
  /*if(state)
    time = millis(); //salvo il tempo di quando viene cliccato
    state = 1;
  else 
    time2 = millis();
    state = 0;

  if(time2 - time > 150)
  {*/

    char output[15];

    unsigned int address = 0;
    for(int n = 0; n < 16; n++)
    {
      int bit = digitalRead(ADDR[n]) ? 1 : 0;
      Serial.print(bit);
      address = (address << 1) + bit;
    }

    Serial.print("   ");

    unsigned int data = 0;
    for(int n = 0; n < 8; n++)
    {
      int bit = digitalRead(DATA[n]) ? 1 : 0;
      Serial.print(bit);
      data = (data << 1) + bit;

    }
    
    sprintf(output, "    %04x %c %02x", address, digitalRead(READ_WRITE) ? 'R' : 'W', data);
    Serial.println(output);
  //}
}

void loop() {

digitalWrite(7, HIGH);
delay(clk_speed);
digitalWrite(7, LOW);
delay(clk_speed);

}
