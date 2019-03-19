/* Autor: Guilherme Rodrigues - 18/03/2019
   Projeto 3
   Este programa recebe da serial um valor
   0 ou 1, e acende ou apaga o led 13.
*/
char byteRecebido = 0; // variável para o dado recebido
int pinLed = 13; //Pino Led

void setup() {
  Serial.begin(9600); // abre a porta serial, configura a taxa de transferência para 9600 bps
  pinMode(pinLed, OUTPUT);
}

void loop() {
  // apenas responde quando dados são recebidos:
  if (Serial.available() > 0) {
    // lê do buffer o dado recebido:
    byteRecebido = Serial.read();
    
    if (byteRecebido != '0' && byteRecebido != '1') {
      Serial.println("O valor digitado e diferente de 0 e 1!");
      
    } else if (byteRecebido == '1') {
      // responde com o estado do led:
      digitalWrite(pinLed, HIGH);
      Serial.println("O LED esta acesso!");
      
    }
    else {
      digitalWrite(pinLed, LOW);
      Serial.println("O LED esta apagado!");
      
    }
  }
}
