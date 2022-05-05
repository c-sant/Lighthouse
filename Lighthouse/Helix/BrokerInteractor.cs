using Lighthouse.Models;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.Helix
{
    public class BrokerInteractor : Interactor
    {
        public BrokerInteractor(string ip, int port) :
            base(ip, port)
        { }

        protected override string _frameworkName { get => "Context Broker"; }
        protected override string _pingEndpoint { get => "version"; }

        public void RegisterSensor(int sqlSensorId)
        {
            JObject registerPayload = GetRegisterSensorPayload(sqlSensorId);

            RestResponse<string> response = MakeHelixRequest(Method.Post, "v2/registrations", payload: registerPayload);

            if (response.StatusCode != System.Net.HttpStatusCode.Created)
                throw new Exception("Falha registrando sensor! Não foi possível se conectar com o Broker!");
        }

        public void DeleteSensor(int sqlSensorId)
        {
            string brokerSensorId = Helix.Utils.BuildBrokerId(sqlSensorId);
            
            try
            {
                MakeHelixRequest(Method.Delete, $"v2/entities/{brokerSensorId}");
            }
            catch
            {
                Console.WriteLine($"Ocorreu algum erro ao deletar 'device' do Broker. SqlServerId = {sqlSensorId}, BrokerSensorId = {brokerSensorId}");
            }
        }

        public void UpdateSensor(SensorViewModel sensor)
        {
            JObject newSensor = BuildUpdatePayload(sensor);

            RestResponse<string> response = MakeHelixRequest(Method.Post, $"v2/entities/{sensor.BrokerId}/attrs", payload: newSensor);

            if (response.StatusCode != System.Net.HttpStatusCode.NoContent)
                throw new Exception("Falha ao atualizar sensor. Ele não foi identificado no Broker!");
        }

        private JObject BuildUpdatePayload(SensorViewModel sensor)
        {
            string point = Helix.Utils.BuildLocationString(new Helpers.Point(sensor.Latitude, sensor.Longitude));

            return new JObject()
            {
                { "location",
                    new JObject()
                    {
                        { "type", "geo:point" },
                        { "value", point }
                    } 
                }
            };
        }

        private JObject GetRegisterSensorPayload(int sensorId)
        {
            JObject defaultSensorConfig = JObject.Parse(@"{
              'description': 'Medição do sensor',
              'dataProvided': {
                'entities': [
                  {
                    'id': '" + Helix.Utils.BuildBrokerId(sensorId) + @"', 'type': 'Motion'
                  }
                ],
                'attrs': ['temperature', 'humidity', 'airPressure', 'isRaining']
              },
              'provider': {
                'http': {'url': 'http://" + GlobalConfig.HelixIp + @":4041'},
                'legacyForwarding': true
              }
            }");

            return defaultSensorConfig;
        }

    }
}
