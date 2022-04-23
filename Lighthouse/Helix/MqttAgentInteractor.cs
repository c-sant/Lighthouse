using System;

using Lighthouse.Helpers;
using Newtonsoft.Json.Linq;
using RestSharp;

namespace Lighthouse.Helix
{
    public class MqttAgentInteractor : Interactor
    {
        public MqttAgentInteractor(string ip, int port) : 
            base(ip, port) { }

        protected override string _frameworkName { get => "Mqtt Agent"; }
        protected override string _pingEndpoint { get => "iot/about"; }

        public void RegisterSensor(int sensorId, Point location)
        {
            JObject sensor  = GetCreateSensorPayload(sensorId, location);

            RestResponse<string> response = MakeHelixRequest(Method.Post, "iot/devices", payload: sensor);

            if (response.StatusCode != System.Net.HttpStatusCode.Created)
                throw new Exception("Falha criando sensor! Não foi possível se conectar com o Broker!");
        }

        public void DeleteSensor(int sensorId)
        {
            string deviceId = Helix.Utils.BuildMqttId(sensorId);
            
            try
            {
                MakeHelixRequest(Method.Delete, $"iot/devices/{deviceId}");
            }
            catch
            {
                Console.WriteLine($"Ocorreu algum erro ao deletar 'device' do MqttAgent. SqlServerId = {sensorId}, DeviceId = {deviceId}");
            }
        }

        private JObject GetCreateSensorPayload(int sensorId, Point location)
        {
            JObject defaultSensorConfig = JObject.Parse(@"{
             'devices': [
               {
                 'entity_type': 'Motion',
                 'protocol':    'PDI-IoTA-UltraLight',
                 'transport':   'MQTT',
                 'timezone':    'America/Sao_Paulo',
                 'attributes': [
                   { 'object_id': 't', 'name': 'temperature', 'type': 'Float' },
                   { 'object_id': 'h', 'name': 'humidity', 'type': 'Float' },
                   { 'object_id': 'a', 'name': 'airPressure', 'type': 'Float' },
                   { 'object_id': 'w', 'name': 'waterLevel', 'type': 'Float' }
                 ],
                 'static_attributes': [
                        { 'object_id':'location', 'type': 'geo:point', 'name':'location' }
                    ]
               }
             ]
            }");

            JObject device = defaultSensorConfig["devices"][0] as JObject;
            device.Add("device_id", Helix.Utils.BuildMqttId(sensorId));
            device.Add("entity_name", Helix.Utils.BuildBrokerId(sensorId));

            JObject locationRef = device["static_attributes"][0] as JObject;
            locationRef.Add("value", Helix.Utils.BuildLocationString(location));

            return defaultSensorConfig;
        }
    }
}
