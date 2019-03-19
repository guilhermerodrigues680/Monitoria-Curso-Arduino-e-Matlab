/* Autor: Guilherme Rodrigues - 18/03/2019
   Projeto 2
   Este programa imprime na serial o estado de led 13
   ou seja se ele esta acesso ou não.
*/

int pinLed = 13;

void setup() {
  //Iniciar serial com velocidade de 9600 baud
  Serial.begin(9600);
  pinMode(pinLed,OUTPUT);
}

void loop() {
  bool estado = digitalRead(pinLed);
  Serial.println(estado);
  //Espera 5 segundos
  delay(3000);
  //Inverte estado do LED
  digitalWrite(pinLed, !estado);
}
