#include <WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>
#include <esp_sleep.h>
#include "DHT.h"

#define DHTPIN 4
#define DHTTYPE DHT22

#define uS_TO_S_FACTOR 1000000  /* Fator para conversão de microsegundos para segundos */
#define TIME_TO_SLEEP  300        /* 300 segundos - 5 minutos */

int rainPin = 33;    // input for LDR and rain sensor
DHT dht(DHTPIN, DHTTYPE);

// Replace the next variables with your SSID/Password combination
const char* ssid = "turtera";
const char* password = "27272727";

const char* mqtt_server = "3.15.212.42";
//const char* topic = "/iot/Motion1/attrs";

WiFiClient espClient;
PubSubClient client(espClient);

float temperature = 0;
float humidity = 0;

void setup() {
  Serial.begin(115200);

  setup_wifi();

  client.setServer(mqtt_server, 1883);
  client.setKeepAlive(60);
  reconnect();

  dht.begin();
}

void setup_wifi() {
  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  int status = WL_IDLE_STATUS;
  
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to WEP network, SSID: ");
    Serial.println(ssid);
    
    WiFi.disconnect();
    status = WiFi.begin(ssid, password);
    // wait 10 seconds for connection:
    delay(10000);
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void reconnect() {
  while (!client.connected()) {
    String client_id = "esp32-client-";
    client_id += String(WiFi.macAddress());
    Serial.printf("The client %s connects to the public mqtt broker\n", client_id.c_str());
    if (client.connect(client_id.c_str())) {
        Serial.println("Public emqx mqtt broker connected");
    } else {
        Serial.print("failed with state ");
        Serial.print(client.state());
        delay(2000);
    }
    client.loop();
}
}

void join_hibernation_mode() {
  esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_SLOW_MEM, ESP_PD_OPTION_OFF);
  esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_FAST_MEM, ESP_PD_OPTION_OFF);
  esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_PERIPH, ESP_PD_OPTION_OFF);
  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
  esp_deep_sleep_start();
}

String get_rainPower(int counts) {
  int sum = 0;
  for (int i = 0; i < counts; i++) {
    sum += analogRead(rainPin);
    delay(100);
  }
  
  return "r|" + String(sum / counts);
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();

  float h = dht.readHumidity();
  float t = dht.readTemperature();

  delay(10);
  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t)) {
    Serial.println(F("Failed to read from DHT sensor!"));
  }
  else {
    String temperature = "t|" + String(t);
    String humidity = "h|" + String(h);
    client.publish("/iot/Motion1/attrs", temperature.c_str());
    //reconnect();
    delay(100);
    client.publish("/iot/Motion1/attrs", humidity.c_str());
    //reconnect();
    Serial.print(F("Humidity: "));
    Serial.print(h);
    Serial.print(F("%  Temperature: "));
    Serial.print(t);
    Serial.print(F("°C "));
  }

  // Rain Sensor
  String rainPower = get_rainPower(10);
  //reconnect();
  client.publish("/iot/Motion1/attrs", rainPower.c_str());
  Serial.print(F(" RainPower = "));
  Serial.println(rainPower);

  if (!client.connected()) {
    reconnect();
  }
  delay(5000);
  join_hibernation_mode();
}
