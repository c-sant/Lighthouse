int sensorPin = A0;    // input for LDR and rain sensor
int sensorValue2 = 0;  // variable to store the value coming from sensor Rain sensor

void setup() {
  Serial.begin(115200);
}


void loop() {
  delay(500);
  sensorValue2 = analogRead(sensorPin);

  Serial.print(sensorValue2);
  Serial.print(" -- ");  
  
  if (sensorValue2 >= 20)
  {
    Serial.print("rain is detected");
  }
  else
    
  {
    Serial.print("rain not detected");
  }

  Serial.print(" -- ");
  Serial.print(sensorValue2);
  
  Serial.println();
  delay(100);
}
