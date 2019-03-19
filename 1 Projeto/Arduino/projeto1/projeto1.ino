/* Autor: Guilherme Rodrigues - 18/03/2019
   Projeto 1
   Este programa imprime na serial o tempo de execução
   do arduino desde o inicio da comunicação serial.
*/
void setup() {
  //Iniciar serial com velocidade de 9600 baud
  Serial.begin(9600);
}

void loop() {
  //Imprimi o tempo de execução em millisegundos
  Serial.println( millis());
  //Espera 5 segundos para continuar o loop
  delay(5000);
}
