#include "DHT.h"

#define DHTPIN 4
#define DHTTYPE DHT22

int sensorPin = 15;    // input for LDR and rain sensor
int sensorValue2 = 0;  // variable to store the value coming from sensor Rain sensor
DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(115200);

  dht.begin();
}


void loop() {

  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();

  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t)) {
    Serial.println(F("Failed to read from DHT sensor!"));
  }
  else {
    // Compute heat index in Celsius (isFahreheit = false)
    float hic = dht.computeHeatIndex(t, h, false);
  
    Serial.print(F("Humidity: "));
    Serial.print(h);
    Serial.print(F("%  Temperature: "));
    Serial.print(t);
    Serial.print(F("°C "));
    Serial.print(hic);
    Serial.print(F("°C "));
  }

  // Rain Sensor
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
